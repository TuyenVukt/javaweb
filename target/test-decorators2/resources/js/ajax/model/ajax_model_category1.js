let selectSearchSapXep, searchDanhMuc, btnTimKiem, btnSua, btnThem, btnXoa, btnLuuLai,
    indexCategory, elementCategory, textName, checkUpdate;
var tableDuLieu;
let listCategory = [
    {
        id: 1,
        name: "Iphone",
    },
    {
        id: 2,
        name: "Vivo",
    },
];
$(async function(){
    checkUpdate = false;
    textName = $("#text-name");
    tableDuLieu = $("tbody");
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
    viewAllCategory();
})


function viewAllCategory() {
    let view = "<tr><td colspan='3'><strong>Không có danh mục nào</strong></td></tr>";

    if (listCategory && listCategory.length > 0) {
        view = listCategory.map((data, index) => {
            return  `<tr data-index="${index}">
        <th scope="row">${index+1}</th>
        <td>${viewField(data.name)}</td>
        <td class="text-center">
            <button type="button" class="btn btn-warning mt-1 update-category" ><i class="fas fa-pencil-alt"></i> Sửa</button>
            <button type="button" class="btn btn-danger mt-1 delete-category"  ><i class="fas fa-trash-alt"></i> Xóa</button>
        </td>
    </tr>`
        }).join("");
    }
    tableDuLieu.html(view);
    updateCategory();
    deleteCategory();
    insertCategory();
}

function updateCategory(){
    $(".update-category").click(function(){
        // console.log("đã click!!!")
        indexCategory = $(this).parents("tr").attr("data-index") - 0;
        elementCategory = listCategory[indexCategory];
        hiddenError(textName);
        $("#update-Modal").modal('show');
        textName.val(elementCategory.name);
        checkUpdate = true;
        saveCategory();
    })
}

function insertCategory(){
    $(".btn-insert").click(function (){
        elementCategory = null;
        textName.val("");
        hiddenError(textName);
        $("#update-Modal").modal('show');
        checkUpdate = false;
        saveCategory();
    })
}
function deleteCategory(){
    $(".delete-category").click(function () {

        indexCategory = $(this).parents("tr").attr("data-index") - 0;
        elementCategory = listCategory[indexCategory];

        $("#confirm-Modal").modal('show');
        $("#confirm-text").text("Bạn có chắc chắn muốn xóa?  "+ elementCategory.id);
        $("#confirm-button").text("Delete");
        confirmDelete();
    })

}
function saveCategory(){

    $(".btn-save").click( async function(){
        if(elementCategory){}
        else
        {elementCategory = {};};
        console.log(checkUpdate);

        let {val: valName, check: checkName} = checkData(textName, "Định dạng tên chưa đúng");

        if(checkName){
            elementCategory.name = valName;
            if(checkUpdate==true){
                listCategory[indexCategory] = elementCategory;
                $("#confirm-text").text("Bạn có chắc chắn lưu thay đổi?");
                $("#confirm-button").text("Update");
                $("#confirm-Modal").modal('show');
                $("#confirm-button").click(async function () {
                    await categoryUpdate(elementCategory).then(rs => {

                        if (rs.message == "success") {
                            contentAlert = "Bạn đã sửa category thành công!";
                        } else {
                            contentAlert = "Đã xảy ra lỗi khi sửa category!";
                        }

                    }).catch(err => {
                        console.log(err);
                    });
                    $("#confirm-Modal").modal('hide');
                })
            }else{
                await categoryInsert(elementCategory).then(rs => {

                    if (rs.message == "success") {
                        contentAlert = "Bạn đã sửa category thành công!";
                        listCategory.push(elementCategory);
                    } else {
                        contentAlert = "Đã xảy ra lỗi khi sửa category!";
                    }
                }).catch(err => {
                    console.log(err);
                })
            }
            $("#update-Modal").modal('hide');
        }
        viewAllCategory();
        // location.reload()


    })
}
function confirmDelete(){

    $("#confirm-button").click(async function () {
//chỗ này phải check id??
        let deleteId = elementCategory.id;
        console.log(typeof deleteId, deleteId);

        await categoryDelete(elementCategory.id).then(rs => {//rs ở đây là gì? lấy ở đâu??

            if (rs.message == "success") {
                contentAlert = "Bạn đã xóa category thành công!";
                listCategory = listCategory.filter((data, index)=>{
                    return index!= indexCategory;
                })
            } else {
                contentAlert = "Đã xảy ra lỗi khi xóa category!";
            }

        }).catch(err => {
            console.log(err);
        });

        $("#confirm-Modal").modal('hide');
        viewAllCategory();
        location.reload();
    })
}

function checkData(selector, textError) {
    let val = $(selector).val();
    let check = false;
    if (val.length > 0) {
        check = true;
        hiddenError(selector);
    } else {
        viewError(selector, textError);
    }
    //trả về một đói tượng có 2 thuộc tính là val và check
    //thuộc tính val sẽ mang giá trị của biến val
    // thuộc tính check sẽ mang giá trị của biến check;
    return {val, check};
}
