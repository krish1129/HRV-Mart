@extends('layouts.admin')

@section('content')
    <div class="content-area">
        <div class="container-fluid">
            <div class="mr-breadcrumb">
                <div class="row">
                    <div class="col-lg-12">
                        <h4 class="heading">{{ __('Help Number') }} </h4>
                        <ul class="links">
                            <li>
                                <a href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }} </a>
                            </li>
                            <li>
                                <a href="{{ route('admin.contact') }}">{{ __('Number') }} </a>
                            </li>
                            <li>
                                <a href="javascript:void()">{{ __('Edit') }} </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- data table start -->
            <div class="form_section">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 mx-auto">
                        <div class="card card-body pt-3">
                            @if (session('message'))
                            <div class="alert alert-success alert-dismissible fade show my-2" role="alert">
                                {{ session('message') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                            @endif
                            <form action="{{route('admin.contact.edit',$contact->id)}}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                            <label for="name"><span class="font-weight-bold">Title</span><sup
                                                    class="text-danger">*</sup></label>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            <input type="text" class="form-control" name="title" value="{{$contact->title}}"
                                                   title="Title" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                            <label for="name"><span class="font-weight-bold">Phone</span><sup
                                                    class="text-danger">*</sup></label>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            <input type="text" class="form-control" name="phone" value="{{$contact->phone}}"
                                                   title="Phone" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                            <label for="name"><span class="font-weight-bold">Facebook</span><sup
                                                    class="text-danger">*</sup></label>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            <input type="text" class="form-control" name="facebook" value="{{$contact->facebook}}"
                                                   title="Facebook" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                            <label for="name"><span class="font-weight-bold">Whatsapp</span><sup
                                                    class="text-danger">*</sup></label>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            <input type="text" class="form-control" name="whatsapp" value="{{$contact->whatsapp}}"
                                                   title="Whatsapp" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                            <label for="name"><span class="font-weight-bold">Imo</span><sup
                                                    class="text-danger">*</sup></label>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            <input type="text" class="form-control" name="imo" value="{{$contact->imo}}"
                                                   title="Imo" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                            <label for="name"><span class="font-weight-bold">Viber</span><sup
                                                    class="text-danger">*</sup></label>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            <input type="text" class="form-control" name="viber" value="{{$contact->viber}}"
                                                   title="Viber" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                            <label for="name"><span class="font-weight-bold">Instagram</span><sup
                                                    class="text-danger">*</sup></label>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            <input type="text" class="form-control" name="instagram" value="{{$contact->instagram}}"
                                                   title="instagram" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                            <label for="name"><span class="font-weight-bold">Twitter</span><sup
                                                    class="text-danger">*</sup></label>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            <input type="text" class="form-control" name="twitter" value="{{$contact->twitter}}"
                                                   title="twitter" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                            <label for="name"><span class="font-weight-bold">Linkedin</span><sup
                                                    class="text-danger">*</sup></label>
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            <input type="text" class="form-control" name="linkedin" value="{{$contact->linkedin}}"
                                                   title="linkedin" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-3 col-md-3 text-lg-right text-md-right">
                                        </div>
                                        <div class="col-xl-9 col-lg-9 col-md-9">
                                            {{--<input type="submit" class="btn btn-primary" value="Submit">--}}
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end -->
        </div>
    </div>

@endsection
