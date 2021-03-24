package com.bksoftwarevn.itstudent.dao;

import com.bksoftwarevn.itstudent.model.Account;

public interface AccountDao extends BaseDao{
    Account getUserLogin(String name, String password);
    
}
