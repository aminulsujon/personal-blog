@extends('admin.layouts.app')
@section('content')

<div class="col-lg-12">
    
    <div class="main-card mb-3 card">
        
    <div class="card-body"><h5 class="card-title">Manage Page</h5>
    <a href="{{ URL::to('admin/page/create') }}" type="button" class="btn btn-primary mb-3 text-white">Add Page</a>
    <table class="mb-0 table table-bordered">
    <thead>
    <tr>
    <th>Serial number</th>
    <th>Page Name</th>
    <th>Page summary</th>
    <th>status</th>
    <th>Action</th>
    </tr>
    </thead>
    <tbody>
    @forelse ($contents as $content)
    <tr>
        <th scope="row">{{ $content->id }}</th>
        <td>{{ $content->name }}</td>
        <td>
            {{ $content->summary }}
        </td>
        <td>
        @php
            if($content->status == 1){
                    echo  "<div class='badge badge-success badge-shadow'>Active</div>";
                }else{
                    echo  "<div class='badge badge-danger badge-shadow'>Inactive</div>";
                }
        @endphp
        </td>
        <td>
            <a href="{{URL::to('admin/page/'.$content->id.'/edit')}}" title="Edit" style="float: left; margin-left: 10px; margin-right: 10px">

                <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i>

                </button>

            </a>   
            <form action="{{URL::to('admin/page/'.$content->id)}}" method="post">
                @csrf
                @method('DELETE')
                <button class="btn btn-danger btn-sm" type="submit" onclick="return confirm('Are you sure?')"><i class="fa fa-trash"></i></button>
            </form>
        </td>
        </tr>
    @empty
        No Page Found
    @endforelse
    </tbody>
    </table>
    </div>
    </div>
    </div>

@endsection