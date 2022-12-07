@extends('layouts.front')
@section('content')

<!-- Breadcrumb Area Start -->
<div class="breadcrumb-area">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12">
        <ul class="pages">
          <li>
            <a href="{{ route('front.index') }}">
              {{ $langg->lang17 }}
            </a>
          </li>
          <li>
            <a href="{{ route('front.faq') }}">
              {{ $langg->lang19 }}
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Breadcrumb Area End -->



  <!-- faq Area Start -->
  <section class="faq-section pb-0">
    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
        <div class="card">
          <div class="card-header text-center">
            <h5 class="card-title mb-0">Contact Information</h5>
          </div>
          <div class="card-body text-left">
              @foreach($contacts as $contact)
            <div class="my-2">
              <h5>{{$contact->title}}</h5>
              <h6 class="text-danger">{{$contact->phone}}</h6>
              <div class="nmb_link">
                <a href="{{$contact->facebook}}"><i class="fab fa-facebook-f"></i> Facebook</a>
                <a href="{{$contact->whatsapp}}"><i class="fab fa-whatsapp"></i> Whatsapp</a>
                <a href="{{$contact->imo}}"><i class="fab fa-whatsapp"></i> Imo</a>
                <a href="{{$contact->viber}}"><i class="fab fa-viber"></i> Viber</a>
                <a href="{{$contact->instagram}}"><i class="fab fa-instagram"></i> Instagram</a>
                <a href="{{$contact->twitter}}"><i class="fab fa-twitter"></i> Twitter</a>
                <a href="{{$contact->linkedin}}"><i class="fab fa-linkedin"></i> Linkedin</a>
              </div>
            </div>

              @endforeach

          </div>
        </div>
        </div>
      </div>
    </div>
  </section>
  <!-- faq Area End-->

  <!-- faq Area Start -->
  <section class="faq-section">
    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
          <div id="accordion">

            @foreach($faqs as $fq)
            <h3 class="heading">{{ $fq->title }}</h3>
            <div class="content">
                <p>{!! $fq->details !!}</p>
            </div>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- faq Area End-->

@endsection
