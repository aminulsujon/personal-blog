<section class="template-need" style="background-image:url('assets/img/cta-1.png');">
    <div class="container">
        <!-- Section Headding -->
        <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="section-headding">
                    <h2 class="text-dark">Find Your Shop</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 align-items-center">
                <form action="{{URL::to('members')}}" class="row g-3 align-items-center">
                  @csrf
                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                      <div class="input-group">
                        <input name="member_name" type="text" class="form-control fs-4" placeholder="Shop name...">
                      </div>
                    </div>
                    <div class="col-md-2">
                      <select name="member_floor" class="form-select fs-4">
                        <option selected="" value=0>Floor...</option>
                        <option value=1>First</option>
                        <option value=2>Second</option>
                        <option value=3>Third</option>
                        <option value=4>Fourth</option>
                      </select>
                    </div>
                    <div class="col-md-2">
                      <button type="submit" class="button-2">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>



