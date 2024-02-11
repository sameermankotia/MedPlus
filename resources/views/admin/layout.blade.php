<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>@yield('title','MedPlus')</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="{{ asset('assets/css/styles.css') }}" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
        <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
        <style>
            .f_capital{
                text-transform: capitalize;
            }
            .dynamic_option{
                display: none;
            }
            .logo_img{
                height:50px;
            }
        </style>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="{{route('admin.dashboard')}}">
                <img src="{{ asset('logo.png') }}" class="logo_img"alt="logo">
            </a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <div class="d-none d-md-inline-block ms-auto me-0 me-md-3 my-2 my-md-0 text-white">
                Welcome Admin
            </div>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="{{route('admin.logout')}}">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion" style="background: #0068c1;">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link" href="{{route('admin.dashboard')}}">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <!-- Departments -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#departDropDown" aria-expanded="false" aria-controls="employeeDropDown">
                                <div class="sb-nav-link-icon"><i class="fas fa-landmark"></i></div>
                                Departments
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="departDropDown" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{ route('department.create') }}">Add</a>
                                    <a class="nav-link" href="{{ route('department.index') }}">View All</a>
                                </nav>
                            </div>
                            <!-- Case Studies -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#CaseDropDown" aria-expanded="false" aria-controls="employeeDropDown">
                                <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                                Case Studies
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="CaseDropDown" aria-labelledby="headingOne" data-bs-parent="#CaseDropDown">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{ route('casestudies.create') }}">Add</a>
                                    <a class="nav-link" href="{{ route('casestudies.index') }}">View All</a>
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#CaseGroupDown" aria-expanded="false" aria-controls="employeeDropDown">
                                <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                               Group
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="CaseGroupDown" aria-labelledby="headingOne" data-bs-parent="#CaseGroupDown">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{ route('group.create') }}">Add</a>
                                    <a class="nav-link" href="{{ route('group.index') }}">View All</a>
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#CaseDocDown" aria-expanded="false" aria-controls="employeeDropDown">
                                <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                                Students 
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="CaseDocDown" aria-labelledby="headingOne" data-bs-parent="#CaseDocDown">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{ route('doctor.list') }}">View All</a>
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#testDown" aria-expanded="false" aria-controls="employeeDropDown">
                                <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                                Procedure
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="testDown" aria-labelledby="headingOne" data-bs-parent="#testDown">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{ route('tests.create') }}">Add</a>
                                    <a class="nav-link" href="{{ route('tests.index') }}">View All</a>
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#DiagnosisDown" aria-expanded="false" aria-controls="employeeDropDown">
                                <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                                Diagnosis
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="DiagnosisDown" aria-labelledby="headingOne" data-bs-parent="#DiagnosisDown">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{ route('diagnosis.create') }}">Add</a>
                                    <a class="nav-link" href="{{ route('diagnosis.index') }}">View All</a>
                                </nav>
                            </div>

                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#MedicationDown" aria-expanded="false" aria-controls="employeeDropDown">
                                <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                                Medication
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="MedicationDown" aria-labelledby="headingOne" data-bs-parent="#MedicationDown">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{ route('medication.create') }}">Add</a>
                                    <a class="nav-link" href="{{ route('medication.index') }}">View All</a>
                                </nav>
                            </div>


                            
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Admin
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4 my-4">
                        @yield('content')
                     </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Medschool {{date('Y')}}</div>
                            <!-- <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div> -->
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="{{asset('assets/js/scripts.js')}}"></script>    
    </body>
</html>
