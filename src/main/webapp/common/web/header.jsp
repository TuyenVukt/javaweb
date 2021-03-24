<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="home">Shoes</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
      <ul class="navbar-nav m-auto">

        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/login">Trang chủ</a>
        </li>

        <c:if test="${sessionScope.acc == null}">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/login">Login</a>
          </li>
        </c:if>

        <c:if test="${sessionScope.acc != null}">
            <c:if test="${sessionScope.acc.isAdmin() == true}">
                <li class="nav-item">
                    <a class="nav-link" href="#">Manage Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Manage Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Manage Account</a>
                </li>
            </c:if>
          <li>
            <a class="nav-link" href="#">Hello ${sessionScope.acc.user}</a>
          </li>
          <li>
            <a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a>
          </li>
        </c:if>

      </ul>

      <form action="search" method="post" class="form-inline my-2 my-lg-0">
        <div class="input-group input-group-sm">
          <input name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
          <div class="input-group-append">
            <button type="submit" class="btn btn-secondary btn-number">
              <i class="fa fa-search"></i>
            </button>
          </div>
        </div>
        <a class="btn btn-success btn-sm ml-3" href="show">
          <i class="fa fa-shopping-cart"></i> Cart
          <span class="badge badge-light">3</span>
        </a>
      </form>
    </div>
  </div>
</nav>
<!-- Navigation -->
<%--<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">--%>
<%--      <div class="container">--%>
<%--        <a class="navbar-brand" href="#">Start Bootstrap</a>--%>
<%--        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--          <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navbarResponsive">--%>
<%--          <ul class="navbar-nav ml-auto">--%>
<%--            <li class="nav-item active">--%>
<%--              <a class="nav-link" href="#">Trang chủ--%>
<%--                <span class="sr-only">(current)</span>--%>
<%--              </a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--              <a class="nav-link" href="${pageContext.request.contextPath}/login">Đăng nhập--%>
<%--              </a>--%>
<%--            </li>--%>
<%--            <c:if test="${not empty USERMODEL}">--%>
<%--              <li class="nav-item">--%>
<%--                <a class="nav-link" href='#'>Wellcome, ${USERMODEL.fullName}</a>--%>
<%--              </li>--%>
<%--            </c:if>--%>
<%--            <c:if test="${empty USERMODEL}">--%>

<%--            </c:if>--%>
<%--          </ul>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--</nav>--%>
