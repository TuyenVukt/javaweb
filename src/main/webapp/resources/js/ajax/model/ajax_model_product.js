let urlProduct = "/product";
function productFindAll() {
    return ajaxGet(`${urlProduct}/find-all`);
}

function productFindByCate(id){
    return ajaxGet(`${urlProduct}/find-by-cate?id=${id}`);
}