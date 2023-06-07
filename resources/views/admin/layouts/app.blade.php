<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Language" content="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Dashboard - BCS</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
<link rel="shortcut icon" type="image/x-icon" href="{{ asset('assets/img/logo.png') }}">
<meta name="description" content="This is an example dashboard created using build-in elements and components.">
<meta name="msapplication-tap-highlight" content="no">
<meta name="csrf-token" content="{{ csrf_token() }}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="{{ asset('admin/assets/css/main.css') }}" rel="stylesheet">
<style>
 *:required{border:1px solid gold}
  .status-1{color:green;background:#ededed}
  .status-2{color:red;background:#ededed}
  .status-3{color:#bbbb00;background:#ededed}
  .status-4{color:#ddd;background:#ededed}
  .scrollbar-sidebar, .scrollbar-container{overflow:scroll}
  .paginated svg{width:20px;height:20px}
  .paginated>nav>div{padding:10px 0}
</style>
</head>
<body>
<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
  @include('admin.layouts.topbar')
  <div class="app-main">
    @include('admin.layouts.sidebar')
    {{-- contents starts --}}
    <div class="app-main__outer">
      <div class="app-main__inner">
        @yield('content')
      </div>
      {{-- @include('admin.layouts.footer') --}}
    </div>
    {{-- contents end --}}
  </div>
</div>
<script type="text/javascript" src="{{ asset('admin/assets/scripts/main.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/js/jquery-3.6.0.min.js') }}"></script>
@yield('page_script')
@yield('script_footer')
<script type="text/javascript">
  $(function() {
    if($("#slug").length){
      var slugValue = $("#slug").val()
      var devpath = window.location.origin;
      if(slugValue){
        $.ajax({
          headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
          type: "POST", 
          url: devpath+"/admin/pagelinkediting/"+slugValue,
          success: function(data) { 
            console.log(data)
            if(data){
              $("#formPageLinkId").val(data)
            }else{
              console.log('Page link not found, or permanently removed')
            }
          }
        })
      }
    }
  });

  $("#slug").keyup(function(){
    
    checkUniqueSlug()
    
  });

  function showSlugExistsNotice(){
    $("#slug").parent().append('<span id="slugNotice" class="text-danger">This slug already exists</span>');
    $("#submit").hide();
  }
  function hideSlugExistsNotice(){
    $("#slugNotice").remove();
    $("#submit").show();
  }
</script>

{{-- slug generate --}}
<script>
  // $("#name").keyup(function(){
  //    var a = document.getElementById("name").value;
  //    var b = a.toLowerCase().replace(/ /g, '-')
  //        .replace(/[^\w-]+/g, '');
  //    document.getElementById("slug").value = b;
  //    checkUniqueSlug()
  // });

  $("#name").keyup(function(){
    var str = $(this).val();
    var txt = str.replace(/ /g,"-");
    $("#slug").val(txt.toLowerCase());
})

  function checkUniqueSlug(){
    if($("#slug").val()){
      // console.log('this is calling ajax slug for pagelink at slug action');
      var devpath = window.location.origin;
      $.ajax({
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        type: "POST", 
        url: devpath+"/admin/a/"+$("#slug").val(),
        success: function(data) { 
          // when is return, the slug exists
          console.log('data:',data)
          console.log('data lenght:',data.length)

          // to be changed after conplete a discussion why data has value when false 
          if(data.length != 2){
            // console.log(data)
            // console.log('when is return, the slug exists '+data)
            if($("#formPageLinkId").length){
              // console.log('data exists on edit page')
              var formPageLinkId = $("#formPageLinkId").val();
              if(formPageLinkId == data){
                // console.log('edit page slug matched with this pagelink')
                hideSlugExistsNotice()
              }else{
                if($("#slugNotice").length > 0){
                }else{
                  // console.log('This should be shown')
                  showSlugExistsNotice()
                }
              }
            }else{
              if($("#slugNotice").length > 0){
              }else{
                showSlugExistsNotice()
              }
            }
          }else{
            hideSlugExistsNotice()
          }
        }
      })
    }else{

      hideSlugExistsNotice()
    }
  }
</script>
</body>
</html>