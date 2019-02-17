package com.ly.ssm.service.impl;


import com.ly.ssm.dao.UserMapper;
import com.ly.ssm.model.User;
import com.ly.ssm.service.IUserService;
import com.ly.ssm.utils.MD5;
import com.ly.ssm.utils.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import org.springframework.util.StringUtils;

import java.util.Date;

/**
 * User 表数据服务层接口实现类
 */
@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;


    public User login(String name, String password) {
        if (StringUtils.hasLength(name) && StringUtils.hasLength(password)) {
            User u = userMapper.login(name, MD5.encode(password));
            if (u != null) {
                UserContext.putCurrent(u);
                return u;
            }
        }
        return null;
    }


    public void changePassword(String oldPassword, String password) {
        if (StringUtils.hasLength(oldPassword) && StringUtils.hasLength(password)) {
            User current = UserContext.getCurrent();
            if (current == null) {
                throw new RuntimeException("您没有登录");
            }
            if (MD5.encode(oldPassword).equals(current.getPassword())) {
                current.setPassword(MD5.encode(password));

            } else {
                throw new RuntimeException("密码错误");
            }
        }
    }




}