<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @if(isset($page->meta_tag) && isset($page->meta_description))
        <meta name="keywords" content="{{ $page->meta_tag }}">
        <meta name="description" content="{{ $page->meta_description }}">
        <title>{{$gs->title}}</title>
    @elseif(isset($blog->meta_tag) && isset($blog->meta_description))
        <meta name="keywords" content="{{ $blog->meta_tag }}">
        <meta name="description" content="{{ $blog->meta_description }}">
        <title>{{$gs->title}}</title>
    @elseif(isset($productt))
        <meta name="keywords" content="{{ !empty($productt->meta_tag) ? implode(',', $productt->meta_tag ): '' }}">
        <meta name="description"
              content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}">
        <meta property="og:title" content="{{$productt->name}}"/>
        <meta property="og:description"
              content="{{ $productt->meta_description != null ? $productt->meta_description : strip_tags($productt->description) }}"/>
        <meta property="og:image" content="{{asset('assets/images/thumbnails/'.$productt->thumbnail)}}"/>
        <meta name="author" content="HRV Bytes">
        <title>@if(isJSON($productt->name)){{ substr(json_decode($productt->name,true)[$langg->id], 0,11)."-"}}@else {{substr($productt->name, 0,11)."-"}} {{$gs->title}}  @endif</title>
    @else
        <meta name="keywords" content="{{ $seo->meta_keys }}">
        <meta name="author" content="HRV Bytes">
        <title>{{$gs->title}}</title>
    @endif
<!-- favicon -->
    <link rel="icon" type="image/x-icon" href="{{asset('assets/images/'.$gs->favicon)}}"/>


    @if($langg->rtl == "1")

    <!-- stylesheet -->
        <link rel="stylesheet" href="{{asset('assets/front/css/rtl/all.css')}}">

        <!--Updated CSS-->
        <link rel="stylesheet"
              href="{{ asset('assets/front/css/rtl/styles.php?color='.str_replace('#','',$gs->colors).'&'.'header_color='.str_replace('#','',$gs->header_color).'&'.'footer_color='.str_replace('#','',$gs->footer_color).'&'.'copyright_color='.str_replace('#','',$gs->copyright_color).'&'.'menu_color='.str_replace('#','',$gs->menu_color).'&'.'menu_hover_color='.str_replace('#','',$gs->menu_hover_color)) }}">
    @else

    <!-- stylesheet -->
        <link rel="stylesheet" href="{{asset('assets/front/css/all.css')}}">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/font-awesome-line-awesome/css/all.min.css">

        <!--Updated CSS-->
        <link rel="stylesheet"
              href="{{ asset('assets/front/css/styles.php?color='.str_replace('#','',$gs->colors).'&'.'header_color='.str_replace('#','',$gs->header_color).'&'.'footer_color='.str_replace('#','',$gs->footer_color).'&'.'copyright_color='.str_replace('#','',$gs->copyright_color).'&'.'menu_color='.str_replace('#','',$gs->menu_color).'&'.'menu_hover_color='.str_replace('#','',$gs->menu_hover_color)) }}">
    @endif

    <style>
        .float{
            position:fixed;
            width:200px;
            height:45px;
            bottom:0;
            right:0;
            background-color:{{$gs->colors}};
            color:#FFF;
            border-top-left-radius: 5px;
            border-top-right-radius: 5px;
            text-align:center;
            box-shadow: 2px 2px 3px #999;
        }
        button.search_bttn {
            border-radius: 10px !important;
        }
         .play_store.notification > ul > li {
             border-radius: 0;
             margin-top: 1px;
         }
            .play_store.notification > ul > li {
                border-radius: 0;
                margin-top: 1px;
            }

            .disclaimer-container {
                display: none;
                position: fixed;
                top: 0;
                z-index: 9999;
                width: 100%;
            }
            .disclaimer-container.show {
                display: block;
            }
        .mlinks ul li{
            list-style: disc inside !important;
        }

        .mlinks ol li{
            list-style: decimal inside !important;
        }
    </style>

    @yield('styles')

</head>

<body>

@if($gs->is_loader == 1)
@endif

