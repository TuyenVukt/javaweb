package com.bksoftwarevn.itstudent.controller;

import com.bksoftwarevn.itstudent.model.JsonResult;
import com.bksoftwarevn.itstudent.model.Product;
import com.bksoftwarevn.itstudent.service.ProductService;
import com.bksoftwarevn.itstudent.service_impl.ProductService_Impl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", value="/api/v1/product/*")
public class ProductController extends HttpServlet {
    private ProductService productService = new ProductService_Impl();
    private JsonResult jsonResult = new JsonResult();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().write("Post");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String pathInfor = request.getPathInfo();
        String rs = "";
        if (pathInfor.indexOf("/find-all") == 0) {
            try {
                List<Product> categoryList = productService.findAll();
                rs = jsonResult.jsonSuccess(categoryList);
            } catch (Exception e) {
                e.printStackTrace();
                rs = jsonResult.jsonFail("find all error");
            }

//        } else if (pathInfor.indexOf("/sort-by") == 0) {
//            try {
//                List<Product> categoryList = productService.sortBy(request.getParameter("query"), Boolean.parseBoolean(request.getParameter("isDesc")), request.getParameter("category"));
//                rs = jsonResult.jsonSuccess(categoryList);
//            } catch (Exception e) {
//                e.printStackTrace();
//                rs = jsonResult.jsonFail("find all error");
//            }
//
//        } else if (pathInfor.indexOf("/sort-by-price-desc") == 0) {
//
//            try {
//                List<Product> categoryList = productService.sortBy("price", false, request.getParameter("category"));
//                rs = jsonResult.jsonSuccess(categoryList);
//            } catch (Exception e) {
//                e.printStackTrace();
//                rs = jsonResult.jsonFail("find all error");
//            }
//
//        } else if (pathInfor.indexOf("/sort-by-date") == 0) {
//
//            try {
//                List<Product> categoryList = productService.sortBy("create_date", false, request.getParameter("category"));
//                System.out.println("id la: " + request.getParameter("category"));
//                rs = jsonResult.jsonSuccess(categoryList);
//            } catch (Exception e) {
//                e.printStackTrace();
//                rs = jsonResult.jsonFail("find all error");
//            }
//
//        } else if (pathInfor.indexOf("/sort-by-bought") == 0) {
//            try {
//                List<Product> categoryList = productService.sortBy("bought", false, request.getParameter("category"));
//                rs = jsonResult.jsonSuccess(categoryList);
//            } catch (Exception e) {
//                e.printStackTrace();
//                rs = jsonResult.jsonFail("find all error");
//            }
//        } else if (pathInfor.indexOf("/search") == 0) {
//            try {
//
//                String name = "", startDate, endDate;
//                int guarantee = -1, category = -1, bought = -1, promotion = -1;
//                double price = -1;
//                Boolean soldOut = BooleanUtils.toBooleanObject(request.getParameter("soldOut"));
//                if (request.getParameter("name") != null) name = request.getParameter("name");
//                startDate = request.getParameter("startDate");
//                endDate = request.getParameter("endDate");
//                if (request.getParameter("guarantee") != null)
//                    guarantee = Integer.parseInt(request.getParameter("guarantee"));
//                if (request.getParameter("category") != null)
//                    category = Integer.parseInt(request.getParameter("category"));
//                if (request.getParameter("bought") != null) bought = Integer.parseInt(request.getParameter("bought"));
//                if (request.getParameter("promotion") != null)
//                    promotion = Integer.parseInt(request.getParameter("promotion"));
//                if (request.getParameter("price") != null) price = Integer.parseInt(request.getParameter("price"));
//                List<Product> productList = productService.search(name, startDate, endDate, soldOut, guarantee, category, bought, promotion, price);
//                rs = jsonResult.jsonSuccess(productList);
//            } catch (Exception e) {
//                e.printStackTrace();
//                rs = jsonResult.jsonFail("find all error");
//            }
//        }
//
        response.getWriter().write(rs);
    }
        else if(pathInfor.indexOf("/find-by-cate")==0){
            try{
                int cateId = Integer.parseInt(request.getParameter("id"));
                List<Product> productList = productService.findByCategory(cateId);
                rs = jsonResult.jsonSuccess(productList);
            }catch(Exception e){
                e.printStackTrace();
            }
            response.getWriter().write(rs);
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().write("Put");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().write("Delete");

    }
}
