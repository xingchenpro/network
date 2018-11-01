package com.hly.socketChat.socket;

import java.io.*;
import java.net.Socket;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/1
 */
public class ServerThread implements Runnable {

    private Socket socket;

    ServerThread(Socket socket) {
        this.socket = socket;
    }
    @Override
    public void run() {
        System.err.println("ServerThread start");
        BufferedReader reader = null;
        PrintStream out = null;

        try {
            reader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
            out =new PrintStream(socket.getOutputStream()) ;
            while (true) {
                //in.readLine()阻塞的方法
                String clientData ;
                while((clientData = reader.readLine())!=null){
                    System.err.println("the msg from client is:" + clientData);
                    out.println("receive client msg!");
                    System.err.println("receive client msg!");
                }

            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close();
                }
                if (out != null) {
                    out.close();
                }
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
