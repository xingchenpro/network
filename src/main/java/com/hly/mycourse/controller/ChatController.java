package com.hly.mycourse.controller;

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
public class ChatController {

    @RequestMapping("/chat")
    public ModelAndView chat(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("chat");
        return mv;
    }

    @RequestMapping(value = "/")
    public ModelAndView login(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login");
        return mv;
    }

    @RequestMapping(value = "/successLogin")
    public ModelAndView successLogin(@RequestParam("username") String userId, @RequestParam("password") String userPws, HttpSession httpSession){
        ModelAndView mv = new ModelAndView();
        if(userId.equals("123")&&userPws.equals("123")||userId.equals("12")&&userPws.equals("12")||userId.equals("1")&&userPws.equals("1")){
            httpSession.setAttribute("userId",userId);
            httpSession.setAttribute("error","true");
            mv.setViewName("chat");
            return mv;
        }
        httpSession.setAttribute("error","error");
        mv.setViewName("login");
        return mv;
    }

}
