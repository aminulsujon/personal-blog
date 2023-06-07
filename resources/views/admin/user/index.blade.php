@extends('admin.layouts.app')
@section('content')
<div class="col-lg-12"> 
    <div class="main-card mb-3 card">      
        <div class="card-body"><h5 class="card-title">Manage User</h5>
        <a href="{{ URL::to('admin/user/create') }}" type="button" class="btn btn-primary mb-3 text-white">Add User</a>
            <table class="mb-0 table table-bordered">
                <thead>
                    <tr>
                        <th>Serial number</th>
                        <th>Role</th>
                        <th>User Name</th>
                        <th>Email</th>
                        <th>status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @php $i=1 @endphp
                    @forelse ($users as $user)
                    <tr>
                        <th scope="row">{{$i++}}</th>
                        <td>
                            @if($user->role_id == 1)
                                <span  class="badge badge-primary">CMS Admin</span>
                            
                            @elseif($user->role_id == 2)
                                <span  class="badge badge-info">Super Admin</span>
                            
                            @elseif($user->role_id == 3)
                                <span  class="badge badge-secondary">Editor</span>                  
                            @elseif($user->role_id == 4)
                                <span class="badge badge-warning">Content Writter</span>
                            @else
                                Member
                            @endif
                        </td>
                        <th scope="row">{{ $user->name }}</th>
                        <td>
                            {{ $user->email }}
                        </td>
                        <td>
                        @php
                            if($user->status == 1){
                                    echo  "<div class='badge badge-success badge-shadow'>Active</div>";
                                }elseif($user->status == 2){
                                    echo  "<div class='badge badge-danger badge-shadow'>Inactive</div>";
                                }
                        @endphp
                        </td>
                        <td>
                            <a href="{{URL::to('admin/user/'.$user->id.'/edit')}}" title="Edit" style="float: left; margin-left: 10px; margin-right: 10px">
                                <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i>
                                </button>
                            </a>   
                            <form action="{{URL::to('admin/user/'.$user->id)}}" method="post">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-danger btn-sm" type="submit" onclick="return confirm('Are you sure?')"><i class="fa fa-trash"></i></button>
                            </form>
                        </td>
                        </tr>
                    @empty
                        No User Found
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
    <div class="fixed-table-pagination">
        <div class="paginated">
          {{ $users->links() }}
          </div>
    </div>
</div>

@endsection