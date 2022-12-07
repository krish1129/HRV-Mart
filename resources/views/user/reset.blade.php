@extends('layouts.front')
@section('content')

<section class="user-dashbord">
    <div class="container-fluid">
      <div class="row">
        @include('includes.user-dashboard-sidebar')
                <div class="col-lg-9">
                    <div class="user-profile-details">
                        <div class="account-info">
                            <div class="header-area">
                                <h4 class="title">
                                    {{ $langg->lang272 }}
                                </h4>
                            </div>
                            <div class="edit-info-area">

                                <div class="body">
                                        <div class="edit-info-area-form">
                                                <div class="gocover" style="background: url({{ asset('assets/images/'.$gs->loader) }}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
                                                <form id="userform" action="{{route('user-reset-submit')}}" method="POST" enctype="multipart/form-data">
                                                    {{ csrf_field() }}
                                                    @include('includes.admin.form-both')
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                                <input type="password" name="cpass" id="cpass"  class="input-field" placeholder="{{ $langg->lang273 }}" value="" required="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                                <input type="password" name="newpass" id="newpass" class="input-field" placeholder="{{ $langg->lang274 }}" value="" required="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                                <input type="password" name="renewpass" id="renewpass"  class="input-field" placeholder="{{ $langg->lang275 }}" value="" required="">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <input type="checkbox" id="show1"  onclick="showPassword()">
                                                            <label for="show1">Show Password</label>
                                                        </div>
                                                    </div>

                                                        <div class="form-links">
                                                            <button class="submit-btn" type="submit">{{ $langg->lang276 }}</button>
                                                        </div>
                                                </form>
                                            </div>
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
        function showPassword() {
            var x = document.getElementById("cpass");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
            var y = document.getElementById("newpass");
            if (y.type === "password") {
                y.type = "text";
            } else {
                y.type = "password";
            }
            var z = document.getElementById("renewpass");
            if (z.type === "password") {
                z.type = "text";
            } else {
                z.type = "password";
            }
        }

    </script>
@endsection
