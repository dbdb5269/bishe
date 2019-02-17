package com.ly.ssm.service;


import com.ly.ssm.model.User;

/**
 *
 * User 表数据服务层接口
 *
 */
public interface IUserService  {




    User login(String username, String password);

    void changePassword(String oldPassword, String password);


}