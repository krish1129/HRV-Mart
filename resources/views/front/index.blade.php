@extends('layouts.front')

@section('content')

	@if($ps->slider == 1)

		@if(count($sliders))
			@include('includes.slider-style')
		@endif
	@endif

    <div class="container-fluid mt-3 mt-lg-0">
        <div class="row">
            <div class="col-lg-12">
                @if($ps->slider == 1)
                   <!-- Hero Area Start -->
                   <div class="hero-area">
                       @if($ps->slider == 1)
                           @if(count($sliders))
                               <div class="hero-area-slider">
                                   <div class="slide-progress"></div>
                                   <div class="intro-carousel">
                                       @foreach($sliders as $data)
                                           <div class="p-5 intro-content {{$data->position}}" style="background-image: url({{asset('assets/images/sliders/'.$data->photo)}})">
                                               <div class="container-fluid">
                                                   <div class="row">
                                                       <div class="col-lg-12">
                                                           <div class="slider-content">
                                                               <!-- layer 1 -->
                                                               <div class="layer-1">
                                                                   <h4 style="font-size: {{$data->subtitle_size}}px; color: {{$data->subtitle_color}}" class="subtitle subtitle{{$data->id}}" data-animation="animated {{$data->subtitle_anime}}">{{$data->subtitle_text}}</h4>
                                                                   <h2 style="font-size: {{$data->title_size}}px; color: {{$data->title_color}}" class="title title{{$data->id}}" data-animation="animated {{$data->title_anime}}">{{$data->title_text}}</h2>
                                                               </div>
                                                               <!-- layer 2 -->
                                                               <div class="layer-2">
                                                                   <p style="font-size: {{$data->details_size}}px; color: {{$data->details_color}}"  class="text text{{$data->id}}" data-animation="animated {{$data->details_anime}}">{{$data->details_text}}</p>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div>
                                               </div>
                                           </div>
                                       @endforeach
                                   </div>
                               </div>
                           @endif

                       @endif

                   </div>
                   <!-- Hero Area End -->
                    @endif
            </div>
            {{-- <div class="col-lg-2 mt-lg-0 mt-3">
                <div class="row">
                    <div class="col-4 col-lg-12">
                        <a class="banner-effect" href="{{$image->url1}}" target="_blank">
                            <img class="sm__banner" src="{{asset('assets/images/image/'.$image->image1)}}" alt="">
                        </a>
                    </div>
                    <div class="col-4 col-lg-12 mt-lg-3">
                        <a class="banner-effect" href="{{$image->url2}}" target="_blank">
                            <img class="sm__banner" src="{{asset('assets/images/image/'.$image->image2)}}" alt="">
                        </a>
                    </div>
                    <div class="col-4 col-lg-12 mt-lg-3">
                        <a class="banner-effect" href="{{$image->url3}}" target="_blank">
                            <img class="sm__banner" src="{{asset('assets/images/image/'.$image->image3)}}" alt="">
                        </a>
                    </div>
                </div>
            </div> --}}
        </div>
    </div>

	@if($ps->featured_category == 1)

	{{-- Slider buttom Category Start --}}
	<section class="slider-buttom-category d-none d-md-block p-2">
		<div class="container-fluid"><div class="row">
            <div class="col-lg-12 px-1">
                <div class="section-top">
                    <h2 class="section-title">
                        {{ $langg->lang14 }}
                    </h2>
                </div>
            </div>
        </div>
			<div class="row">
				@foreach($categories->where('is_featured','=',1) as $cat)
					<div class="col-xl-3 col-lg-3 col-md-4 sc-common-padding">
						<a href="{{ route('front.category',$cat->slug) }}" class="single-category">
							<div class="right">
								<img src="{{asset('assets/images/categories/'.$cat->image) }}" alt="">
							</div>
							<div class="left">
								<h5 class="title">
                                    @if(isJSON($cat->name)){{json_decode($cat->name,true)[$langg->id]}}@else {{$cat->name}} @endif
								</h5>
								<p class="count">
									{{ count($cat->products) }} {{ $langg->lang4 }}
								</p>
							</div>
						</a>
					</div>
				@endforeach
			</div>
		</div>
	</section>
	{{-- Slider buttom banner End --}}

	@endif

    @if($ps->featured_category == 1)
    <section class="mt-4 d-lg-none d-md-none d-block">
        <div class="container-fluid">
            <div class="hr_slider">
                @foreach($categories->where('is_featured','=',1) as $cat)
                <a href="{{ route('front.category',$cat->slug) }}">
                    <div class="box">
                        <div class="img">
                            <img width="45" src="{{asset('assets/images/categories/'.$cat->image) }}" alt="img">
                        </div>
                        <div class="text">
                            <span>@if(isJSON($cat->name)){{json_decode($cat->name,true)[$langg->id]}}@else {{$cat->name}} @endif</span>
                        </div>
                    </div>
                </a>
                @endforeach
            </div>
        </div>
    </section>
    @endif


	@if($ps->featured == 1)
		<!-- Trending Item Area Start -->
		<section  class="trending p-2">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 px-1">
						<div class="section-top">
							<h2 class="section-title">
								{{ $langg->lang26 }}
							</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
                        {{-- ajax load product --}}
                        @csrf
                        <div id="post_data"></div>
                        {{-- ajax load product --}}
					</div>

				</div>
			</div>
		</section>
		<!-- Tranding Item Area End -->
	@endif

	@if($ps->small_banner == 1)

		<!-- Banner Area One Start -->
		<section class="banner-section p-2">
			<div class="container-fluid">
				@foreach($top_small_banners->chunk(2) as $chunk)
					<div class="row">
						@foreach($chunk as $img)
							<div class="col-lg-6 remove-padding">
								<div class="left">
									<a class="banner-effect" href="{{ $img->link }}" target="_blank">
										<img src="{{asset('assets/images/banners/'.$img->photo)}}" alt="">
									</a>
								</div>
							</div>
						@endforeach
					</div>
				@endforeach
			</div>
		</section>
		<!-- Banner Area One Start -->
	@endif

	<section id="extraData" class="p-2">
		<div class="text-center">
			<img src="{{asset('assets/images/'.$gs->loader)}}">
		</div>
	</section>


@endsection

@section('scripts')
	<script>
        $(window).on('load',function() {

            setTimeout(function(){

                $('#extraData').load('{{route('front.extraIndex')}}');

            }, 500);
        });

	</script>
@endsection


