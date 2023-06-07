<style>
  .w3-sidebar {
      /* height: 100%; */
      margin-top: 30px;
      margin-bottom: 15px;
      width: 100%;
      overflow: auto;
      background: #f3f3f3;
      /* position: fixed!important; */
      z-index: 1;
      overflow: auto;
      box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
  
      }
  .w3-bar-block .w3-bar-item {
      width: 100%;
      display: block;
      padding: 8px 16px;
      text-align: left;
      border: none;
      white-space: normal;
      float: none;
      outline: 0;
  }
  .w3-bar-block .w3-bar-item {
      width: 100%;
      display: block;
      padding: 8px 16px;
      text-align: left;
      border: 1px solid #ffa90f;
      white-space: normal;
      float: none;
      outline: 0;
  }
  .w3-sidebar a{
      color: #4b505e !important;
  }
  @media only screen and (max-width: 768px) {
      .w3-sidebar {
        width: 100%;
    }
  }
</style>
<div class="col-md-2">
  <div class="w3-sidebar w3-light-grey w3-bar-block">
      <a href="{{ route('member.edit')}}" class="w3-bar-item w3-button">Company Info</a>
      <a href="{{ route('employee.add')}}" class="w3-bar-item w3-button">Representative</a>
      <a href="{{ route('branch.add')}}" class="w3-bar-item w3-button">Branch</a>
      <a href="{{ route('member.gallery')}}" class="w3-bar-item w3-button">Gallery</a>
      <a href="{{ route('member.offer') }}" class="w3-bar-item w3-button">Offer</a>
      <a href="{{ route('member.product') }}" class="w3-bar-item w3-button">Product</a>
      <a href="{{ route('member.service') }}" class="w3-bar-item w3-button">Service</a>
      <a href="{{ route('member_msg.view') }}" class="w3-bar-item w3-button">Message</a>
  </div>
</div>