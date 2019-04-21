package com.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.model.User;
import com.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 *
 * @since 2018年09月28日
 */

@Controller
@RequestMapping(value = "/user")
public class UserController {
    private static final Boolean ISLAST_PAGE = true;

    @Resource(name = "userService")
    UserService userService;

    @RequestMapping(value = "/list")
    public ModelAndView list(Integer pageNo,Boolean isLastPage,Integer totalPage){
        if (pageNo == null || pageNo.equals(0)){
            pageNo = 1;
        }
        if(ISLAST_PAGE.equals(isLastPage)){
            pageNo = totalPage;
        }
        ModelAndView mav = new ModelAndView();
        PageInfo<User> userList = userService.getUser(pageNo);
        mav.setViewName("/show");
        mav.addObject("userList",userList);
        return mav;
    }

    @RequestMapping(value = "/insertCheck")
    public ModelAndView insert(User user){
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
    public ModelAndView delete(User user){
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
    public ModelAndView find(User user){
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
