{{-- If This product belongs to vendor then apply this --}}
@if($prod->user_id !== 0)
    {{-- check  If This vendor status is active --}}
    @if($prod->user->is_vendor == 2)

        <li>
            <div class="single-box">
                <div class="left-area">
                    <img
                        src="{{ $prod->thumbnail ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png') }}"
                        alt="">
                </div>
                <div class="right-area">
                    <div class="stars">
                        <div class="ratings">
                            <div class="empty-stars"></div>
                            <div class="full-stars" style="width:{{App\Models\Rating::ratings($prod->id)}}%"></div>
                        </div>
                    </div>
                    @php
                        $price = preg_replace('/[^0-9,.]+/', '', $prod->showPrice());
$previous_price=preg_replace('/[^0-9,.]+/', '', $prod->showPreviousPrice());
               $percentage=0;
               if ($previous_price!=""){
               $diff=$previous_price-$price;
               if ($diff){
               $percentage =number_format( ( $diff/ $previous_price)*100);
               }
               }
                    @endphp

                    <h4 class="price">{{ $prod->showPrice() }}
                        <del>{{ $prod->showPreviousPrice() }}</del> @if($percentage>0)
                            <span class="text-danger">{{$percentage .'% off' }}</span>
                        @endif</h4>
                    <p class="text"><a
                            href="{{ route('front.product',$prod->slug) }}">@if(isJSON($prod->name)){{ mb_strlen(json_decode($prod->name,true)[$langg->id],'utf-8') > 35 ? mb_substr(json_decode($prod->name,true)[$langg->id],0,35,'utf-8').'...' : json_decode($prod->name,true)[$langg->id] }}@else{{ mb_strlen($prod->name,'utf-8') > 35 ? mb_substr($prod->name,0,35,'utf-8').'...' : $prod->name }} @endif</a>
                    </p>
                </div>
            </div>
        </li>


    @endif

    {{-- If This product belongs admin and apply this --}}

@else

    <li>
        <div class="single-box">
            <div class="left-area">
                <img
                    src="{{ $prod->thumbnail ? asset('assets/images/thumbnails/'.$prod->thumbnail):asset('assets/images/noimage.png') }}"
                    alt="">
            </div>
            <div class="right-area">
                <div class="stars">
                    <div class="ratings">
                        <div class="empty-stars"></div>
                        <div class="full-stars" style="width:{{App\Models\Rating::ratings($prod->id)}}%"></div>
                    </div>
                </div>
                <h4 class="price">{{ $prod->showPrice() }}
                    <del>{{ $prod->showPreviousPrice() }}</del>
                </h4>
                @php
                    $price = preg_replace('/[^0-9,.]+/', '', $prod->showPrice());
            $previous_price=preg_replace('/[^0-9,.]+/', '', $prod->showPreviousPrice());
            $percentage=0;
            if ($previous_price!=""){
            $diff=$previous_price-$price;
            if ($diff){
            $percentage =number_format( ( $diff/ $previous_price)*100);
            }
            }
                @endphp
                @if($percentage>0)
                    <p class="text-danger">{{$percentage .'% off' }}</p>
                @elseif($percentage<0)
                    @php
                        $percentage = ltrim($percentage, '-') ;
                    @endphp
                    <p class="text-danger">{{'+'. $percentage .'%' }}</p>
                @endif
                <p class="text"><a
                        href="{{ route('front.product',$prod->slug) }}">@if(isJSON($prod->name)){{ mb_strlen(json_decode($prod->name,true)[$langg->id],'utf-8') > 35 ? mb_substr(json_decode($prod->name,true)[$langg->id],0,35,'utf-8').'...' : json_decode($prod->name,true)[$langg->id] }}@else{{ mb_strlen($prod->name,'utf-8') > 35 ? mb_substr($prod->name,0,35,'utf-8').'...' : $prod->name }} @endif</a>
                </p>
            </div>
        </div>
    </li>


@endif

