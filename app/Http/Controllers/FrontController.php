<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Casestudies;
use App\Models\sub_casestudies;
use App\Models\Department;
use App\Models\Front;
use Session;
use Illuminate\Support\Facades\Auth;
use App\Models\tests;
use App\Models\diagnosis;
use App\Models\medication;
use App\Models\Quiz_attempt;

class FrontController extends Controller
{

    function PostModeandDept(Request $req) {

            $req->validate([
                'mode'=>'required',
                'department'=>'required',
            ]);

            return redirect()->route('casestudies.get',['mode'=>$req->mode, 'department'=>$req->department]);
    }

    function getCasestudies($mode, $department) {

        $user = auth()->guard('doctor')->user();
       $casestudies = Casestudies::where('mode',$mode)->where('department',$department)->get();
       
    
        $quiz_attempt = Quiz_attempt::select('case_id','score')->Where('user_id',$user->id)->Where('score','!=',null)->get();
        
        
        return view('doctor.casestudies',['casestudies'=>$casestudies,'quiz_attempt'=>$quiz_attempt]);
    }

    function CaseStudyHistory($id){
        
        if (auth()->guard('doctor')->user() != null){
            
            $casestudies = Casestudies::where('id',$id)->first();

            $results = sub_casestudies::select('name','result','image')->where('case_id',$id)->where('type',3)->get();

            $user = auth()->guard('doctor')->user();
            $user_id = $user->id;
            $case_id = $casestudies->id;
            $quiz_attempt = Quiz_attempt::where('case_id',$case_id)->where('user_id',$user_id)->first();

            if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
                return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
            }

            if(isset($quiz_attempt->id) && $quiz_attempt->id){
                $attempt = Quiz_attempt::find($quiz_attempt->id);
                $response = $attempt->update(['case_id'=>$case_id,'user_id'=>$user_id,'history'=>1]);
            }else{
                Quiz_attempt::create(['case_id'=>$case_id,'user_id'=>$user_id,'history'=>1]);
            }

            $hint1 = sub_casestudies::select('id','hint_first','hint_image_1','hint_second','hint_image_2','hint_third','hint_image_3')
                ->where('case_id',$id)
                ->where('type',1)
                ->get();

            $hint2 = sub_casestudies::select('id','hint_first','hint_image_1','hint_second','hint_image_2','hint_third','hint_image_3')
                ->where('case_id',$id)
                ->orWhere('type',2)
                ->get();

            $hint3 = sub_casestudies::select('id','hint_first','hint_image_1','hint_second','hint_image_2','hint_third','hint_image_3')
                ->where('case_id',$id)
                ->where('type',3)
                ->get(); 

            $user = auth()->guard('doctor')->user();
            $quiz_attempt = Quiz_attempt::where('case_id',$id)->where('user_id',$user->id)->first();

            if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
                $hints=[];
            }

