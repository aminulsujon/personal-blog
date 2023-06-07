@extends('member.layouts.app')
@section('content')
<div class="col-lg-12">  
    <div class="main-card mb-3 card">   
           <div class="card-body">
           <h5 class="card-title">Message List</h5>
               <table class="mb-0 table table-bordered">
                   <thead>
                   <tr>
                       <th>Serial number</th>
                       <th>Name</th>
                       <th>Email</th>
                       <th>Phone</th>
                       <th>Message</th>
                   </tr>
                   </thead>
                   @php
                       $i=1
                   @endphp
                   <tbody>
                       @forelse ($messages as $contact)
                       <tr>
                           <th scope="row">{{ $i++ }}</th>
                           <td>{{ $contact->name }}</td>
                           <td>{{ $contact->email }} </td>
                           <td>{{ $contact->phone }} </td>
                           <td>{{ $contact->message }}</td>                    
                       </tr>
                       @empty
                       <div class="alert alert-warning" role="alert">
                        No message Found
                      </div>
                       @endforelse
                   </tbody>
               </table>
           </div>
       </div>
   </div>
@endsection