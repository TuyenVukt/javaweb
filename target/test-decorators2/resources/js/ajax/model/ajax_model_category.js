let urlCategory = "/category";
function categoryFindAll() {
    return ajaxGet(`${urlCategory}/find-all`);
}

function categoryUpdate(data){
    return ajaxPut(`${urlCategory}`, data);
}

function categoryDelete(id){
    return ajaxDelete(`${urlCategory}?id=${id}`);
}

function categoryInsert(data){
    return ajaxPost(`${urlCategory}`, data);
}
