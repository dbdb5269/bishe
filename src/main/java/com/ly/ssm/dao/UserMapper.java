package com.ly.ssm.dao;


import com.ly.ssm.model.User;
import org.apache.ibatis.annotations.Param;

/**
 *
 * User 表数据库控制层接口
 *
 */
public interface UserMapper {

    User login(@Param("username") String username, @Param("password") String password);
}