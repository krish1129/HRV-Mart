@extends('layouts.front')

@section('content')

    <section class="login-signup">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <nav class="comment-log-reg-tabmenu">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link login active" id="nav-log-tab" data-toggle="tab" href="#nav-log"
                               role="tab"
                               aria-controls="nav-log" aria-selected="true">
                                {{ $langg->lang197 }}
                            </a>
                            <a class="nav-item nav-link" id="nav-reg-tab" data-toggle="tab" href="#nav-reg" role="tab"
                               aria-controls="nav-reg" aria-selected="false">
                                {{ $langg->lang198 }}
                            </a>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-log" role="tabpanel"
                             aria-labelledby="nav-log-tab">
                            <div class="login-area">
                                @include('includes.form-success')
                                @if(session()->has('error'))
                                    <div class="alert alert-danger">
                                        {{ session()->get('error') }}
                                    </div>
                                @endif
                                @if ($errors->any())
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                                <div class="header-area">
                                    <h4 class="title">{{ $langg->lang172 }}</h4>
                                </div>
                                <div class="login-form signin-form">
                                    @include('includes.admin.form-login')
                                    <form action="{{ route('user.login.submit') }}" method="POST">
                                        {{ csrf_field() }}
                                        <div class="form-input">
                                            <input type="email" name="email" placeholder="{{ $langg->lang173 }}" value="{{old('email')}}"
                                                   required="">
                                            <i class="icofont-user-alt-5"></i>
                                        </div>
                                        <div class="form-input">
                                            <input type="password" class="Password" name="password"
                                                   placeholder="{{ $langg->lang174 }}"
                                                   required="" id="pass">
                                            <i class="icofont-ui-password"></i>
                                        </div>
                                        <div class="form-forgot-pass">
                                            <div class="left">
                                                <input type="checkbox" id="show"  onclick="myFunction()">
                                                <label for="show">Show Password</label>
                                            </div>
                                        </div>
                                        <div class="form-forgot-pass">
                                            <div class="left">
                                                <input type="checkbox" name="remember"
                                                       id="mrp" {{ old('remember') ? 'checked' : '' }}>
                                                <label for="mrp">{{ $langg->lang175 }}</label>
                                            </div>
                                            <div class="right">
                                                <a href="{{ route('user-forgot') }}">
                                                    {{ $langg->lang176 }}
                                                </a>
                                            </div>
                                        </div>
                                        <input type="hidden" name="modal" value="1">
                                        <input class="mauthdata" type="hidden" value="{{ $langg->lang177 }}">
                                        <button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
                                        @if(App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check ==
                                        1)
                                            <div class="social-area">
                                                <h3 class="title">{{ $langg->lang179 }}</h3>
                                                <p class="text">{{ $langg->lang180 }}</p>
                                                <ul class="social-links">
                                                    @if(App\Models\Socialsetting::find(1)->f_check == 1)
                                                        <li>
                                                            <a href="{{ route('social-provider','facebook') }}">
                                                                <i class="fab fa-facebook-f"></i>
                                                            </a>
                                                        </li>
                                                    @endif
                                                    @if(App\Models\Socialsetting::find(1)->g_check == 1)
                                                        <li>
                                                            <a href="{{ route('social-provider','google') }}">
                                                                <i class="fab fa-google"></i>
                                                            </a>
                                                        </li>
                                                    @endif
                                                </ul>
                                            </div>
                                        @endif
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav-reg" role="tabpanel" aria-labelledby="nav-reg-tab">
                            <div class="login-area signup-area">
                                <div class="header-area">
                                    <h4 class="title">{{ $langg->lang181 }}</h4>
                                </div>
                                <div class="login-form signup-form">
                                    @include('includes.admin.form-login')
                                    <form action="{{route('user-register-submit')}}" method="POST">
                                        {{ csrf_field() }}

                                        <div class="form-input">
                                            <input type="text" class="User Name" name="name"
                                                   placeholder="{{ $langg->lang182 }}" required="" value="{{old('name')}}">
                                            <i class="icofont-user-alt-5"></i>
                                        </div>

                                        <div class="form-input">
                                            <input type="email" class="User Name" name="email"
                                                   placeholder="{{ $langg->lang183 }}" required="" value="{{old('email')}}">
                                            <i class="icofont-email"></i>
                                        </div>

                                        <div class="form-input">
                                            <input type="text" class="User Name" name="phone"
                                                   placeholder="{{ $langg->lang184 }}" required="" value="{{old('phone')}}">
                                            <i class="icofont-phone"></i>
                                        </div>

                                        <div class="form-input">
                                            <input type="text" class="User Name" name="address"
                                                   placeholder="{{ $langg->lang185 }}" required="" value="{{old('address')}}">
                                            <i class="icofont-location-pin"></i>
                                        </div>

                                        <div class="form-input">
                                            <input type="password" class="Password show-reg-pass" name="password"
                                                   placeholder="{{ $langg->lang186 }}"
                                                   required="" id="pass2">
                                            <i class="icofont-ui-password"></i>
                                        </div>

                                        <div class="form-input">
                                            <input type="password" class="Password show-reg-pass" name="password_confirmation"
                                                   placeholder="{{ $langg->lang187 }}" required="" id="passc">
                                            <i class="icofont-ui-password"></i>
                                        </div>
                                        <div class="form-forgot-pass">
                                            <div class="left">
                                                <input type="checkbox" id="show1"  onclick="showPassword()">
                                                <label for="show1">Show Password</label>
                                            </div>
                                        </div>

                                        @if($gs->is_capcha == 1)

                                            <ul class="captcha-area">
                                                <li>
                                                    <p><img class="codeimg1"
                                                            src="{{asset("assets/images/capcha_code.png")}}" alt=""> <i
                                                            class="fas fa-sync-alt pointer refresh_code "></i></p>
                                                </li>
                                            </ul>

                                            <div class="form-input">
                                                <input type="text" class="Password" name="codes"
                                                       placeholder="{{ $langg->lang51 }}" required="">
                                                <i class="icofont-refresh"></i>
                                            </div>

                                        @endif

                                        <input class="mprocessdata" type="hidden" value="{{ $langg->lang188 }}">
                                        <button type="submit" class="submit-btn">{{ $langg->lang189 }}</button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>


@endsection
@section('scripts')
    <script>
        function myFunction() {
            var x = document.getElementById("pass");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
        function showPassword() {
            var x = document.getElementById("pass2");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
            var y = document.getElementById("passc");
            if (y.type === "password") {
                y.type = "text";
            } else {
                y.type = "password";
            }
        }

    </script>
@endsection
