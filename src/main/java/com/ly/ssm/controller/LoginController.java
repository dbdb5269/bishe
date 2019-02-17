package com.ly.ssm.controller;


import com.ly.ssm.model.User;
import com.ly.ssm.service.IUserService;
import com.ly.ssm.utils.ResultJSON;
import com.ly.ssm.utils.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**登录 注销
 * Created by cwang on 2016/5/10.
 */
@Controller
public class LoginController {
    @Autowired
    private IUserService userService;

    @RequestMapping("loginXXX")
    @ResponseBody
    public ResultJSON checkName(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        ResultJSON ret = new ResultJSON();
        try {
            User user = userService.login(username, password);
            if (user == null) {
                ret.setMsg("用户名或密码错误");
                ret.setSuccess(false);
                return ret;
            }else{
                HttpSession session = request.getSession();
                session.setAttribute("user", user.getName());
            }
        } catch (Exception e) {
            ret.setSuccess(false).setMsg(e.getMessage());
            e.printStackTrace();
        }
        return ret;
    }

    @RequestMapping("logoutxxx")
    public String logout() {
        UserContext.removeCurrent();
        return "redirect:/index.jsp";
    }

    @RequestMapping("repasswordxx")
    public String repassword() {
        return "repassword";
    }
}
