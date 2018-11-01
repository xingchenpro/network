package com.hly.socketChat.socket;

import java.io.*;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/1
 */
public class ClientWriterThread extends Thread {

    private PrintStream out;

    public ClientWriterThread(OutputStream out){
        this.out = new PrintStream(out);
    }

    public void run(){
        System.err.println("WriterThread start...");
        try {
        //封装控制台输入流
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

        while (true) {
            String input;
            //将控制台服务写到服务程序
            while ((input = reader.readLine())!=null){
                out.println(input);
                System.err.println("input："+input);
            }

            System.err.println("send to server successful!");
        }

        }
        catch (IOException e) {
            e.printStackTrace();
        }

    }






}
