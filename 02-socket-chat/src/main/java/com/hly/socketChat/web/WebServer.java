package com.hly.socketChat.web;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * @author :黄良运
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/2
 */
public class WebServer {

    public static void main(String[] args) throws IOException {
        int PORT = 777;
        ServerSocket socket = new ServerSocket(PORT);
        while (true){
            System.out.println("listening the request...");
            Socket connect = socket.accept();
            HttpRequest request = new HttpRequest(connect);
            new Thread(request).start();
        }
    }
}
