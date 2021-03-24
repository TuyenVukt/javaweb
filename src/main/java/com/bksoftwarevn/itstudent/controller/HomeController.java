package com.bksoftwarevn.itstudent.controller;

import com.bksoftwarevn.itstudent.model.Category;
import com.bksoftwarevn.itstudent.model.Product;
import com.bksoftwarevn.itstudent.service.CategoryService;
import com.bksoftwarevn.itstudent.service.ProductService;
import com.bksoftwarevn.itstudent.service_impl.CategoryServiceImpl;
import com.bksoftwarevn.itstudent.service_impl.ProductService_Impl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeControl", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {
    ProductService productService = new ProductService_Impl();
    CategoryService categoryService = new CategoryServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
//        List<Product> productList = null;
//        List<Category> categoryList =null;
//        try{
//            productList = productService.findAll();
//             categoryList = categoryService.findAll();
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//        for(Product p: productList){
//            System.out.println(p.getName());
//        }
//
//        req.setAttribute("listP",productList);
//        req.setAttribute("listCC", categoryList);
        req.getRequestDispatcher("views/web/home.jsp").forward(req, resp);
    }
}
