package com.hly.mycourse.controller;

import com.hly.mycourse.pojo.User;
import com.hly.mycourse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * @author :hly
 * @date :2018/5/17
 * 作者博客：https://blog.csdn.net/Sirius_hly
 */
@Controller
@RequestMapping("/")
public class WebController {
    static boolean login = false;
    @Autowired
    UserService userService;

    @RequestMapping("/chat")
    public ModelAndView chat(HttpSession httpSession){
        ModelAndView mv = new ModelAndView();
        if(login==false){
            httpSession.setAttribute("errorLogin","errorLogin");
            mv.setViewName("login");
            return  mv;
        }
        else {
            httpSession.setAttribute("errorLogin","Login");
            mv.setViewName("chat");
            return mv;
        }
    }

    @RequestMapping(value = "/")
    public ModelAndView HOME(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("HOME");
        return mv;
    }

    @RequestMapping(value = "/successLogin")
    public ModelAndView successLogin(@RequestParam("username") String userId, @RequestParam("password") String userPws, HttpSession httpSession){
        ModelAndView mv = new ModelAndView();
        User user = userService.selectUserById(userId);
        if(userId.equals(user.getUserId())&&userPws.equals(user.getPassword())){
            httpSession.setAttribute("userId",userId);
            httpSession.setAttribute("error","true");
            mv.setViewName("HOME");
            login = true;
            return mv;
        }
        httpSession.setAttribute("error","error");
        mv.setViewName("login");
        return mv;
    }

    @RequestMapping("/HOME")
    public ModelAndView HOME2(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("HOME");
        return mv;
    }



    @RequestMapping("/wjdc")
    public ModelAndView wjdc(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("wjdc");
        return mv;
    }

    @RequestMapping("/actualCombat")
    public ModelAndView video(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("actualCombat");
        return mv;
    }

    @RequestMapping("/login")
    public ModelAndView login(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login");
        return mv;
    }
}
