<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<section class="jumbotron text-center ">
  <div class="container ">
    <h1 class="jumbotron-heading ">Siêu thị công nghệ chất lượng cao</h1>
    <p class="lead text-muted mb-0 ">Đẳng cấp tạo nên sự khác biệt</p>
  </div>
</section>
<!--end of menu-->
<div class="container ">
  <div class="row ">
    <div class="col ">
      <nav aria-label="breadcrumb ">
        <ol class="breadcrumb ">
          <li class="breadcrumb-item "><a href="# ">Home</a></li>
          <li class="breadcrumb-item "><a href="# ">Category</a></li>
          <li class="breadcrumb-item active " aria-current="# ">Sub-category</li>
        </ol>
      </nav>
    </div>
  </div>
</div>
<div class="container ">
  <div class="row ">
    <div class="col-sm-3 ">
      <div class="card bg-light mb-3 ">
        <div class="card-header bg-primary text-white text-uppercase "><i class="fa fa-list "></i> Categories</div>
        <ul class="list-group category_block ">
          <li class="list-group-item text-white "><a href="#">Category 1</a></li>
          <li class="list-group-item text-white "><a href="# ">Category 2</a></li>
          <li class="list-group-item text-white "><a href="# ">Category 3</a></li>
          <li class="list-group-item text-white "><a href="# ">Category 4</a></li>
        </ul>
      </div>
      <div class="card bg-light mb-3 ">
        <div class="card-header bg-success text-white text-uppercase ">Last product</div>
        <div class="card-body ">
          <img class="img-fluid " src="https://www.zdnet.com/a/hub/i/r/2020/11/16/37e33024-2892-4bb7-9d21-6ac6f7544def/thumbnail/770x433/5f1b7f881bfb80a9f2bbe02bc6d64b49/apple-macbook-pro-m1-2020-5.jpg " />
          <h5 class="card-title ">Name</h5>
          <p class="card-text ">Title</p>
          <p class="bloc_left_price ">25000000</p>
        </div>
      </div>

    </div>

    <div class="col-sm-9 ">
      <div class="row" id="all-product">
        <div class="col-12 col-md-6 col-lg-4 product-block">
          <a href="">
            <div class="product-img">
              <img class="card-img-top " src="https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-family-hero?wid=940&amp;hei=1112&amp;fmt=jpeg&amp;qlt=80&amp;op_usm=0.5,0.5&amp;.v=1604021663000" alt="Card image cap ">
            </div>
            <div class="product-body ">
              <p class="product-name">I Phone 12 Pro Max sgjk; lgsgj g sggsjg</p>
              <p class="product-price">25000000</p>
              <p class="product-title">ifaf ifjaf aijfa fi afjaiofj ia aji aigja ig aijgaijg agjaij</p>

              <a href="# ">
                <div class="cart-block">
                  <div class="cart-icon">
                    <i class="fa fa-cart-plus" aria-hidden="true"></i>
                  </div>

                  <div class="cart-text">Giỏ hàng</div>

                </div>

              </a>

            </div>
          </a>


        </div>

      </div>
    </div>

  </div>
</div>

<script src = "resources/js/ajax/pages/ajax_page_home_page.js"></script>
<script src = "resources/js/ajax/model/ajax_model_category.js"></script>
<script src = "resources/js/ajax/model/ajax_model_product.js"></script>
