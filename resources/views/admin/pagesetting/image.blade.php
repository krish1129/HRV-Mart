@extends('layouts.admin')
@section('content')

    <div class="content-area">
        <div class="mr-breadcrumb">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="heading">{{ __('Top Banner') }} </h4>
                    <ul class="links">
                        <li>
                            <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                        </li>
                        <li>
                            <a href="javascript:;">{{ __('Home Page Settings') }} </a>
                        </li>
                        <li>
                            <a href="{{ route('admin.image') }}">{{ __('Top Banner') }} </a>
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
                            <form id="" action="{{ route('admin.image.update') }}" method="POST" enctype="multipart/form-data">
                                @csrf

                                {{--@include('includes.admin.form-both')--}}

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading"> {{ __('Top Image1') }} *</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="img-upload">
                                           {{-- <div id="image-preview" class="img-preview" style="background: url({{asset('assets/images/image/'.$data->image1) }});">
                                                <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i>{{ __('Upload Image') }}</label>
                                                <input type="file" name="image1" class="img-upload" id="image-upload">
                                            </div>--}}
                                            <input type="file" name="image1" class="img-upload">
                                            <img src="{{asset('assets/images/image/'.$data->image1) }}" alt="">
                                            <span class="text-muted">Prefered Size: (626 x 364) Sized Image</span>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Url1') }} *</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="url1" placeholder="{{ __('url') }}" required="" value="{{$data->url1}}">
                                    </div>
                                </div>




                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading"> {{ __('Top Image2') }} *</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="img-upload">
                                            <input type="file" name="image2" class="img-upload">
                                            <img src="{{asset('assets/images/image/'.$data->image2) }}" alt="">
                                            <span class="text-muted">Prefered Size: (626 x 364) Sized Image</span>
                                            {{--  <div id="image-preview" class="img-preview" style="background: url({{asset('assets/images/image/'.$data->image2) }});">
                                                  <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i>{{ __('Upload Image') }}</label>
                                                  <input type="file" name="image2" class="img-upload" id="image-upload">
                                              </div>--}}

                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Url2') }} *</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="url2" placeholder="{{ __('Url') }}" required="" value="{{$data->url2}}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading"> {{ __('Top Image3') }} *</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="img-upload">
                                            <input type="file" name="image3" class="img-upload">
                                            <img src="{{asset('assets/images/image/'.$data->image3) }}" alt="">
                                            <span class="text-muted">Prefered Size: (626 x 364) Sized Image</span>
                                            {{--<div id="image-preview" class="img-preview" style="background: url({{asset('assets/images/image/'.$data->image3) }});">
                                                <label for="image-upload" class="img-label" id="image-label"><i class="icofont-upload-alt"></i>{{ __('Upload Image') }}</label>
                                                <input type="file" name="image3" class="img-upload" id="image-upload">
                                            </div>--}}

                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="left-area">
                                            <h4 class="heading">{{ __('Url3') }} *</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <input type="text" class="input-field" name="url3" placeholder="{{ __('Url') }}" required="" value="{{$data->url3}}">
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
