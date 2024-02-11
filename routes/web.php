<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminLoginController;
use App\Http\Controllers\AdminDashboard;
use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\CasestudiesController;
use App\Http\Controllers\DoctorController;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\GroupController;
use App\Http\Controllers\TestController;
use App\Http\Controllers\MedicationController;
use App\Http\Controllers\DiagnosisController;
use App\Http\Controllers\ForgotPasswordController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('admin/login',[AdminLoginController::class,'login'])->name('login');
Route::post('admin/login-request',[AdminLoginController::class,'login_request'])->name('login.request');
Route::get('admin/logout',[AdminLoginController::class,'logout'])->name('admin.logout');
Route::get('admin/dashboard',[AdminDashboard::class,'index'])->middleware('auth')->name('admin.dashboard');
Route::resource('admin/department', DepartmentController::class)->middleware('auth');
Route::resource('admin/casestudies', CasestudiesController::class)->middleware('auth');
Route::resource('admin/tests', TestController::class)->middleware('auth');
Route::resource('admin/medication', MedicationController::class)->middleware('auth');
Route::resource('admin/diagnosis', DiagnosisController::class)->middleware('auth');
Route::get('admin/check_quiz_optional', [CasestudiesController::class,'Quiz'])->name('check_quiz_optional')->middleware('auth');
Route::get('admin/followup_quiz', [CasestudiesController::class,'Followupquiz'])->name('followup_quiz')->middleware('auth');
Route::get('admin/add_form_session', [CasestudiesController::class,'AddFormsession'])->name('add_form_session')->middleware('auth');
Route::get('admin/remove_form_session', [CasestudiesController::class,'RemoveFormsession'])->name('remove_form_session')->middleware('auth');
Route::get('admin/remove_form_db', [CasestudiesController::class,'RemoveFromdb'])->name('remove_form_db')->middleware('auth');
Route::get('admin/get_name', [CasestudiesController::class,'getName'])->name('get_names')->middleware('auth');
Route::resource('admin/group', GroupController::class)->middleware('auth');
Route::get('admin/doctors-list', [DoctorController::class,'DoctorList'])->name('doctor.list')->middleware('auth');
Route::get('admin/doctors-edit/{id}', [DoctorController::class,'DoctorShow'])->name('doctor.show')->middleware('auth');
Route::put('admin/doctors-edit/{id}', [DoctorController::class,'DoctorEdit'])->name('doctor.edit')->middleware('auth');

Route::get('login', [DoctorController::class, 'index'])->name('doctor.login');
Route::post('post-login', [DoctorController::class, 'postLogin'])->name('doctor.login.post'); 
Route::get('registration', [DoctorController::class, 'registration'])->name('doctor.register');
Route::post('post-registration', [DoctorController::class, 'postRegistration'])->name('doctor.register.post'); 
Route::get('dashboard', [DoctorController::class, 'dashboard'])->name('doctor.dashboard')->middleware('auth.doctor'); 
Route::get('logout', [DoctorController::class, 'logout'])->name('doctor.logout');


// Fetch all Departments
Route::get('departments',[FrontController::class,'AllDepartments'])->name('doctor.departments');

// Fetch All Case Studies
Route::get('case-studies',[FrontController::class,'AllCaseStudies'])->name('doctor.casestudies');

// Fetch All Case Studies Via Department
Route::get('case-studies/{department}',[FrontController::class,'DepartmentCaseStudies'])->name('doctor.department_casestudies');
Route::get('case-study/{casestudies}/history', [FrontController::class, 'CaseStudyHistory'])->name('casestudies_history.get')->middleware('auth.doctor');
Route::get('case-study/{casestudies}/quiz', [FrontController::class, 'getCasestudiesQuiz'])->name('casestudies_quiz.get')->middleware('auth.doctor');
Route::get('case-study/{casestudies}/tests', [FrontController::class, 'getTests'])->name('tests.get')->middleware('auth.doctor');
Route::get('case-study/{casestudies}/results', [FrontController::class, 'getResults'])->name('results.get')->middleware('auth.doctor');
Route::get('case-study/{casestudies}/followup_quiz/test', [FrontController::class, 'getFollowuptest'])->name('followup_quiz_test.get')->middleware('auth.doctor');
Route::get('case-study/{casestudies}/followup_quiz/diag', [FrontController::class, 'getFollowupdiag'])->name('followup_quiz_diag.get')->middleware('auth.doctor');
Route::get('case-study/{casestudies}/followup_quiz/medication', [FrontController::class, 'getFollowupmedication'])->name('followup_quiz_medication.get')->middleware('auth.doctor');
Route::get('case-study/{casestudies}/diagnosis', [FrontController::class, 'getDiagnosis'])->name('diagnosis.get')->middleware('auth.doctor');
Route::get('case-study/{casestudies}/medication', [FrontController::class, 'getMedication'])->name('medication.get')->middleware('auth.doctor');
Route::get('case-study/{casestudies}/patient-comment', [FrontController::class, 'PatientComment'])->name('patient_comment.get')->middleware('auth.doctor');
Route::get('admin/data-import', [GroupController::class,'getImport'])->name('data.get');


Route::post('test/final-submit', [FrontController::class, 'SubmitCaseData'])->name('final.submit');
Route::post('mode_and_dept_post', [FrontController::class, 'PostModeandDept'])->name('mode_and_dept.post');
Route::post('postquiz/{casestudies}', [FrontController::class, 'PostQuiz'])->name('quiz.post');
Route::post('posttest/{casestudies}', [FrontController::class, 'PostTests'])->name('quiz_test.post');
Route::post('postdiag/{casestudies}', [FrontController::class, 'PostDiag'])->name('quiz_diag.post');
Route::post('postmedication/{casestudies}', [FrontController::class, 'PostMedication'])->name('quiz_medication.post');

Route::post('followup_quiz_medication/{casestudies}', [FrontController::class, 'PostfollowupMedication'])->name('followup_quiz_medication.post');
Route::post('followup_quiz_test/{casestudies}', [FrontController::class, 'PostfollowupTests'])->name('followup_quiz_test.post');
Route::post('followup_quiz_diag/{casestudies}', [FrontController::class, 'PostfollowupDiag'])->name('followup_quiz_diag.post');

Route::post('postcomment/{casestudies}', [FrontController::class, 'postComment'])->name('comment.post');
Route::post('data-import', [GroupController::class,'import'])->name('data.import');
Route::get('case-study/{casestudies}/points', [FrontController::class, 'Points'])->name('points')->middleware('auth.doctor');

Route::get('case-study/{mode}/{department}', [FrontController::class, 'getCasestudies'])->name('casestudies.get')->middleware('auth.doctor');

Route::get('about', [FrontController::class, 'About'])->name('about')->middleware('auth.doctor');

Route::get('rules', [FrontController::class, 'Rules'])->name('rules')->middleware('auth.doctor');
Route::get('research/{casestudies}', [FrontController::class, 'Research'])->name('research')->middleware('auth.doctor');

Route::get('forget-password', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('forget.password.get');
Route::post('forget-password', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('forget.password.post'); 
Route::get('reset-password/{token}', [ForgotPasswordController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('reset-password', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');
