package com.hly.socketChat.socket;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Date;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/1
 */
public class ServerListen {

        private final int PORT = 7777;
        private ServerSocket server;
        public static void main(String[] args){
            new ServerListen().begin();
        }

        private void begin(){
            try {
                server = new ServerSocket(PORT);
                System.err.println("the server is start...");
                while(true){
                        Socket socket = server.accept();
                        new Thread(new ServerThread(socket)).start();
                        System.err.println("connect successful...");
                }
            } catch (IOException e) {
                System.err.println("the server is fail to start!");
                e.printStackTrace();
            }
        }
}
