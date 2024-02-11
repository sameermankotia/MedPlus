<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Department;
use App\Models\Casestudies;
use App\Models\sub_casestudies;
use App\Models\diagnosis;
use App\Models\medication;
use App\Models\tests;

class CasestudiesController extends Controller
{
    /**
     * Display a listing of the resource.
     * use App\Models\Department;
     * use App\Models\casestudies;
     */
    public function index()
    {
        $data = Casestudies::all();
        return view('admin.casestudies.index',['list'=>$data])->with('i');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $req)
    {
        $deparments = Department::all()->toArray();
        if($req->session()->get('form_session_value') != null) {
            $value = $req->session()->get('form_session_value') + 1;
        }else{
            $value = 1;
        }
        return view('admin.casestudies.create',['deparments'=>$deparments,'addFormSession'=>$value]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $req){

        if ($req->quiz_optional) {

            $req->validate([
                'department'=>'required',
                'mode'=>'required',
                'title'=>'required',
                'history'=>'required',
                'uital_signs'=>'required',
                'q_question'=>'required',
                'option_1'=>'required',
                'option_2'=>'required',
                'option_3'=>'required',
                'option_4'=>'required',
                'correct_one'=>'required',
                'addmore.*.type' => 'required',
                'addmore.*.name' => 'required',
                'addmore.*.feedback_text' => 'required'
            ]);

        } else {

            $req->validate([
                'department'=>'required',
                'mode'=>'required',
                'title'=>'required',
                'history'=>'required',
                'uital_signs'=>'required',
                'addmore.*.type' => 'required',
                'addmore.*.name' => 'required',
                'addmore.*.feedback_text' => 'required'
            ]);

        }

        if($req->history_image && $req->history_image->extension() != null){
            $history_image = time().'.'.$req->history_image->extension();  
            $req->history_image->move(public_path('images/history_images'), $history_image);
        }else{
            $history_image = "";
        }
        
        $options = $req->option_1.", ".$req->option_2.", ".$req->option_3.", ".$req->option_4; 

        $response = Casestudies::create([
            'department'=>$req->department,
            'title'=>$req->title,
            'mode'=>$req->mode,
            'history'=>$req->history,
            'uital_signs'=>$req->uital_signs,
            'quiz'=>isset($req->quiz_optional) ? $req->quiz_optional : "",
            'q_question'=>$req->q_question,
            'options'=>$options,
            'correct_one'=>$req->correct_one,
            'history_image'=>$history_image
        ]);

        if($response) {

            $id = $response->id;
            foreach($req->addmore as $key => $value) {


                
                if(isset($value['result_image'])){
                    // dd($value['result_image']);
                    $imgsArr=[];
                    foreach ($value['result_image'] as $imageKey => $imagefile) {
                        if($imagefile->extension() != null){
                            $result_image = time()."_result_image_".$imageKey.'.'.$imagefile->extension();  
                            $imagefile->move(public_path('images/result_images'), $result_image);
                            $imgsArr[]=$result_image;
                        }
                    }
                    $imgsString=implode(',',$imgsArr);
                    $value['image'] = $imgsString;
                }
    
                if(isset($value['image_first']) && $value['image_first']->extension() != null){
                    $image_first = time()."image_first".$key.'.'.$value['image_first']->extension();  
                    $value['image_first']->move(public_path('images/hint_images'), $image_first);
                    unset($value['image_first']);
                    $value += array_merge(['hint_image_1'=>$image_first],$value);
                }
    
                if(isset($value['image_second']) && $value['image_second']->extension() != null){
                    $image_second = time()."image_second".$key.'.'.$value['image_second']->extension();  
                    $value['image_second']->move(public_path('images/hint_images'), $image_second);
                    unset($value['image_second']);
                    $value += array_merge(['hint_image_2'=>$image_second],$value);
                }
    
                if(isset($value['image_third']) && $value['image_third']->extension() != null){
                    $image_third = time()."image_third".$key.'.'.$value['image_third']->extension();  
                    $value['image_third']->move(public_path('images/hint_images'), $image_third);
                    unset($value['image_third']);
                    $value += array_merge(['hint_image_3'=>$image_third],$value);
                }
    
                if(isset($value['feedback_image']) && $value['feedback_image']->extension() != null){
                    $feedback_image = time()."feedback_image".$key.'.'.$value['feedback_image']->extension();  
                    $value['feedback_image']->move(public_path('images/feedback_images'), $feedback_image);
                    unset($value['feedback_image']);
                    $value += array_merge(['feedback_image'=>$feedback_image],$value);
                }

                $value += array_merge(['case_id'=>$id],$value);
                $value['name'] = implode(", ", $value['name']);
                sub_casestudies::create($value);
            }
        }
        $req->session()->forget('form_session_value');
        return redirect()->route('casestudies.index')->with('success','Casestudies has been Created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Casestudies $department)
    {
        //dd($department);
        return view('admin.casestudies.edit',compact('department'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $deparments = Department::all()->toArray();
        $casestudies = Casestudies::where('id',$id)->first();
        $sub_casestudies = sub_casestudies::where('case_id',$id)->get();
        return view('admin.casestudies.edit',compact('casestudies','deparments','sub_casestudies'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $req, string $id)
    {
       
        // foreach($req->addmore as $key => $value) { 
        //     dump($value['name']);
        // } exit;
        if ($req->quiz_optional) {

            $req->validate([
                'department'=>'required',
                'mode'=>'required',
                'title'=>'required',
                'history'=>'required',
                'uital_signs'=>'required',
                'q_question'=>'required',
                'option_1'=>'required',
                'option_2'=>'required',
                'option_3'=>'required',
                'option_4'=>'required',
                'correct_one'=>'required',
                'addmore.*.type' => 'required',
                'addmore.*.name' => 'required',
                'addmore.*.feedback_text' => 'required'
            ]);

        } else {

            $req->validate([
                'department'=>'required',
                'mode'=>'required',
                'title'=>'required',
                'history'=>'required',
                'uital_signs'=>'required',
                'addmore.*.type' => 'required',
                'addmore.*.name' => 'required',
                'addmore.*.feedback_text' => 'required'
            ]);

        }

        if($req->history_image && $req->history_image->extension() != null){
            $history_image = time().'.'.$req->history_image->extension();  
            $req->history_image->move(public_path('images/history_images'), $history_image);
        }else{
            $history_image = "";
        }

        $options = $req->option_1.", ".$req->option_2.", ".$req->option_3.", ".$req->option_4; 
        $casestudies = Casestudies::find($id);

        $response = $casestudies->update([
            'department'=>$req->department,
            'title'=>$req->title,
            'mode'=>$req->mode,
            'history'=>$req->history,
            'uital_signs'=>$req->uital_signs,
            'quiz'=>isset($req->quiz_optional) ? $req->quiz_optional : "",
            'q_question'=>$req->q_question,
            'options'=>$options,
            'correct_one'=>$req->correct_one,
            'history_image'=>$history_image
        ]);

        if($response) {
            foreach($req->addmore as $key => $value) {

                if(isset($value['result_image'])){
                    // dd($value['result_image']);
                    $imgsArr=[];
                    foreach ($value['result_image'] as $imageKey => $imagefile) {
                        if($imagefile->extension() != null){
                            $result_image = time()."_result_image_".$imageKey.'.'.$imagefile->extension();  
                            $imagefile->move(public_path('images/result_images'), $result_image);
                            $imgsArr[]=$result_image;
                        }
                    }
                    $imgsString=implode(',',$imgsArr);
                    $value['image'] = $imgsString;
                }
    
                if(isset($value['image_first']) && $value['image_first']->extension() != null){
                    $image_first = time()."image_first".$key.'.'.$value['image_first']->extension();  
                    $value['image_first']->move(public_path('images/hint_images'), $image_first);
                    unset($value['image_first']);
                    $value += array_merge(['hint_image_1'=>$image_first],$value);
                }
    
                if(isset($value['image_second']) && $value['image_second']->extension() != null){
                    $image_second = time()."image_second".$key.'.'.$value['image_second']->extension();  
                    $value['image_second']->move(public_path('images/hint_images'), $image_second);
                    unset($value['image_second']);
                    $value += array_merge(['hint_image_2'=>$image_second],$value);
                }
    
                if(isset($value['image_third']) && $value['image_third']->extension() != null){
                    $image_third = time()."image_third".$key.'.'.$value['image_third']->extension();  
                    $value['image_third']->move(public_path('images/hint_images'), $image_third);
                    unset($value['image_third']);
                    $value += array_merge(['hint_image_3'=>$image_third],$value);
                }
    
                if(isset($value['feedback_image']) && $value['feedback_image']->extension() != null){
                    $feedback_image = time()."feedback_image".$key.'.'.$value['feedback_image']->extension();  
                    $value['feedback_image']->move(public_path('images/feedback_images'), $feedback_image);
                    unset($value['feedback_image']);
                    $value += array_merge(['feedback_image'=>$feedback_image],$value);
                }

                   
                if(isset($value['id']) && !empty($value['id'])) {
                    $sub_casestudies = sub_casestudies::find($value['id']);
                    $value['name'] = implode(", ", $value['name']);
                    $sub_casestudies->update($value);
                }else{
                    $value += array_merge(['case_id'=>$id],$value);
                    $value['name'] = implode(", ", $value['name']);
                    sub_casestudies::create($value);
                }
                
            }

        }
        $req->session()->forget('form_session_value');
        return redirect()->route('casestudies.index')->with('success','Casestudies has been Updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $casestudies = Casestudies::find($id);
        $casestudies->delete();
        $sub_casestudies = sub_casestudies::where('case_id',$id);
        $sub_casestudies->delete();
        return redirect()->route('casestudies.index')->with('success','Casestudies has been Deleted successfully');
    }

    function Quiz(Request $req) {
        if($req->checked) {
            $req->session()->forget('quiz_optional_checkbox');
            $req->session()->put('quiz_optional_checkbox', $req->checked);
        }
    }

    function Followupquiz(Request $req) {
        if($req->checked) {
            $req->session()->forget('follow_upquiz_checkbox');
            $req->session()->put('follow_upquiz_checkbox', $req->checked);
        }
    }

    function AddFormsession(Request $req) {
        if($req->session()->get('form_session_value') != null) {
            $value = $req->session()->get('form_session_value') + 1;
        }else{
            $value = 1;
        }
        $req->session()->put('form_session_value', $value);
    }

    function RemoveFormsession(Request $req) {

        if($req->session()->get('form_session_value') != null) {
            $value = $req->session()->get('form_session_value') - 1;
              //      Session::push('form_session_value',$value); 
           $value = $req->session()->put('form_session_value', $value);
            return $value;
        }

    }

    function RemoveFromdb(Request $req) {
        $sub_casestudies = sub_casestudies::where('id',$req->id);
        $sub_casestudies->delete();
    }

    function getName(Request $req) {    
           $value = $req->value;
        switch ($value) {
            case 1:
                $medication = medication::select('title')->get();
                return $medication;
            break;
            case 2:
                $diagnosis = diagnosis::select('title')->get();
                return $diagnosis;
            break;
            case 3:
                $tests = tests::select('title')->get();
                return $tests;
            break;
            default:
                # code...
                break;
        }
    }
}
