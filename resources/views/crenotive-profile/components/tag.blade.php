@if (!empty($content->tag))
    <div class="col-lg-12 mb-30">
        <div class="tagcloud">
            <span><b>Tags: </b></span>
            @foreach($content->tag as $tag)
                @if($tag->tag_type == 3)
                <a href="#">{{ $tag->title }}</a>
                @endif
            @endforeach
        </div>
    </div>
@endif