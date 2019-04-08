package com.ssm.controller;

import com.ssm.model.User;
import com.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @since 2018年09月28日
 */

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Resource(name = "userService")
    UserService userService;

    @RequestMapping(value = "/list")
    public ModelAndView list(){
        ModelAndView mav = new ModelAndView();
        List<User> userList = userService.getUser();
        mav.setViewName("/show");
        mav.addObject("userList",userList);
        return mav;
    }

    @RequestMapping(value = "/insertCheck")
    public ModelAndView insert(User user, HttpServletRequest req, HttpServletResponse resp){
        ModelAndView mav = new ModelAndView();
        try {
            User inUser = new User();
            inUser.setAge(user.getAge());
            inUser.setName(user.getName());
            userService.insertUser(inUser);
            mav.setViewName("/insertsuccess");
        }catch (Exception e){
            mav.setViewName("/inserterror");
        }
        return mav;
    }

    @RequestMapping(value = "/delete")
    public ModelAndView delete(User user,HttpServletRequest res,HttpServletResponse resp){
        ModelAndView mav = new ModelAndView();
        try {
            User delUser = new User();
            delUser.setId(user.getId());
            userService.deleteUser(delUser);
            mav.setViewName("/delsuccess");
        }catch (Exception e){
            mav.setViewName("/index");
            e.printStackTrace();
            return mav;
        }
        return mav;
    }

    @RequestMapping(value = "/findUser")
    public ModelAndView find(User user,HttpServletRequest res,HttpServletResponse resp){
        ModelAndView mav = new ModelAndView();
        try {
            User targetUser = new User();
            targetUser.setId(user.getId());
            User resultUser = userService.findUserById(targetUser);
            mav.addObject("resultUser",resultUser);
            mav.setViewName("/showDetail");
        }catch (Exception e){
            return null;
        }
        return mav;
    }
}
