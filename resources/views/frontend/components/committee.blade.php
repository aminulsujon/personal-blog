@php
$arr_post = [1=>'President',2=>'Vice President',3=>'Secretary',4=>'J.Secretary',5=>'Treasurer',6=>'IT & Promotion Publications Editor',7=>'Member'];
@endphp
<div class="section-headding management-heading text-center text-white">
    <a href="committee">
        <h2>Management Committee</h2>
    </a>
    <p>BCS Computer City (Jan 2023 Dec 2024)</p>
</div>
 <section class="section-padding-2">
    <div class="container management-committee">
        <style>
            .member>div{text-align:center;margin-bottom:25px}
            .member img{width:200px;border:5px solid #c61724;border-top-right-radius: 30px;border-bottom-left-radius: 30px;padding: 2px;}
            .member .text-danger{font-weight: bold;margin-top:5px}
        </style>
        <div class="row member">           
                @php
                    $arr_posted = [];
                    // dd($singlecommittee);
                    foreach($singlecommittee->content_employee as $emp){ 
                        $arr_posted[$emp->employee_id] = $emp->post;
                    }
                @endphp  
                @if (!empty($singlecommittee->employee))  
                    @foreach($singlecommittee->employee as $employee)  
                        <div @if ($loop->first) class="col-12 col-md-12" @else class="col-6 col-md-3"  @endif>        
                            <img src="{{$employee->profilePhoto}}" alt="team">
                            <span class="d-block text-danger">{{$employee->name}}</span>
                            @if (!empty($arr_posted[$employee->id]))
                                <h5>{{ $arr_post[$arr_posted[$employee->id]] }}</h5>
                            @endif
                        </div>
                    @endforeach
                @endif          
        </div>   
    </div>
</section>