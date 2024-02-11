<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Doctor Register</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
    <style>
    .logo_img{
        height:70px;
    }
    </style>
</head>
<body class="bg-light">
    <div class="container">
        <div class="row mt-5">
            <div class="col-md-6 offset-md-3">
                <h3 class="text-danger text-center"><img src="{{ asset('logo.png') }}" class="logo_img"alt="logo"></h3>
                <div class="card shadow">
                    <div class="card-header">
                        <h4>Student Register</h4>
                    </div>
                    <div class="card-body">
                        @if(session('error'))
                            <p class="text-danger">{{ session('error') }}</p>
                        @endif
                        <form action="{{ route('doctor.register.post') }}" method="POST">
                          @csrf
                          <div class="mb-3">
                              <label for="username" class="form-label">Name</label>
                                <input type="text" id="username" class="form-control" name="username">
                                @if ($errors->has('username'))
                                    <span class="text-danger">{{ $errors->first('username') }}</span>
                                @endif
                          </div>
  
                          <div class="mb-3">
                              <label for="email_address" class="form-label">E-Mail Address</label>
                                <input type="text" id="email_address" class="form-control" name="email">
                                @if ($errors->has('email'))
                                    <span class="text-danger">{{ $errors->first('email') }}</span>
                                @endif
                            
                          </div>
  
                          <div class="mb-3">
                              <label for="password" class="form-label">Password</label>
                                <input type="password" id="password" class="form-control" name="password">
                                @if ($errors->has('password'))
                                    <span class="text-danger">{{ $errors->first('password') }}</span>
                                @endif
                             
                          </div>
  
                          <div class="mb-3">
                              <div class="form-label">
                                  <div class="checkbox">
                                      <label>
                                          <input type="checkbox" name="remember"> Remember Me
                                      </label>
                                  </div>
                              </div>
                          </div>
  
                          <div class="text-left">
                              <button type="submit" class="btn btn-primary">
                                  Register
                              </button>
                              <p class="mt-2">
                                  <a href="{{route('doctor.login')}}">Already Registered! Login Here</a>
                              </p>
                          </div>
                      </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>