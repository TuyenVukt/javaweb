package com.bksoftwarevn.itstudent.dao_impl;

import com.bksoftwarevn.itstudent.dao.AccountDao;
import com.bksoftwarevn.itstudent.model.Account;
import com.bksoftwarevn.itstudent.model.MyConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class AccountDaoImpl implements AccountDao {
    private  MyConnection myConnection = new MyConnection();
    @Override
    public Account getObject(ResultSet resultSet) throws SQLException {
        Account account = null;
        // Sử dụng contructor full tham số (int id , String name,boolean deleleted)
        //resultSet.getInt("tên cột") để lấy ra giá trị của tên cột tương ứng ví dụ resultSet.getInt("id") để lấy ra
        //giá trị cột id
        account = new Account(resultSet.getInt("idUser"),
                resultSet.getString("userName"),
                resultSet.getString("password"),
                resultSet.getBoolean("isSell"),
                resultSet.getBoolean("isAdmin")
        );
        return account;
    }

    @Override
    public Account getUserLogin(String name, String password) {
        Account account = null;
        String sql = "SELECT * FROM account WHERE (userName = ? OR email = ?) AND password = ?";
        PreparedStatement preparedStatement = myConnection.prepare(sql);
        try{
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,name);
            preparedStatement.setString(3,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.first()) {
                account = getObject(resultSet);
                System.out.println("Accout: ");
                account.toString();
            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return account;

    }



    @Override
    public List getList(ResultSet resultSet) throws SQLException {
        return null;
    }

    @Override
    public List findAll() throws SQLException {
        return null;
    }

    @Override
    public Object findById(int id) throws SQLException {
        return null;
    }

    @Override
    public Object insert(Object o) throws SQLException {
        return null;
    }

    @Override
    public boolean update(Object category) throws SQLException {
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }
}
