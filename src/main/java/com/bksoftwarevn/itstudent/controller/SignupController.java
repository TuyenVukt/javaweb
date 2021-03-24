package com.bksoftwarevn.itstudent.controller;

import com.bksoftwarevn.itstudent.dao.AccountDao;
import com.bksoftwarevn.itstudent.dao_impl.AccountDaoImpl;
import com.bksoftwarevn.itstudent.model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/signup")
public class SignupController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String userName = req.getParameter("user");
        String pass = req.getParameter("pass");
        String rePass = req.getParameter("repass");
        AccountDao accountDao = new AccountDaoImpl();
        Account account = accountDao.getUserLogin(userName,pass);
        if(account == null){
            req.setAttribute("mess","Wrong user or password");
            req.getRequestDispatcher("views/web/login.jsp").forward(req,resp);
        }else{
            resp.sendRedirect(req.getContextPath() + "/home");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("views/web/login.jsp").forward(req,resp);

    }
}
