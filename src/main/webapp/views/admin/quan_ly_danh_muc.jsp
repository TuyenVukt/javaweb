
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<main>
    <!-- Modal -->
    <div class="modal fade" id="update-Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Chi tiết danh mục sản phẩm</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Tên danh mục</label>
                                    <input type="text" class="form-control" id="text-name"  placeholder="Nhập tên danh mục...">
                                    <div class="invalid-feedback">
                                        Please choose a username.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default " data-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-success btn-save" onclick="saveCategory()">Lưu</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="confirm-Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xác nhận thao tác</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12 " id="confirm-text">
                                Bạn có chắc chắn lưu thay đổi này không?
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-danger" id="confirm-button">Có</button>
                </div>
            </div>
        </div>
    </div>
<%--    delete-confirm-modal--%>
    <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xác nhận thao tác</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12 " id="confirm-text">
                                Bạn có chắc chắn xóa loại hàng này không?
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-danger" id="confirm-delete-button" onclick="confirmDelete()">Xóa</button>
                </div>
            </div>
        </div>
    </div>


    <div class="title-page mt-4">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h1>Quản Lý Danh Mục Sản Phẩm</h1>
                </div>
                <div class="col-12">
                    <hr>
                </div>
            </div>
        </div>
    </div>
    <div class="tool-page">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <button type="button" class="btn btn-primary btn-insert" ><i class="fas fa-plus"></i> Thêm danh mục sản phẩm</button>
                </div>
                <div class="col-md-4 mt-1">
                    <select class="form-control" id="unknownid2">
                        <option>Sắp xếp</option>
                        <option>A->Z</option>
                        <option>Z->A</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="table-data">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="table-reponsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th scope="col">STT</th>
                                <th scope="col">Tên Danh Mục</th>
                                <th scope="col">Hành Động</th>
                            </tr>
                            <tr>
                                <th scope="row"></th>
                                <td><input type="text" id="unknownid3" class="form-control"></td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-primary"><i class="fas fa-search"></i> Tìm kiếm</button>
                                </td>
                            </tr>
                            </thead>

                            <tbody>
                                <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-warning mt-1" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-pencil-alt"></i> Sửa</button>
                                    <button type="button" class="btn btn-danger mt-1"  data-toggle="modal" data-target="#exampleModal1"><i class="fas fa-trash-alt"></i> Xóa</button>
                                </td>
                                </tr>

                                <tr>
                                <th scope="row">2</th>
                                <td>Jacob</td>
                                <td class="text-center">
                                    <button type="button" class="btn btn-warning mt-1" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-pencil-alt"></i> Sửa</button>
                                    <button type="button" class="btn btn-danger mt-1"  data-toggle="modal" data-target="#exampleModal1"><i class="fas fa-trash-alt"></i> Xóa</button>
                                </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script src = "resources/js/ajax/pages/ajax_page_quan_li_danh_muc.js"></script>
<script src = "resources/js/ajax/model/ajax_model_category.js"></script>
