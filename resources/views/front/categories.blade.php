@extends('layouts.front')
@section('content')

<div class="category-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="bg-white">
                    @foreach($categories as $category)
                        <div class="sub-category-menu">
                            <h3 class="category-name"><a href="{{ route('front.category',$category->slug) }}">@if(isJSON($category->name)){{json_decode($category->name,true)[$langg->id]}}@else {{$category->name}} @endif</a></h3>
                            @if(count($category->subs) > 0)
                                <ul class="parent-category">
                                @foreach($category->subs as $subcat)
                                    <li>
                                        <a class="p-c-title" href="{{ route('front.subcat',['slug1' => $subcat->category->slug, 'slug2' => $subcat->slug]) }}">@if(isJSON($subcat->name)){{json_decode($subcat->name,true)[$langg->id]}}@else {{$subcat->name}} @endif</a>

                                    @if(count($subcat->childs) > 0)
                                        <ul>
                                        @foreach($subcat->childs as $childcat)
                                            <li>
                                                <a href="{{ route('front.childcat',['slug1' => $childcat->subcategory->category->slug, 'slug2' => $childcat->subcategory->slug, 'slug3' => $childcat->slug]) }}"><i class="fas fa-angle-double-right"></i>@if(isJSON($childcat->name)){{json_decode($childcat->name,true)[$langg->id]}}@else {{$childcat->name}} @endif</a>
                                            </li>
                                        @endforeach
                                        </ul>
                                    @endif

                                    </li>
                                @endforeach
                                </ul>
                            @endif
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
