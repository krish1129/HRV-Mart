@extends('layouts.admin')
@section('content')

						<div class="content-area">
							<div class="mr-breadcrumb">
								<div class="row">
									<div class="col-lg-12">
											<h4 class="heading">{{ __('Change Password') }}</h4>
											<ul class="links">
												<li>
													<a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
												</li>
												<li>
													<a href="{{ route('admin.password') }}">{{ __('Change Password') }} </a>
												</li>
											</ul>
									</div>
								</div>
							</div>
							<div class="add-product-content1">
								<div class="row">
									<div class="col-lg-12">
										<div class="product-description">
											<div class="body-area">

				                        <div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
											<form id="geniusform" action="{{ route('admin.password.update') }}" method="POST" enctype="multipart/form-data">
												{{csrf_field()}}

                        @include('includes.admin.form-both')

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __('Current Password') }} *</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="password" id="pass" class="input-field" name="cpass" placeholder="Enter Current Password" required="" value="">
													</div>
												</div>


												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __('New Password') }} *</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="password" id="pass2" class="input-field" name="newpass" placeholder="Enter New Password" required="" value="">
													</div>
												</div>

												<div class="row">
													<div class="col-lg-4">
														<div class="left-area">
																<h4 class="heading">{{ __('Re-Type New Password') }} *</h4>
														</div>
													</div>
													<div class="col-lg-7">
														<input type="password" id="passc" class="input-field" name="renewpass" placeholder="{{ __('Re-Type New Password') }}" required="" value="">
													</div>
												</div>
                                                <div class="row">
													<div class="col-lg-4">
														<div class="left-area">
{{--																<h4 class="heading">{{ __('Re-Type New Password') }} *</h4>--}}
														</div>
													</div>
													<div class="col-lg-7">
                                                        <div class="form-forgot-pass">
                                                            <div class="left">
                                                                <input type="checkbox" id="show1"  onclick="showPassword()">
                                                                <label for="show1">Show Password</label>
                                                            </div>
                                                        </div>
													</div>
												</div>


						                        <div class="row">
						                          <div class="col-lg-4">
						                            <div class="left-area">

						                            </div>
						                          </div>
						                          <div class="col-lg-7">
						                            <button class="addProductSubmit-btn" type="submit">{{ __('Save') }}</button>
						                          </div>
						                        </div>

											</form>


											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

@endsection

@section('scripts')
    <script>
        function showPassword() {
            var z = document.getElementById("pass");
            if (z.type === "password") {
                z.type = "text";
            } else {
                z.type = "password";
            }
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
