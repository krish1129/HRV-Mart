@extends('layouts.load')

@section('content')

            <div class="content-area">

              <div class="add-product-content1">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="product-description">
                      <div class="body-area">
                        @include('includes.admin.form-error')
                      <form id="geniusformdata" action="{{route('admin-subcat-update',$data->id)}}" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __("Category") }}*</h4>
                            </div>
                          </div>
                          <div class="col-lg-7">
                              <select name="category_id" required="">
                                  <option value="">{{ __("Select Category") }}</option>
                                    @foreach($cats as $cat)
                                      <option value="{{ $cat->id }}" {{ $data->category_id == $cat->id ? 'selected' :'' }}>@if(isJSON($cat->name)){{json_decode( $cat->name,true)[$alang->id]}}@else {{$cat->name}} @endif</option>
                                    @endforeach
                                </select>
                          </div>
                        </div>


                          @foreach($languages as $language)
                              <div class="row">
                                  <div class="col-lg-4">
                                      <div class="left-area">
                                          <h4 class="heading">{{ __('Name') }} *</h4>
                                          <p class="sub-heading">{{ __('(In '.$language->language.')') }}</p>
                                      </div>
                                  </div>
                                  <div class="col-lg-7">
                                      <input type="text" class="input-field" name="name[{{$language->id}}]"
                                             placeholder="{{ __('Enter (In '.$language->language.')') }}" required=""
                                             value="@if(isJSON($data->name)){{json_decode($data->name,true)[$language->id]}}@else {{$data->name}} @endif">
                                  </div>
                              </div>
                          @endforeach

                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">
                                <h4 class="heading">{{ __("Slug") }} *</h4>
                                <p class="sub-heading">(In English)</p>
                            </div>
                          </div>
                          <div class="col-lg-7">
                            <input type="text" class="input-field" name="slug" placeholder="{{ __("Enter Slug") }}" required="" value="{{$data->slug}}">
                          </div>
                        </div>

                        <br>
                        <div class="row">
                          <div class="col-lg-4">
                            <div class="left-area">

                            </div>
                          </div>
                          <div class="col-lg-7">
                            <button class="addProductSubmit-btn" type="submit">{{ __("Save") }}</button>
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