@if($gs->is_popup== 1)

    @if(isset($visited))
        <div style="display:none">
            <img src="{{asset('assets/images/'.$gs->popup_background)}}">
        </div>

        <!--  Starting of subscribe-pre-loader Area   -->
        <div class="subscribe-preloader-wrap" id="subscriptionForm" style="display: none;">
            <div class="subscribePreloader__thumb"
                 style="background-image: url({{asset('assets/images/'.$gs->popup_background)}});">
                <span class="preload-close"><i class="fas fa-times"></i></span>
                <div class="subscribePreloader__text text-center">
                    <h1>{{$gs->popup_title}}</h1>
                    <p>{{$gs->popup_text}}</p>
                    <form action="{{route('front.subscribe')}}" id="subscribeform" method="POST">
                        {{csrf_field()}}
                        <div class="form-group">
                            <input type="email" name="email" placeholder="{{ $langg->lang741 }}" required="">
                            <button id="sub-btn" type="submit">{{ $langg->lang742 }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--  Ending of subscribe-pre-loader Area   -->

    @endif

@endif


{{-- SIDEBAR CATEGORY --}}
<div class="row">
    <div id="cate_sidebar" class="col-lg-3 pl-lg-0 pr-lg-2 side_nav d-block d-lg-none">
        <!--categorie menu start-->
        <div class="cate__start border">
            <div class="categories_title p-2 d-flex justify-content-between align-items-center">
                <h2 class="categori_toggle"> {{ $langg->lang14 }}</h2>
                <span onclick="layout()" class="text-white px-2"><i class="fas fa-times"></i></span>
            </div>
            <div class="card cate_area rounded-0 pt-0 mt-0">
                <?php
                $i = 1;
                ?>
                @foreach($categories as $category)
                @if(count($category->subs) > 0)
                <div class="drp">
                    <!-- Toogle Buttons -->
                    <button type="button" id="toggle-btn"
                    data-toggle="collapse" data-target="#toggle-example{{ $i}}">
                    <span class="mr-2"><img width="20" height="20" src="{{ asset('assets/images/categories/'.$category->photo) }}" alt="img"></span>
                    @if(isJSON($category->name)){{json_decode($category->name,true)[$langg->id]}}@else {{$category->name}} @endif
                    @if(count($category->subs) > 0)
                    <span class="cate_arrow"><i class="fas fa-angle-down"></i></span>
                    @endif
                    </button>
                    <div id="toggle-example{{ $i }}" class="collapse in">
                    @foreach($category->subs as $subcat)
                        <div class="sub_cat">
                            <a href="{{ route('front.subcat',['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug]) }}"><span><i class="fas fa-angle-double-right"></i></span>
                            @if(isJSON($subcat->name)){{json_decode($subcat->name,true)[$langg->id]}}@else {{$subcat->name}} @endif
                        </a>
                            <ul>
                            @foreach($subcat->childs as $childcat)
                                <li><a href="{{ route('front.childcat',['slug1' => $childcat->subcategory->category->slug, 'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug]) }}">
                                @if(isJSON($childcat->name)){{json_decode($childcat->name,true)[$langg->id]}}@else {{$childcat->name}} @endif
                            </a>
                        </li>
                                @endforeach
                            </ul>
                        </div>
                        @endforeach
                    </div>
                </div>
                <span class="d-none">{{ $i++ }}</span>
                @else
                <a href="{{ route('front.category',$category->slug) }}">
                    <span class="mr-1"><img width="20" height="20" src="{{ asset('assets/images/categories/'.$category->photo) }}" alt="img"></span>
                    @if(isJSON($category->name)){{json_decode($category->name,true)[$langg->id]}}@else {{$category->name}} @endif
                </a>
                @endif
                @endforeach
            </div>
        </div>
        <!--categorie menu end-->
    </div>
</div>
{{-- SIDEBAR CATEGORY END--}}

{{-- bottom nav --}}
<div class="bottom_nav d-lg-none">
    <div class="container-fluid">
        <div class="nav_item">
            <div class="single_item">
                <a href="{{ route('front.index') }}"><i class="fas fa-home"></i></a>
                <p class="mb-0">{{ $langg->lang17 }}</p>
            </div>
            <div class="single_item">
                @if($gs->reg_vendor == 1)
                @if(Auth::check())
                        @if(Auth::guard('web')->user()->is_vendor == 2)
                            <a href="{{ route('vendor-dashboard') }}"><i class="fas fa-hand-holding-usd"></i></a>
                            <p class="mb-0">{{ $langg->lang220 }}</p>
                        @else
                            <a href="{{ route('user-package') }}"><i class="fas fa-hand-holding-usd"></i></a>
                            <p class="mb-0">{{ $langg->lang220 }}</p>
                        @endif
                        @else
                            <a href="javascript:;" data-toggle="modal" data-target="#vendor-login"><i class="fas fa-hand-holding-usd"></i></a>
                            <p class="mb-0">{{ $langg->lang220 }}</p>
                        @endif
                        @endif
            </div>
            <div class="single_item">
                <a href="javascript:;" data-toggle="modal" data-target="#track-order-modal" class="track-btn"><i class="fas fa-truck"></i></a>
                <p class="mb-0">{{ $langg->lang16 }}</p>
            </div>
            <div class="single_item">
                <a href="{{ route('front.cart') }}"><i class="fas fa-shopping-cart"></i></a>
                <span class="bottom-qty" id="scrool-cout">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
                <p class="mb-0">{{ $langg->lang121 }}</p>
            </div>
            <div class="single_item">
                <a href="javascript:;" onclick="sidebarOpen()"><i class="fas fa-ellipsis-h"></i></a>
                <p class="mb-0">More</p>
            </div>
        </div>
    </div>
</div>
{{-- bottom nav end--}}

<script>
    function sidebarOpen() {
        var sidebar = document.getElementById('right_sidebar');
        sidebar.classList.add('open-sidebar');
    }

    function closeBtn() {
        var sidebar = document.getElementById('right_sidebar');
        sidebar.classList.remove('open-sidebar');
    }
</script>

{{-- menu sidebar --}}
<div id="right_sidebar" class="other_sidebar d-lg-none">
    <div class="close__btn">
        <button onclick="closeBtn()" class="btn btn-lg bg-transparent border-0"><i class="fas fa-times"></i></button>
    </div>
    <div class="row">
        <div class="col-10 col-sm-6 col-md-6 mx-auto">
            <div class="sidebar_box">
                <div class="side_logo text-center mt-4">
                    <a href="{{ route('front.index') }}">
                        <img src="{{asset('assets/images/'.$gs->logo)}}" alt="">
                    </a>
                </div>
                <div class="lang">
                    @if($gs->is_language == 1)
                    @foreach(DB::table('languages')->get() as $language)
                            <a href="{{route('front.language',$language->id)}}">{{$language->language}}</a>
                        @endforeach
                    @endif
                </div>
                <section class="logo-header top-header bg-transparent mt-3">
                    <div class="container-fluid">
                        <div class="row ">
                            <div class="col-12 order-last order-sm-2 order-md-2">
                                <div class="search-box-wrapper d-flex justify-content-center align-items-center mb-lg-0 mb-md-0 mb-sm-0 mb-3">
                                    <div class="search-box">
                                        <form id="searchForm" class="search-form"
                                              action="{{ route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')]) }}"
                                              method="GET">
                                            @if (!empty(request()->input('sort')))
                                                <input type="hidden" name="sort" value="{{ request()->input('sort') }}">
                                            @endif
                                            @if (!empty(request()->input('minprice')))
                                                <input type="hidden" name="minprice" value="{{ request()->input('minprice') }}">
                                            @endif
                                            @if (!empty(request()->input('maxprice')))
                                                <input type="hidden" name="maxprice" value="{{ request()->input('maxprice') }}">
                                            @endif
                                            <input type="text"  name="search" placeholder="{{ $langg->lang2 }}"
                                                   value="{{ request()->input('search') }}" autocomplete="off">
                                            <button class="search_bttn" type="submit"><i class="icofont-search-1"></i></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="sidebar_items">
                    @if(!Auth::guard('web')->check())
                    <a href="{{ route('user.login') }}"><i class="fas fa-user"></i> {{ $langg->lang12 }}</a>
                    @else
                    <a data-toggle="collapse" href="#collapseExample" role="button">
                        <i class="fas fa-user"></i> {{ Auth::guard('web')->user()->name }} <span class="ml-2"><i class="fas fa-angle-down"></i></span>
                      </a>
                      <div class="collapse" id="collapseExample">
                        <div class="card rounded-0 border-0 py-1 px-4">
                            <a class="py-1" href="{{ route('user-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang221 }}</a>
                            @if(Auth::user()->IsVendor())
                            <a href="{{ route('vendor-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang222 }}</a>
                            @endif
                            <a class="py-1" href="{{ route('user-profile') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang205 }}</a>
                            <a href="{{ route('user-logout') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang223 }}</a>
                        </div>
                      </div>
                      @endif

                      @if(Auth::guard('web')->check())
                                <a href="{{ route('user-wishlists') }}"><i class="far fa-heart"></i> {{ $langg->lang9 }}</a>
                            @else
                                <a href="javascript:;" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg" class="wish"><i class="fas fa-heart"></i> {{ $langg->lang9 }}</a>
                            @endif
                        <a href="{{ route('product.compare') }}"><i class="fas fa-exchange-alt"></i> {{ $langg->lang10 }}</a>
                        <a href="{{ route('front.contact') }}"><i class="icofont-ui-call"></i>{{ $langg->lang23 }}</a>
                        <a href="{{ route('front.blog') }}"><i class="fas fa-th"></i> {{ $langg->lang18 }}</a>
                        @if($gs->is_faq == 1)
                        <a href="{{ route('front.faq') }}"><i class="fas fa-question"></i>{{ $langg->lang19 }}</a>
                        @endif
                </div>
            </div>
        </div>
    </div>
</div>
{{-- menu sidebar end--}}

{{-- @if($bnner->status == 1)
<div class="disclaimer-container">
	<div class="disclaimer-text">
        <img src="{{ asset('assets/'.$bnner->img) }}" class="img-fluid shadow" alt="img">
    </div>
    <span class="disclaimer-button">x</span>
</div>
@endif --}}

<section class="top-header bg-dark d-lg-block d-none top-nav-fixed">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <ul class="contact__help justify-content-center justify-content-lg-start justify-content-md-start">
                    @if($ps->email != null)
                        <li><a href="mailto:{{$ps->email}}"><i class="far fa-envelope"></i><span class="ml-1">{{$ps->email}}</span></a></li>
                    @endif
                    <li><a href="{{ route('front.faq') }}"><i class="fas fa-headphones-alt"></i><span>Help</span></a></li>
                </ul>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="list d-flex justify-content-center justify-content-lg-center justify-content-md-end">
                    <script>
                    function display_ct6() {
                        var x = new Date()
                        var ampm = x.getHours( ) >= 12 ? ' PM' : ' AM';
                        hours = x.getHours( ) % 12;
                        hours = hours ? hours : 12;
                        var x1=x.getMonth() + 1+ "." + x.getDate() + "." + x.getFullYear();
                        x1 = x1 + " | " +  hours + ":" +  x.getMinutes() + ":" +  x.getSeconds() + ":" + ampm;
                        document.getElementById('ct6').innerHTML = x1;
                        display_c6();
                         }
                         function display_c6(){
                        var refresh=1000; // Refresh rate in milli seconds
                        mytime=setTimeout('display_ct6()',refresh)
                        }
                        display_c6()
                        </script>
                <span class="text-white" id='ct6'></span>
                <span class="text-white" id="weather"> <span class="pr-1"></span>| <i class="fas fa-cloud"></i> Cloud 31°</span>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="list my-2 my-lg-0">
                    <ul class="d-flex justify-content-center justify-content-lg-end">

                        @if($gs->is_language == 1)
                            <li>
                            <select name="language" class="language selectors nice">
                                        @foreach(DB::table('languages')->get() as $language)
                                            <option
                                                value="{{route('front.language',$language->id)}}" {{ Session::has('language') ? ( Session::get('language') == $language->id ? 'selected' : '' ) : (DB::table('languages')->where('is_default','=',1)->first()->id == $language->id ? 'selected' : '') }} >{{$language->language}}</option>
                                        @endforeach
                                    </select>
                            </li>
                        @endif

                        @if($gs->is_currency == 1)
                            <li>
                                <div class="currency-selector mr-3">
                                    <select name="currency" class="currency selectors nice">
                                        @foreach(DB::table('currencies')->get() as $currency)
                                            <option
                                                value="{{route('front.currency',$currency->id)}}" {{ Session::has('currency') ? ( Session::get('currency') == $currency->id ? 'selected' : '' ) : (DB::table('currencies')->where('is_default','=',1)->first()->id == $currency->id ? 'selected' : '') }} >{{$currency->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </li>
                        @endif


                        @if($gs->reg_vendor == 1)
                            <li>
                                @if(Auth::check())
                                    @if(Auth::guard('web')->user()->is_vendor == 2)
                                        <a href="{{ route('vendor-dashboard') }}"
                                           class="sell-btn">{{ $langg->lang220 }}</a>
                                    @else
                                        <a href="{{ route('user-package') }}"
                                           class="sell-btn">{{ $langg->lang220 }}</a>
                                    @endif
                            </li>
                        @else
                            <li>
                                <a href="javascript:;" data-toggle="modal" data-target="#vendor-login"
                                   class="sell-btn">{{ $langg->lang220 }}</a>
                            </li>
                        @endif
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Top Header Area End -->



<div onclick="layout()" id="close_layout" class="d-none"></div>

<script>
    function cateBar() {
        document.getElementById('bar1').classList.add('d-none')
        document.getElementById('bar2').classList.remove('d-none')
        document.getElementById('main-content').classList.add('main__content')
        document.getElementById('footer').classList.add('main__content')
        document.getElementById('sidebar-nav').classList.add('sidebar-navs')
    }
    function cateClose() {
        document.getElementById('bar1').classList.remove('d-none')
        document.getElementById('bar2').classList.add('d-none')
        document.getElementById('main-content').classList.remove('main__content')
        document.getElementById('footer').classList.remove('main__content')
        document.getElementById('sidebar-nav').classList.remove('sidebar-navs')
    }
</script>

<!-- Logo Header Area Start -->
<section class="logo-header top-header border-0 logo-nav-fixed">
    <div class="container-fluid">
        <div class="row ">
            <div class="col-lg-3 col-sm-6 col-5 d-lg-block d-none">
                <div class="logo d-flex align-items-center">
                    <span onclick="cateBar()" id="bar1" class="cate_bars"><img width="40" src="{{ asset('assets/front/svg/list.png') }}" alt="png"></span>
                    <span onclick="cateClose()" id="bar2" class="cate_bars d-none"><img width="35" src="{{ asset('assets/front/svg/close-button.svg') }}" alt="png"></span>
                    <a href="{{ route('front.index') }}">
                        <img src="{{asset('assets/images/'.$gs->logo)}}" alt="">
                    </a>
                </div>
            </div>
            <div class="col-lg-5 col-sm-12 order-last order-sm-2 order-md-2">
                <div class="search-box-wrapper d-flex justify-content-center align-items-center mb-lg-0 mb-md-0 mb-sm-0 mb-3">
                    <div class="side__cate__btn d-lg-none">
                        <button onclick="sidebarClose()" type="button" class="border-0 bg-transparent"><i class="fa fa-bars text-black"></i></button>
                    </div>
                    <div class="search-box">
                        <form id="searchForm" class="search-form"
                              action="{{ route('front.category', [Request::route('category'),Request::route('subcategory'),Request::route('childcategory')]) }}"
                              method="GET">
                            @if (!empty(request()->input('sort')))
                                <input type="hidden" name="sort" value="{{ request()->input('sort') }}">
                            @endif
                            @if (!empty(request()->input('minprice')))
                                <input type="hidden" name="minprice" value="{{ request()->input('minprice') }}">
                            @endif
                            @if (!empty(request()->input('maxprice')))
                                <input type="hidden" name="maxprice" value="{{ request()->input('maxprice') }}">
                            @endif
                            <input type="text" id="prod_name" name="search" placeholder="{{ $langg->lang2 }}"
                                   value="{{ request()->input('search') }}" autocomplete="off">
                            <div class="autocomplete">
                                <div id="myInputautocomplete-list" class="autocomplete-items">
                                </div>
                            </div>
                            <button class="search_bttn" type="submit"><i class="icofont-search-1"></i></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-7 order-lg-last d-flex">
                <div class="helpful-links">
                    <ul class="helpful-links-inner d-lg-block d-none">
                        <li class="my-dropdown">
                            <a href="javascript:;" class="cart carticon">
                                <div class="icon">
                                    <img width="20" src="{{ asset('assets/front/svg/shopping-cart.svg') }}" alt="svg">
                                    <span class="cart-quantity"
                                          id="cart-count">{{ Session::has('cart') ? count(Session::get('cart')->items) : '0' }}</span>
                                </div>
                            </a>
                            <div class="my-dropdown-menu" id="cart-items">
                                @include('load.cart')
                            </div>
                        </li>
                        <li class="wishlist" data-toggle="tooltip" data-placement="top" title="{{ $langg->lang9 }}">
                            @if(Auth::guard('web')->check())
                                <a href="{{ route('user-wishlists') }}" class="wish">
                                    <img width="20" src="{{ asset('assets/front/svg/heart.svg') }}" alt="svg">
                                    <span id="wishlist-count" class="">{{ Auth::user()->wishlistCount() }}</span>
                                </a>
                            @else
                                <a href="javascript:;" data-toggle="modal" id="wish-btn" data-target="#comment-log-reg"
                                   class="wish">
                                   <img width="20" src="{{ asset('assets/front/svg/heart.svg') }}" alt="svg">
                                    <span id="wishlist-count" class="">0</span>
                                </a>
                            @endif
                        </li>
                        @if(!Auth::guard('web')->check())
                        <li class="compare app_store" class="wish compare-product" data-toggle="tooltip" data-placement="top" title="{{ $langg->lang197 }}">
                            <a href="{{ route('user.login') }}" class="wish compare-product">
                                <div class="icon">
                                    <img width="20" src="{{ asset('assets/front/svg/user.svg') }}" alt="svg">
                                </div>
                            </a>
                        </li>
                        @else
                        <li class="compare app_store">
                            <a href="javascript:void()">
                                <div class="icon">
                                    <img width="20" src="{{ asset('assets/front/svg/user.svg') }}" alt="svg">
                                </div>
                            </a>
                            <div class="play_store">
                                <ul>
                                    <li><a href="{{ route('user-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ Auth::user()->name }}</a></li>
                                    <li><a href="{{ route('user-dashboard') }}"><i class="fas fa-angle-double-right"></i> {{ $langg->lang221 }}</a></li>
                                    @if(Auth::user()->IsVendor())
                                    <li>
                                        <a href="{{ route('vendor-dashboard') }}"><i
                                                class="fas fa-angle-double-right"></i> {{ $langg->lang222 }}
                                        </a>
                                    </li>
                                    @endif
                                    <li>
                                        <a href="{{ route('user-profile') }}"><i
                                                class="fas fa-angle-double-right"></i> {{ $langg->lang205 }}
                                        </a>
                                    </li>

                                    <li>
                                        <a href="{{ route('user-logout') }}"><i
                                                class="fas fa-angle-double-right"></i> {{ $langg->lang223 }}
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        @endif
                        <li class="compare app_store">
                            <a href="javascript:void()" class="wish compare-product">
                                <div class="icon">
                                    <img width="20" src="{{ asset('assets/front/svg/smartphone.svg') }}" alt="svg">
                                </div>
                            </a>
                            <div class="play_store play">
                                <ul>
                                    <li><a href="#"><img class="img-fluid" src="{{ asset('assets/playstore/1.png') }}" alt="playstore"></a></li>
                                    <li><a href="#"><img class="img-fluid" src="{{ asset('assets/playstore/2.png') }}" alt="playstore"></a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="compare app_store">
                            <a href="javascript:;" class="wish compare-product">
                                <div class="icon">
                                    <img width="23" src="{{ asset('assets/front/svg/bell.svg') }}" alt="svg">
                                    <span class="noti-quantity">{{ $noti_count }}</span>
                                </div>
                            </a>
                            <div class="play_store notification">
                                <h6>Recent Product</h6>
                                <hr class="m-0 p-0">
                                <ul>
                                    @foreach($ad_product as $row)
                                    @php
                                    $check = \App\Models\Noti::where('session_id',request()->ip())->where('product_id',$row->id)->first();
                                    @endphp
                                    <li style="background-color: {{ !$check ? 'rgb(158 158 158 / 23%)':'' }}"><a href="{{ route('front.product', $row->slug) }}"><img class="img-fluid rounded-circle" src="{{ $row->thumbnail ? asset('assets/images/thumbnails/'.$row->thumbnail):asset('assets/images/noimage.png') }}" alt="" style="width: 20px; margn: auto">
                                            @if(isJSON($row->name)){{json_decode($row->name,true)[$langg->id]}}@else {{$row->name}} @endif
                                        <span class="min-ago text-primary">{{$row->created_at->diffForHumans()}}</span>
                                    </a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </li>
                        <li class="compare" data-toggle="tooltip" data-placement="top" title="{{ $langg->lang16 }}">
                            <a href="javascript:;" data-toggle="modal" data-target="#track-order-modal" class="wish compare-product">
                                <div class="icon">
                                    <img width="23" src="{{ asset('assets/front/svg/tracking.svg') }}" alt="svg">
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Logo Header Area End -->
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

<section>
    <div class="sidebar__content">
        <div id="sidebar-nav" class="sidebar__nav d-none d-lg-block">
            <div class="card cate_area rounded-0">
                <div class="categories_title p-2 border-top">
                    <h2 class="categori_toggle"> {{ $langg->lang14 }}</h2>
                </div>
                <?php
                $i = 1;
                ?>
                @foreach($categories as $category)
                @if(count($category->subs) > 0)
                <div class="drp">
                    <!-- Toogle Buttons -->
                    <button type="button" id="toggle-btn"
                    data-toggle="collapse" data-target="#toggle-example{{ $i}}">
                    <span class="mr-2"><img width="20" height="20" src="{{ asset('assets/images/categories/'.$category->photo) }}" alt="img"></span>
                    @if(isJSON($category->name)){{json_decode($category->name,true)[$langg->id]}}@else {{$category->name}} @endif
                    @if(count($category->subs) > 0)
                    <span class="cate_arrow"><i class="fas fa-angle-down"></i></span>
                    @endif
                    </button>
                    <div id="toggle-example{{ $i }}" class="collapse in">
                    @foreach($category->subs as $subcat)
                        <div class="sub_cat">
                            <a href="{{ route('front.subcat',['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug]) }}"><span><i class="fas fa-angle-double-right"></i></span>
                            @if(isJSON($subcat->name)){{json_decode($subcat->name,true)[$langg->id]}}@else {{$subcat->name}} @endif
                        </a>
                            <ul>
                            @foreach($subcat->childs as $childcat)
                                <li><a href="{{ route('front.childcat',['slug1' => $childcat->subcategory->category->slug, 'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug]) }}">
                                @if(isJSON($childcat->name)){{json_decode($childcat->name,true)[$langg->id]}}@else {{$childcat->name}} @endif
                            </a>
                        </li>
                                @endforeach
                            </ul>
                        </div>
                        @endforeach
                    </div>
                </div>
                <span class="d-none">{{ $i++ }}</span>
                @else
                <a href="{{ route('front.category',$category->slug) }}">
                    <span class="mr-1"><img width="20" height="20" src="{{ asset('assets/images/categories/'.$category->photo) }}" alt="img"></span>
                    @if(isJSON($category->name)){{json_decode($category->name,true)[$langg->id]}}@else {{$category->name}} @endif
                </a>
                @endif
                @endforeach
            </div>
        </div>
        <div id="main-content" class="hero-margin-top">
            @yield('content')
        </div>
    </div>
</section>

<!-- Footer Area Start -->
<footer id="footer" class="footer" id="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-lg-3">
                <div class="footer-info-area">
                    <div class="footer-logo">
                        <a href="{{ route('front.index') }}" class="logo-link">
                            <img src="{{asset('assets/images/'.$gs->footer_logo)}}" alt="">
                        </a>
                    </div>
                    <div class="text">
                        <p>
                            {!! $gs->footer !!}
                        </p>
                    </div>
                </div>
                <div class="fotter-social-links">
                    <ul>

                        @if(App\Models\Socialsetting::find(1)->f_status == 1)
                            <li>
                                <a href="{{ App\Models\Socialsetting::find(1)->facebook }}" class="facebook"
                                   target="_blank">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                        @endif

                        @if(App\Models\Socialsetting::find(1)->g_status == 1)
                            <li>
                                <a href="{{ App\Models\Socialsetting::find(1)->gplus }}" class="google-plus"
                                   target="_blank">
                                    <i class="fab fa-youtube"></i>
                                </a>
                            </li>
                        @endif

                        @if(App\Models\Socialsetting::find(1)->t_status == 1)
                            <li>
                                <a href="{{ App\Models\Socialsetting::find(1)->twitter }}" class="twitter"
                                   target="_blank">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                        @endif

                        @if(App\Models\Socialsetting::find(1)->l_status == 1)
                            <li>
                                <a href="{{ App\Models\Socialsetting::find(1)->linkedin }}" class="linkedin"
                                   target="_blank">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                            </li>
                        @endif

                        @if(App\Models\Socialsetting::find(1)->d_status == 1)
                            <li>
                                <a href="{{ App\Models\Socialsetting::find(1)->dribble }}" class="dribbble"
                                   target="_blank">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </li>
                        @endif

                    </ul>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="footer-widget info-link-widget">
                    <h4 class="title">
                        {{ $langg->lang21 }}
                    </h4>
                    <ul class="link-list">
                        <li>
                            <a href="{{ route('front.index') }}">
                                <i class="fas fa-angle-double-right"></i>{{ $langg->lang22 }}
                            </a>
                        </li>

                        @foreach(DB::table('pages')->where('footer','=',1)->get() as $data)
                            <li>
                                <a href="{{ route('front.page',$data->slug) }}">
                                    <i class="fas fa-angle-double-right"></i>{{ $data->title }}
                                </a>
                            </li>
                        @endforeach

                        <li>
                            <a href="{{ route('front.contact') }}">
                                <i class="fas fa-angle-double-right"></i>{{ $langg->lang23 }}
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="footer-widget info-link-widget">
                    <h4 class="title">
                        {{ $langg->lang21 }}
                    </h4>
                    <ul class="link-list">
                        <li>
                            <a href="{{ route('front.blog') }}">
                            <i class="fas fa-angle-double-right"></i>{{ $langg->lang18 }}
                        </a>
                    </li>
                    @if($gs->is_faq == 1)
                            <li><a href="{{ route('front.faq') }}"><i class="fas fa-angle-double-right"></i>{{ $langg->lang19 }}</a></li>
                        @endif
                    </ul>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="footer-widget recent-post-widget">
                    <h4 class="title">
                        {{ $langg->lang21 }}
                    </h4>
                    <div class="subscribe input-group">
                        <input type="text" class="form-control rounded-0" placeholder="Subscribe..">
                        <button class="btn btn-primary rounded-0"><i class="icofont-location-arrow"></i></button>
                    </div>
                    <div class="row mt-4">
                        <div class="col-5">
                            <a href="#"><img class="img-fluid" src="{{ asset('assets/playstore/1.png') }}" alt="playstore"></a>
                        </div>
                        <div class="col-5">
                            <a href="#"><img class="img-fluid" src="{{ asset('assets/playstore/2.png') }}" alt="playstore"></a>
                        </div>
                    </div>
                    <div class="credit__card my-4 d-none">
                        <img src="{{ asset('assets/front/card/1.png') }}" alt="card">
                        <img src="{{ asset('assets/front/card/2.png') }}" alt="card">
                        <img src="{{ asset('assets/front/card/3.png') }}" alt="card">
                        <img src="{{ asset('assets/front/card/4.png') }}" alt="card">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="copy-bg">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="content">
                        <div class="content">
                            <p>{!! $gs->copyright !!}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Area End -->

<!-- Back to Top Start -->
<div class="bottomtotop">
    <i class="fas fa-arrow-up"></i>
</div>
<!-- Back to Top End -->

<!-- LOGIN MODAL -->
<div class="modal fade" id="comment-log-reg" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <nav class="comment-log-reg-tabmenu">
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link login active" id="nav-log-tab1" data-toggle="tab" href="#nav-log1"
                           role="tab" aria-controls="nav-log" aria-selected="true">
                            {{ $langg->lang197 }}
                        </a>
                        <a class="nav-item nav-link" id="nav-reg-tab1" data-toggle="tab" href="#nav-reg1" role="tab"
                           aria-controls="nav-reg" aria-selected="false">
                            {{ $langg->lang198 }}
                        </a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-log1" role="tabpanel"
                         aria-labelledby="nav-log-tab1">
                        <div class="login-area">
                            <div class="header-area">
                                <h4 class="title">{{ $langg->lang172 }}</h4>
                            </div>
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
                            <div class="login-form signin-form">
                                @include('includes.admin.form-login')
                                <form class="" action="{{ route('user.login.submit') }}" method="POST">
                                    {{ csrf_field() }}
                                    <div class="form-input">
                                        <input type="email" name="email" placeholder="{{ $langg->lang173 }}" value="{{old('email')}}"
                                               required="">
                                        <i class="icofont-user-alt-5"></i>
                                    </div>
                                    <div class="form-input">
                                        <input type="password" class="Password" name="password"
                                               placeholder="{{ $langg->lang174 }}" required="">
                                        <i class="icofont-ui-password"></i>
                                    </div>
                                    <div class="form-forgot-pass">
                                        <div class="left">
                                            <input type="checkbox" name="remember" id="mrp"
                                                {{ old('remember') ? 'checked' : '' }}>
                                            <label for="mrp">{{ $langg->lang175 }}</label>
                                        </div>
                                        <div class="right">
                                            <a href="javascript:;" id="show-forgot">
                                                {{ $langg->lang176 }}
                                            </a>
                                        </div>
                                    </div>
                                    <input type="hidden" name="modal" value="1">
                                    <input class="mauthdata" type="hidden" value="{{ $langg->lang177 }}">
                                    <button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
                                    @if(App\Models\Socialsetting::find(1)->f_check == 1 ||
                                    App\Models\Socialsetting::find(1)->g_check == 1)
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
                                                            <i class="fab fa-youtube"></i>
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
                    <div class="tab-pane fade" id="nav-reg1" role="tabpanel" aria-labelledby="nav-reg-tab1">
                        <div class="login-area signup-area">
                            <div class="header-area">
                                <h4 class="title">{{ $langg->lang181 }}</h4>
                            </div>
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
                            <div class="login-form signup-form">
                                @include('includes.admin.form-login')
                                <form class="" action="{{route('user-register-submit')}}"
                                      method="POST">
                                    {{ csrf_field() }}

                                    <div class="form-input">
                                        <input type="text" class="User Name" name="name"
                                               placeholder="{{ $langg->lang182 }}" required="">
                                        <i class="icofont-user-alt-5"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="email" class="User Name" name="email"
                                               placeholder="{{ $langg->lang183 }}" required="">
                                        <i class="icofont-email"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="text" class="User Name" name="phone"
                                               placeholder="{{ $langg->lang184 }}" required="">
                                        <i class="icofont-phone"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="text" class="User Name" name="address"
                                               placeholder="{{ $langg->lang185 }}" required="">
                                        <i class="icofont-location-pin"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="password" class="Password" name="password"
                                               placeholder="{{ $langg->lang186 }}" required="">
                                        <i class="icofont-ui-password"></i>
                                    </div>

                                    <div class="form-input">
                                        <input type="password" class="Password" name="password_confirmation"
                                               placeholder="{{ $langg->lang187 }}" required="">
                                        <i class="icofont-ui-password"></i>
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
</div>
<!-- LOGIN MODAL ENDS -->

<!-- FORGOT MODAL -->
<div class="modal fade" id="forgot-modal" tabindex="-1" role="dialog" aria-labelledby="comment-log-reg-Title"
     aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <div class="login-area">
                    <div class="header-area forgot-passwor-area">
                        <h4 class="title">{{ $langg->lang191 }} </h4>
                        <p class="text">{{ $langg->lang192 }} </p>
                    </div>
                    <div class="login-form">
                        @include('includes.admin.form-login')
                        <form id="" action="{{route('user-forgot-submit')}}" method="POST">
                            {{ csrf_field() }}
                            <div class="form-input">
                                <input type="email" name="email" class="User Name"
                                       placeholder="{{ $langg->lang193 }}" required="">
                                <i class="icofont-user-alt-5"></i>
                            </div>
                            <div class="to-login-page">
                                <a href="javascript:;" id="show-login">
                                    {{ $langg->lang194 }}
                                </a>
                            </div>
                            <input class="fauthdata" type="hidden" value="{{ $langg->lang195 }}">
                            <button type="submit" class="submit-btn">{{ $langg->lang196 }}</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- FORGOT MODAL ENDS -->


<!-- VENDOR LOGIN MODAL -->
<div class="modal fade" id="vendor-login" tabindex="-1" role="dialog" aria-labelledby="vendor-login-Title"
     aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered" style="transition: .5s;" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <nav class="comment-log-reg-tabmenu">
                    <div class="nav nav-tabs" id="nav-tab1" role="tablist">
                        <a class="nav-item nav-link login active" id="nav-log-tab11" data-toggle="tab" href="#nav-log11"
                           role="tab" aria-controls="nav-log" aria-selected="true">
                            {{ $langg->lang234 }}
                        </a>
                        <a class="nav-item nav-link" id="nav-reg-tab11" data-toggle="tab" href="#nav-reg11" role="tab"
                           aria-controls="nav-reg" aria-selected="false">
                            {{ $langg->lang235 }}
                        </a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-log11" role="tabpanel" aria-labelledby="nav-log-tab">
                        <div class="login-area">
                            <div class="login-form signin-form">
                                @include('includes.admin.form-login')
                                <form class="" action="{{ route('user.login.submit') }}" method="POST">
                                    {{ csrf_field() }}
                                    <div class="form-input">
                                        <input type="email" name="email" placeholder="{{ $langg->lang173 }}" value="{{old('email')}}"
                                               required="">
                                        <i class="icofont-user-alt-5"></i>
                                    </div>
                                    <div class="form-input">
                                        <input type="password" class="Password" name="password"
                                               placeholder="{{ $langg->lang174 }}" required="" id="modal-pass">
                                        <i class="icofont-ui-password"></i>
                                    </div>
                                    <div class="form-forgot-pass">
                                        <div class="left">
                                            <input type="checkbox" id="modal-show" onclick="modalShowPassword1()">
                                            <label for="modal-show">Show Password</label>
                                        </div>
                                    </div>
                                    <div class="form-forgot-pass">
                                        <div class="left">
                                            <input type="checkbox" name="remember"
                                                   id="mrp1" {{ old('remember') ? 'checked' : '' }}>
                                            <label for="mrp1">{{ $langg->lang175 }}</label>
                                        </div>
                                        <div class="right">
                                            <a href="javascript:;" id="show-forgot1">
                                                {{ $langg->lang176 }}
                                            </a>
                                        </div>
                                    </div>
                                    <input type="hidden" name="modal" value="1">
                                    <input type="hidden" name="vendor" value="1">
                                    <input class="mauthdata" type="hidden" value="{{ $langg->lang177 }}">
                                    <button type="submit" class="submit-btn">{{ $langg->lang178 }}</button>
                                    @if(App\Models\Socialsetting::find(1)->f_check == 1 || App\Models\Socialsetting::find(1)->g_check == 1)
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
                    <div class="tab-pane fade" id="nav-reg11" role="tabpanel" aria-labelledby="nav-reg-tab">
                        <div class="login-area signup-area">
                            <div class="login-form signup-form">
                                @include('includes.admin.form-login')
                                <form action="{{route('user-register-submit')}}" method="POST">
                                    {{ csrf_field() }}

                                    <div class="row">

                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="text" class="User Name" name="name"
                                                       placeholder="{{ $langg->lang182 }}" required="" value="{{old('name')}}">
                                                <i class="icofont-user-alt-5"></i>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="email" class="User Name" name="email"
                                                       placeholder="{{ $langg->lang183 }}" required="" value="{{old('email')}}">
                                                <i class="icofont-email"></i>
                                            </div>

                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="text" class="User Name" name="phone"
                                                       placeholder="{{ $langg->lang184 }}" required="" value="{{old('phone')}}">
                                                <i class="icofont-phone"></i>
                                            </div>

                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="address"
                                                       placeholder="{{ $langg->lang185 }}" required="" value="{{old('address')}}">
                                                <i class="icofont-location-pin"></i>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="text" class="User Name" name="shop_name"
                                                       placeholder="{{ $langg->lang238 }}" required="" value="{{old('shop_name')}}">
                                                <i class="icofont-cart-alt"></i>
                                            </div>

                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="owner_name"
                                                       placeholder="{{ $langg->lang239 }}" required="" value="{{old('owner_name')}}">
                                                <i class="sagor"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="shop_number"
                                                       placeholder="{{ $langg->lang240 }}" required="" value="{{old('shop_number')}}">
                                                <i class="icofont-shopping-cart"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="shop_address"
                                                       placeholder="{{ $langg->lang241 }}" required="" value="{{old('shop_address')}}">
                                                <i class="icofont-opencart"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="reg_number"
                                                       placeholder="{{ $langg->lang242 }}" required="" value="{{old('reg_number')}}">
                                                <i class="icofont-ui-cart"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">

                                            <div class="form-input">
                                                <input type="text" class="User Name" name="shop_message"
                                                       placeholder="{{ $langg->lang243 }}" required="" value="{{old('shop_message')}}">
                                                <i class="icofont-envelope"></i>
                                            </div>
                                        </div>

                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="password" class="Password" name="password"
                                                       placeholder="{{ $langg->lang186 }}" required="" id="modal-pass1">
                                                <i class="icofont-ui-password"></i>
                                            </div>

                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-input">
                                                <input type="password" class="Password" name="password_confirmation"
                                                       placeholder="{{ $langg->lang187 }}" required="" id="modal-passc">
                                                <i class="icofont-ui-password"></i>
                                            </div>
                                        </div>
                                        <div class="form-forgot-pass">
                                            <div class="left">
                                                <input type="checkbox" id="modal-show1" onclick="modalShowPassword()">
                                                <label for="modal-show1">Show Password</label>
                                            </div>
                                        </div>

                                        @if($gs->is_capcha == 1)

                                            <div class="col-lg-6">


                                                <ul class="captcha-area">
                                                    <li>
                                                        <p>
                                                            <img class="codeimg1"
                                                                 src="{{asset("assets/images/capcha_code.png")}}"
                                                                 alt=""> <i
                                                                class="fas fa-sync-alt pointer refresh_code "></i>
                                                        </p>

                                                    </li>
                                                </ul>


                                            </div>

                                            <div class="col-lg-6">

                                                <div class="form-input">
                                                    <input type="text" class="Password" name="codes"
                                                           placeholder="{{ $langg->lang51 }}" required="">
                                                    <i class="icofont-refresh"></i>

                                                </div>


                                            </div>

                                        @endif

                                        <input type="hidden" name="vendor" value="1">
                                        <input class="mprocessdata" type="hidden" value="{{ $langg->lang188 }}">
                                        <button type="submit" class="submit-btn">{{ $langg->lang189 }}</button>

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
<!-- VENDOR LOGIN MODAL ENDS -->

<!-- Product Quick View Modal -->

<div class="modal fade" id="quickview" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog quickview-modal modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="submit-loader">
                <img src="{{asset('assets/images/'.$gs->loader)}}" alt="">
            </div>
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container quick-view-modal">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Product Quick View Modal -->

<!-- Order Tracking modal Start-->
<div class="modal fade mt-4" id="track-order-modal" tabindex="-1" role="dialog" aria-labelledby="order-tracking-modal"
     aria-hidden="true">
    <div class="modal-dialog  modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title"><b>{{ $langg->lang772 }}</b></h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <div class="order-tracking-content">
                    <form id="track-form" class="track-form">
                        {{ csrf_field() }}
                        <input type="text" id="track-code" placeholder="{{ $langg->lang773 }}" required="">
                        <button type="submit" class="mybtn1">{{ $langg->lang774 }}</button>
                        <a href="#" data-toggle="modal" data-target="#order-tracking-modal"></a>
                    </form>
                </div>

                <div>
                    <div class="submit-loader d-none">
                        <img src="{{asset('assets/images/'.$gs->loader)}}" alt="">
                    </div>
                    <div id="track-order">

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<!-- Order Tracking modal End -->

<script type="text/javascript">
    var mainurl = "{{url('/')}}";
    var gs = {!! json_encode($gs) !!};
    var langg = {!! json_encode($langg) !!};
</script>
<script>
    function modalShowPassword1() {
        var x = document.getElementById("modal-pass");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }

    function modalShowPassword() {
        var x = document.getElementById("modal-passc");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
        var y = document.getElementById("modal-pass1");
        if (y.type === "password") {
            y.type = "text";
        } else {
            y.type = "password";
        }
    }
</script>

<!-- jquery -->
{{-- <script src="{{asset('assets/front/js/all.js')}}"></script> --}}
<script src="{{asset('assets/front/js/jquery.js')}}"></script>
<script src="{{asset('assets/front/js/vue.js')}}"></script>
<script src="{{asset('assets/front/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- popper -->
<script src="{{asset('assets/front/js/popper.min.js')}}"></script>
<!-- bootstrap -->
<script src="{{asset('assets/front/js/bootstrap.min.js')}}"></script>
<!-- plugin js-->
<script src="{{asset('assets/front/js/plugin.js')}}"></script>

<script src="{{asset('assets/front/js/xzoom.min.js')}}"></script>
<script src="{{asset('assets/front/js/jquery.hammer.min.js')}}"></script>
<script src="{{asset('assets/front/js/setup.js')}}"></script>

<script src="{{asset('assets/front/js/toastr.js')}}"></script>
<!-- main -->
<script src="{{asset('assets/front/js/main.js')}}"></script>
<!-- custom -->
<script src="{{asset('assets/front/js/custom.js')}}"></script>


{!! $seo->google_analytics !!}
@if(Auth::guard('web')->check())
    @if($gs->is_talkto == 1)
        <!--Start of Tawk.to Script-->
        {!! $gs->talkto !!}
        <!--End of Tawk.to Script-->
    @endif

    @else
    @if($gs->is_talkto == 1)
    <a href="{{ route('user.login') }}" class="float">
        <h4 class="text-light font-weight-bold pt-2">Live Chat</h4>
    </a>
        @endif
@endif

@yield('scripts')

{{-- ////////////////// --}}

<script>

$(document).ready(function(){

var _token = $('input[name="_token"]').val();

load_data('', _token);

function load_data(id="", _token)
{
 $.ajax({
  url:"{{ route('loadmore.load_data') }}",
  method:"POST",
  data:{id:id, _token:_token},
  success:function(data)
  {
   $('#load_more_button').remove();
   $('#post_data').append(data);
  }
 })
}

$(document).on('click', '#load_more_button', function(){
 var id = $(this).data('id');
 $('#load_more_button').html('<button class="btn top-header text-white btn-sm rounded-0" type="button" disabled><span class="spinner-border spinner-border-sm mr-1" role="status" aria-hidden="true"></span>Loading...</button>');
 load_data(id, _token);
});

});

function sidebarClose() {
        var sidebar = document.getElementById("cate_sidebar");
        sidebar.classList.add('sidebar_open');
        document.getElementById("close_layout").classList.remove('d-none');
        document.getElementById("close_layout").classList.add('bg__layout');
    }

    function layout() {
        document.getElementById("close_layout").classList.remove('bg__layout');
        var sidebar = document.getElementById("cate_sidebar");
        sidebar.classList.remove('sidebar_open');
    }

// This function is required to test if local storage is available, if not (private mode usually) we just don't show the cookie banner

function testLocalStorage() {
	var testLS = 'testLS';
	try {
		localStorage.setItem(testLS, true);
		localStorage.removeItem(testLS);
		return true;
	} catch(e) {
		return false;
	}
}

// If localStorage is available
if(testLocalStorage() === true){
	var cookieDisclaimer = document.querySelector('.disclaimer-container');
	var cookieDisclaimerHeight = $('.disclaimer-container').height();
	var mainHeaderTop = $('#main-header').css("top");
	$('.disclaimer-container').css("top", mainHeaderTop);
	if (!localStorage.getItem('cookieDisclaimer')) {
		cookieDisclaimer.classList.add('show');
		$('#main-header').css("top", parseInt(mainHeaderTop) + cookieDisclaimerHeight);
	}
	cookieDisclaimer.querySelector('.disclaimer-button').addEventListener('click', function() {
		localStorage.setItem('cookieDisclaimer', true);
		cookieDisclaimer.classList.remove('show');
	});
}
</script>
</body>

</html>
