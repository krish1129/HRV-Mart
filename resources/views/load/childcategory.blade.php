<option value="">Select Child Category</option>
@foreach($subcat->childs as $child)
<option value="{{ $child->id }}">
    @if(isJSON($child->name)){{json_decode($child->name,true)[$alang->id]}}@else {{$child->name}} @endif
</option>
@endforeach
