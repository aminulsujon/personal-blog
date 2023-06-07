@extends('admin.layouts.app')
@section('content')
<div class="main-card mb-3 card">
  @include('admin/card_head',[
    'title'=>'Tags',
    'info'=>'Website tags.',
    'links'=>[
        0=>['text'=>'New Tag','link'=>'/admin/tag/create']
      ]  
  ])
<?php
$arr_status = [1=>'Active',2=>'Inactive',3=>'Pending',4=>'Disabled'];
$menus = [];
$i = 1;
foreach($tags as $tag){
  if(empty($tag->parent)){
    $menus[$tag->id]['id']= $tag->id;
    $menus[$tag->id]['title']= $tag->title;
    $menus[$tag->id]['linkto']= $tag->linkto;
    $menus[$tag->id]['linkUrl']= $tag->linkUrl;
    $menus[$tag->id]['status']= $tag->status;
    $menus[$tag->id]['sequence']= $tag->sequence;
  }else{
    $child[$tag->parent][$i]['id'] = $tag->id;
    $child[$tag->parent][$i]['title'] = $tag->title;
    $child[$tag->parent][$i]['linkto'] = $tag->linkto;
    $child[$tag->parent][$i]['linkUrl'] = $tag->linkUrl;
    $child[$tag->parent][$i]['status'] = $tag->status;
    $child[$tag->parent][$i]['sequence'] = $tag->sequence;
    $i++;
  }
}
echo '<ul>';
foreach($menus as $key => $value){
  echo '<li class="py-2">'.$value['sequence'].'. '.$value['title'].' <i>(<u>'.$value['linkto'].'</u>)</i> &nbsp;&nbsp;<span class="badge badge-info status-'.$value['status'].'">'.$arr_status[$value['status']].'</span> &nbsp;&nbsp;<a href="'.URL::to('admin/tag/'.$value['id'].'/edit').'"><i class="fa fa-edit"></i></a>';
  if(!empty($child[$key])){
    echo '<ul>';
    foreach($child[$key] as $ke => $val){
      echo '<li class="py-2">'.$val['sequence'].'. '.$val['title'].' <i>(<u>'.$val['linkto'].'</u>)</i> &nbsp;&nbsp;<span class="badge badge-info status-'.$val['status'].'">'.$arr_status[$val['status']].'</span> &nbsp;&nbsp;<a href="'.URL::to('admin/tag/'.$val['id'].'/edit').'"><i class="fa fa-edit"></i></a>';
      echo '</li>';
    }
    echo '</ul>';
  }
  echo '</li>';
}
echo '</ul>';
?>
  <div class="card-body">
    
  </div>
</div>

@endsection