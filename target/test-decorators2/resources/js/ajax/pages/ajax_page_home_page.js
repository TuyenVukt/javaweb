let categoryCol, allProductPart,id_active;
let listCategory = [
    {
        id: 1,
        name: "Category 1",
    },
    {
        id: 2,
        name: "Category 2",
    },
],listProduct=[];
$(async function(){
    categoryCol = $(".category_block");
    allProductPart = $("#all-product");
    await categoryFindAll().then(rs=>{
        if(rs.message=="success"){
            listCategory = rs.data;
            console.log("find-all thanh cong");
        }else{
            listCategory = [];
            console.log("find-all that bai")
        }
        console.log(rs);
    }).catch(err=>{
        console.log(err);
    });

    await productFindAll().then(rs=>{
        if(rs.message=="success"){
            listProduct = rs.data;
            console.log("find-all thanh cong");
        }else{
            listProduct = [];
            console.log("find-all that bai")
        }
        }
    ).catch(err=>{
        console.log(err);
    });
    showCategory();
    showAllProduct();
})
//
function showCategory(){
    let view = "<li class=\"list-group-item text-white \"><a href=\"# \">Không có danh mục</a></li>";
    if (listCategory && listCategory.length > 0) {
        view = listCategory.map((data, index) => {

            return  `<li class="list-group-item `+(data.id==Number(id_active)?`active"`:`"`)+`onclick="findByCate(${data.id})">${viewField(data.name)}</li>`
        }).join("");
    }
    categoryCol.html(view);
}

function showAllProduct(){
    let view = `<h2>Không có sản phẩm nào</h2>`;
    if (listProduct && listProduct.length > 0) {
        view = listProduct.map((data, index) => {
            return  ` <div class="col-12 col-md-6 col-lg-4 product-block">
                        <a href="">
                            <div class="product-img">
                                <img class="card-img-top " src="${data.image}" alt="Card image cap ">
                            </div>
                            <div class="product-body ">
                                <p class="product-name">${data.name}</p>
                                <p class="product-price">${viewMoney(data.price)}đ</p>
                                <p class="product-title">${data.introduction}</p>  
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


                    </div>`
        }).join("");
    }
    allProductPart.html(view);
}
async function findByCate(id){
    id_active = id;
    console.log("tìm sản phẩm");
    let view = `<h2>Không có sản phẩm nào</h2>`;
    await productFindByCate(id).then(rs=>{
            if(rs.message=="success"){
                listProduct = rs.data;
                console.log("find-all thanh cong");
            }else{
                listProduct = [];
                console.log("find-all that bai")
            }
        }
    ).catch(err=>{
        console.log(err);
    });
    showCategory();
    showAllProduct();
}

