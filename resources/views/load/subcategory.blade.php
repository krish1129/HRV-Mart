@if(Auth::guard('admin')->check())

<option data-href="" value="">Select Sub Category</option>
@foreach($cat->subs as $sub)
<option data-href="{{ route('admin-childcat-load',$sub->id) }}" value="{{ $sub->id }}">
    @if(isJSON($sub->name)){{json_decode($sub->name,true)[$alang->id]}}@else {{$sub->name}} @endif
</option>
@endforeach

@else

<option data-href="" value="">Select Sub Category</option>
@foreach($cat->subs as $sub)
<option data-href="{{ route('vendor-childcat-load',$sub->id) }}" value="{{ $sub->id }}">
    @if(isJSON($sub->name)){{json_decode($sub->name,true)[$alang->id]}}@else {{$sub->name}} @endif
</option>
@endforeach
@endif
