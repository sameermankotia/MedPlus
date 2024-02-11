<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Doctor Login</title>
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
                        <h4>Student Login</h4>
                    </div>
                    <div class="card-body">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">
                                {{ Session::get('message') }}
                            </div>
                        @endif

                            <form action="{{ route('forget.password.post') }}" method="POST">
                            @csrf
                            <div class="form-group row">
                                <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                                <div class="col-md-6">
                                    <input type="text" id="email_address" class="form-control" name="email" required autofocus>
                                    @if ($errors->has('email'))
                                        <span class="text-danger">{{ $errors->first('email') }}</span>
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-5 mt-4">
                                <button type="submit" class="btn btn-primary">
                                    Send Password Reset Link
                                </button>
                            </div>
                            </form>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>