package com.hly.websocketChat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/1
 */
@Controller
@RequestMapping("/")
public class ChatController {

    /**
     * 聊天页面
     * @param httpSession
     * @return
     */
    @RequestMapping("/chat")
    public ModelAndView chat(HttpSession httpSession) {

        ModelAndView mv = new ModelAndView();
        mv.setViewName("chat");
        return mv;
    }
}
