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
                        </ul>
                    </div>
                </div>
            </div>
            <!-- data table start -->
            <div class="card">
                <div class="card-body">
                    <a href="{{ route('admin.contact.create') }}" class="btn btn-primary float-right my-2">Create</a>
                    <div class="data_table my-4">
                        @if (session('message'))
                            <div class="alert alert-success alert-dismissible fade show my-2" role="alert">
                                {{ session('message') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                            @endif
                        <div class="content_section">
                            <table id="example" class="table table-striped table-bordered table-responsive" style="width:100%">
                                <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Title</th>
                                    <th>Phone</th>
                                    <th>Facebook</th>
                                    <th>Whatsapp</th>
                                    <th>Imo</th>
                                    <th>Viber</th>
                                    <th>Instagram</th>
                                    <th>Twitter</th>
                                    <th>Linkedin</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($contacts as $key => $contact)
                                    <tr>
                                        <td>{{$key+1}}</td>
                                        <td>{{$contact->title}}</td>
                                        <td>{{$contact->phone}}</td>
                                        <td>{{$contact->facebook}}</td>
                                        <td>{{$contact->whatsapp}}</td>
                                        <td>{{$contact->imo}}</td>
                                        <td>{{$contact->viber}}</td>
                                        <td>{{$contact->instagram}}</td>
                                        <td>{{$contact->twitter}}</td>
                                        <td>{{$contact->linkedin}}</td>

                                        <td>
                                            <div class="d-flex">
                                                <a href="{{route('admin.contact.edit',$contact->id)}}" class="text-primary"
                                                    title="Edit"><i class="far fa-edit"></i></a>
                                                    <a href="{{route('admin.contact.delete',$contact->id)}}" class="text-danger"
                                                    onclick="return confirm('Are you sure you want to delete?');" title="Delete"><i
                                                            class="far fa-trash-alt"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end -->
        </div>
    </div>
@endsection
