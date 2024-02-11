<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Student Panel</title>
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
        <style>
            .f_capital{
                text-transform: capitalize;
            }
            .logo_img{
                height:50px;
            }
        </style>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="{{route('doctor.dashboard')}}">
                <img src="{{ asset('logo.png') }}" class="logo_img"alt="logo">
            </a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <div class="d-none d-md-inline-block ms-auto me-0 me-md-3 my-2 my-md-0 text-white">
                @if(isset(auth()->guard('doctor')->user()->username))
                Welcome  {{ ucfirst(auth()->guard('doctor')->user()->username) }}
                @endif
            </div>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="{{route('doctor.logout')}}">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion" style="background: #0068c1;">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <!-- <a class="nav-link" href="{{route('doctor.departments')}}">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-list"></i>
                                </div>
                                Departments
                            </a> -->
                            <a class="nav-link" href="{{route('doctor.dashboard')}}">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                Dashboard
                            </a>
                            <a class="nav-link" href="{{route('about')}}">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                About
                            </a>

                            <a class="nav-link" href="{{route('rules')}}">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                Rules
                            </a>


                           @if(request()->route('casestudies') | request()->route('research'))
                            <a class="nav-link" href="@if (isset($attempt->history) && $attempt->history != null){{route('casestudies_history.get',request()->route('casestudies')) }} @else # @endif">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                Patient
                            </a>

                            {{-- @if(isset($attempt->quiz_answer) && $attempt->quiz_answer != null)
                                <a class="nav-link" href="@if (isset($attempt->quiz_answer) && $attempt->history != null){{route('casestudies_quiz.get',request()->route('casestudies')) }} @else # @endif">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                Quiz
                                </a>
                            @endif --}}

                            <a class="nav-link" href="@if (isset($attempt->id) && $attempt->id != null){{route('tests.get',request()->route('casestudies')) }} @else # @endif">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                Procedures
                            </a>

                            <a class="nav-link" href="@if (isset($attempt->id) && $attempt->id != null){{route('diagnosis.get',request()->route('casestudies')) }} @else # @endif">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                Diagnosis
                            </a>

                            <a class="nav-link" href="@if (isset($attempt->id) && $attempt->id != null){{route('medication.get',request()->route('casestudies')) }} @else # @endif">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                Medication
                            </a>

                            <a class="nav-link" href="{{route('research',request()->route('casestudies'))}}">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                Research
                            </a>

                            <a class="nav-link" href="{{route('points',request()->route('casestudies')) }}">
                                <div class="sb-nav-link-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                End Case
                            </a>

                            @endif

                            
                           
                            <!-- <a class="nav-link" href="{{route('doctor.casestudies')}}">
                                <div class="sb-nav-link-icon"><i class="fas fa-th"></i></div>
                                Case Studies
                            </a> -->
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Doctor
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
                            <div class="text-muted">Copyright &copy; MedSchool {{date('Y')}}</div>
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