            return view('doctor.history',['casestudies'=>$casestudies,'attempt'=>$quiz_attempt,'results'=>$results,'hint1'=>$hint1,'hint2'=>$hint2,'hint3'=>$hint3]);
        
        }else{
            return redirect()->back();
        }

        
    }

    function getCasestudiesQuiz($id) {
        $casestudies = Casestudies::where('id',$id)->first();

        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudies->id)->where('user_id',$user->id)->first();

        if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
            return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
        }

        $attempt = Quiz_attempt::where('id',$quiz_attempt->id)->get();

        if($casestudies->quiz == "on"){
            return view('doctor.quiz',['casestudies'=>$casestudies,'attempt'=>$quiz_attempt]);
        }else{
            return redirect()->route('tests.get',['casestudies'=>$casestudies]);
        }
    }

    function PostQuiz(Request $req) {
    
        $req->validate([
            'quiz_answer'=>'required',
        ]);
    
        $casestudies = Casestudies::where('id',$req->case_id)->first();
        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudies->id)->where('user_id',$user->id)->first();
        $attempt = Quiz_attempt::find($quiz_attempt->id);

        if ($quiz_attempt->quiz_answer == null && strtolower($casestudies->correct_one) == strtolower($req->quiz_answer)) {
            $response = $attempt->update(['quiz_answer'=>$req->quiz_answer,'quiz_score'=>5]);
            return redirect()->route('tests.get',$req->case_id);            
        } else {
            $response = $attempt->update(['quiz_answer'=>$req->quiz_answer,'quiz_score'=>0]);
            return redirect()->route('tests.get',$req->case_id);
        }
    }

    function getTests($id) {
        $casestudies = Casestudies::where('id',$id)->first();
        $feedback = sub_casestudies::select('feedback_text')->where('case_id',$id)->where('type',3)->get();

        $hints = sub_casestudies::select('id','hint_first','hint_image_1','hint_second','hint_image_2','hint_third','hint_image_3')->where('case_id',$id)->where('type',3)->get();
        //dd($hints);
        $tests = tests::all();
        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudies->id)->where('user_id',$user->id)->first();

        if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
            return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
        }

        return view('doctor.tests',['casestudies'=>$casestudies,'tests'=>$tests,'attempt'=>$quiz_attempt,'feedback'=>$feedback,'hints'=>$hints]);
    }

    function getResults($id) {
        $results = sub_casestudies::select('name','result','image')->where('case_id',$id)->where('type',3)->get();
        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$id)->where('user_id',$user->id)->first();

        
        $casestudies = Casestudies::where('id',$id)->first();

        if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
            return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
        }

        return view('doctor.results',['results'=>$results,'casestudies'=>$casestudies,'attempt'=>$quiz_attempt]);
    }

    function getFollowuptest($id) {
        $followupquiz = sub_casestudies::select('id','followup_question','followup_option_1','followup_option_2','followup_option_3','followup_option_4','followup_correct_one')->where('case_id',$id)->where('type',3)->where('followupquiz','on')->get();
        $casestudies = Casestudies::where('id',$id)->first();


        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$id)->where('user_id',$user->id)->first();

        if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
            return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
        }
        
        if($followupquiz->count() > 0 ){
            return view('doctor.followupquiz_tests',['followupquiz'=>$followupquiz,'casestudies'=>$casestudies,'attempt'=>$quiz_attempt]);
        }else{
            return redirect()->route('diagnosis.get',$id);    
        }
        
    }

    function getFollowupdiag($id) {
        $followupquiz = sub_casestudies::select('id','followup_question','followup_option_1','followup_option_2','followup_option_3','followup_option_4', 'followup_correct_one')->where('case_id',$id)->where('type',2)->where('followupquiz','on')->get();
        $casestudies = Casestudies::where('id',$id)->first();
        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$id)->where('user_id',$user->id)->first();

        if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
            return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
        }

        if($followupquiz->count() > 0 ){
            return view('doctor.followupquiz_diagnosis',['followupquiz'=>$followupquiz,'casestudies'=>$casestudies,'attempt'=>$quiz_attempt]);
        }else{
            return redirect()->route('medication.get',$id);    
        }
        
    }

    function getFollowupmedication($id) {
        $followupquiz = sub_casestudies::select('id','followup_question','followup_option_1','followup_option_2','followup_option_3','followup_option_4','followup_correct_one')->where('case_id',$id)->where('type',1)->where('followupquiz','on')->get();
        $casestudies = Casestudies::where('id',$id)->first();

        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$id)->where('user_id',$user->id)->first();

        if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
            return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
        }

        if($followupquiz->count() > 0 ){
            return view('doctor.followupquiz_medication',['followupquiz'=>$followupquiz,'casestudies'=>$casestudies,'attempt'=>$quiz_attempt]);
        }else{
            return redirect()->route('patient_comment.get',$id);    
        }
        
    }
    function PostMedication(Request $req) {
        $req->validate([
            'medication'=>'required',
        ]);

        $casestudies = Casestudies::where('id',$req->case_id)->first();
        $sub_casestudies = sub_casestudies::where('case_id',$req->case_id)->where('type',1)->get();
        $test = [];
        foreach($sub_casestudies as $val){  
            $tests = medication::where('title',$val->name)->first();
            if($tests) {
                $test[]  = $tests->id;  
            }
        }

        $matchedValues = array_intersect($test, $req->medication);
    
        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudies->id)->where('user_id',$user->id)->first();
        $get_attempt = Quiz_attempt::find($quiz_attempt->id);
        
        if(count($matchedValues)>0){
            $medication_score = (count($matchedValues) *5);
            $get_attempt->update(['medication'=>implode(', ',$req->medication),'medication_score'=>$medication_score]);
        
        }else{
            $get_attempt->update(['medication'=>implode(', ',$req->medication),'medication_score'=>0]);
        }

        $casestudies = Casestudies::where('id',$req->case_id)->first();
        return redirect()->route('followup_quiz_medication.get',$casestudies->id);
    }


    function PostTests(Request $req) {
        
        $req->validate([
            'tests'=>'required',
        ]);
        $casestudies = Casestudies::where('id',$req->case_id)->first();
        $sub_casestudies = sub_casestudies::where('case_id',$req->case_id)->where('type',3)->get();
        $test = [];
        foreach($sub_casestudies as $val){  
            $tests = tests::where('title',$val->name)->first();
            if($tests){
                $test[]  = $tests->id;  
            }
        }

        $matchedValues = array_intersect($test, $req->tests);
    
        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudies->id)->where('user_id',$user->id)->first();
        $get_attempt = Quiz_attempt::find($quiz_attempt->id);
        
        if(count($matchedValues)>0){
            $tests_score = (count($matchedValues) *5);
            $get_attempt->update(['tests'=>implode(', ',$req->tests),'tests_score'=>$tests_score]);
        }else{
            $get_attempt->update(['tests'=>implode(', ',$req->tests),'tests_score'=>0]);
        }
        
        return redirect()->route('results.get',['casestudies'=>$casestudies]);

    }


    function PostDiag(Request $req) {

        $req->validate([
            'diag'=>'required',
        ]);

        $casestudies = Casestudies::where('id',$req->case_id)->first();
        $sub_casestudies = sub_casestudies::where('case_id',$req->case_id)->where('type',2)->get();
        $test = [];
        foreach($sub_casestudies as $val){  
            $tests = diagnosis::where('title',$val->name)->first();
            if($tests) {
                $test[]  = $tests->id;  
            }
        }

        $matchedValues = array_intersect($test, $req->diag);
    
        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudies->id)->where('user_id',$user->id)->first();
        $get_attempt = Quiz_attempt::find($quiz_attempt->id);
        if(count($matchedValues)>0){
            $diagnosis_score = (count($matchedValues) *5);
            $get_attempt->update(['diagnosis'=>implode(', ',$req->diag),'diagnosis_score'=>$diagnosis_score]);
        
        }else {
        
            $get_attempt->update(['diagnosis'=>implode(', ',$req->diag),'diagnosis_score'=>0]);
        }
        
        
        return redirect()->route('followup_quiz_diag.get',$req->case_id);

    }

    function getDiagnosis($id) {
        $casestudies = Casestudies::where('id',$id)->first();
        $diagnosis = diagnosis::all();
        $feedback = sub_casestudies::select('feedback_text')->where('case_id',$id)->where('type',2)->get();

        $hints = sub_casestudies::select('id','hint_first','hint_image_1','hint_second','hint_image_2','hint_third','hint_image_3')->where('case_id',$id)->where('type',2)->get();

        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$id)->where('user_id',$user->id)->first();

        if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
            return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
        }

        return view('doctor.diagnosis',['casestudies'=>$casestudies,'diagnosis'=>$diagnosis,'attempt'=>$quiz_attempt,'feedback'=>$feedback,'hints'=>$hints]);
    }
    

    function getMedication($id) {
        $casestudies = Casestudies::where('id',$id)->first();
        $medications = medication::all();
        $feedback = sub_casestudies::select('feedback_text')->where('case_id',$id)->where('type',1)->get();

        $hints = sub_casestudies::select('id','hint_first','hint_image_1','hint_second','hint_image_2','hint_third','hint_image_3')->where('case_id',$id)->where('type',1)->get();

        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudies->id)->where('user_id',$user->id)->first();

        if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
            return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
        }

        return view('doctor.medication',['casestudies'=>$casestudies,'medications'=>$medications,'attempt'=>$quiz_attempt,'feedback'=>$feedback,'hints'=>$hints]);
    }

    function PatientComment($id) {
        $casestudies = Casestudies::where('id',$id)->first();

        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudies->id)->where('user_id',$user->id)->first();

        if ($casestudies->mode == "class_mode" && isset($quiz_attempt->score) && $quiz_attempt->score != null){
            return redirect()->route('doctor.dashboard')->with('message','You have already attempted '.$casestudies->title. ' Casestudies');
        }

        return view('doctor.comment',['casestudies'=>$casestudies,'attempt'=>$quiz_attempt]);
    }

    function postComment(Request $req) {
        $req->validate([
            'patient_comment'=>'required',
        ]);

        $casestudies = Casestudies::where('id',$req->case_id)->first();
    
        $user = auth()->guard('doctor')->user();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudies->id)->where('user_id',$user->id)->first();
        
        if($quiz_attempt->comment == ""){

            $score = $quiz_attempt->tests_score + $quiz_attempt->diagnosis_score + $quiz_attempt->medication_score + $quiz_attempt->quiz_score + $quiz_attempt->followup_quiz_tests_score + $quiz_attempt->followup_quiz_diagnosis_score + $quiz_attempt->followup_quiz_medication_score;
            
            $get_attempt = Quiz_attempt::find($quiz_attempt->id);
            $get_attempt->update(['comment'=>$req->patient_comment,'score'=>$score]);
        }
        return redirect()->route('points',$req->case_id);
    }

    function Points($id) {

        $user = auth()->guard('doctor')->user();
        $feedback = sub_casestudies::select('feedback_text')->where('case_id',$id)->get();
        $quiz_attempt = Quiz_attempt::where('case_id',$id)->where('user_id',$user->id)->first();

        return view('doctor.points',['attempt'=>$quiz_attempt,'feedback'=>$feedback]);
    }

    function PostfollowupTests(Request $req) {
        $req->validate([
            'quiz_answer'=>'required',
        ]);

        if(is_array($req->quiz_answer) && count($req->quiz_answer) > 0) {
            $followupquiz = [];

            foreach($req->quiz_answer as $val) {
                $followupquiz[] = sub_casestudies::where('case_id',$req->case_id)->where('type',3)->where('followup_correct_one',$val)->get()->count();
            }    

            $user = auth()->guard('doctor')->user();
            $quiz_attempt = Quiz_attempt::where('case_id',$req->case_id)->where('user_id',$user->id)->first();
            if($quiz_attempt->followup_tests == null){
                
                $followup_quiz_tests_score = (array_sum($followupquiz) *5);
                
                $get_attempt = Quiz_attempt::find($quiz_attempt->id);
                
                $get_attempt->update(['followup_tests'=>implode(', ',$req->quiz_answer),'followup_quiz_tests_score'=>$followup_quiz_tests_score]);
            }

            return redirect()->route('diagnosis.get',$req->case_id);


        }
    }

    function PostfollowupDiag(Request $req) {
        $req->validate([
            'quiz_answer'=>'required',
        ]);

        if(is_array($req->quiz_answer) && count($req->quiz_answer) > 0) {
            $followupquiz = [];

            foreach($req->quiz_answer as $val) {
                $followupquiz[] = sub_casestudies::where('case_id',$req->case_id)->where('type',2)->where('followup_correct_one',$val)->get()->count();
            }    

            $user = auth()->guard('doctor')->user();
            $quiz_attempt = Quiz_attempt::where('case_id',$req->case_id)->where('user_id',$user->id)->first();
            if($quiz_attempt->followup_diagnosis == null){
                $followup_quiz_diagnosis_score = (array_sum($followupquiz) *5);
                $get_attempt = Quiz_attempt::find($quiz_attempt->id);
                $get_attempt->update(['followup_diagnosis'=>implode(', ',$req->quiz_answer),'followup_quiz_diagnosis_score'=>$followup_quiz_diagnosis_score]);
            }
        

            return redirect()->route('medication.get',$req->case_id);
        }
    }

    function PostfollowupMedication(Request $req) {
        
        if(is_array($req->quiz_answer) && count($req->quiz_answer) > 0) {
            $followupquiz = [];

            foreach($req->quiz_answer as $val) {
                $followupquiz[] = sub_casestudies::where('case_id',$req->case_id)->where('type',2)->where('followup_correct_one',$val)->get()->count();
            }    

            $user = auth()->guard('doctor')->user();
            $quiz_attempt = Quiz_attempt::where('case_id',$req->case_id)->where('user_id',$user->id)->first();
            if($quiz_attempt->followup_medication == null){
                $followup_quiz_medication_score = (array_sum($followupquiz) *5);
                $get_attempt = Quiz_attempt::find($quiz_attempt->id);
                $get_attempt->update(['followup_medication'=>implode(', ',$req->quiz_answer),'followup_quiz_medication_score'=>$followup_quiz_medication_score]);
            }

            // return redirect()->route('patient_comment.get',$req->case_id);
            return redirect()->route('points',$req->case_id);
        }
    }

    function AllDepartments(Request $request){
        $data = Department::all();
        return view('doctor.all_departments',['list'=>$data]);
    }

    // Fetch all case studies
    function AllCaseStudies(Request $request){
        $data = Casestudies::orderBy('id','desc')->get();
        return view('doctor.all_casestudies',['list'=>$data]);
    }

    // Fetch all case studies via department
    function DepartmentCaseStudies(Request $request,$department){
        $data = Casestudies::where('department',$department)->orderBy('id','desc')->get();
        return view('doctor.department_casestudies',['list'=>$data]);
    }

    function About(Request $request){
        return view('doctor.about');
    }

    function Rules(Request $request) {
        return view('doctor.rules');
    }


    function Research(Request $request,$casestudy) {
        $tests = tests::all();
        $user = auth()->guard('doctor')->user();
        $medications = medication::all();
        $diagnosis = diagnosis::all();
        $quiz_attempt = Quiz_attempt::where('case_id',$casestudy)->where('user_id',$user->id)->first();
        return view('doctor.research',['tests'=>$tests,'medications'=>$medications,'diagnosis'=>$diagnosis,'attempt'=>$quiz_attempt]);
    }
}


