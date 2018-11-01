package com.hly.socketChat.socket;

import java.io.IOException;
import java.net.Socket;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/1
 */
public class Client {

    public static void main(String[] args){
        new Client().clientConnect("127.0.0.1",7777);
    }

    private void clientConnect(String host,int port){
        System.err.println("the client start....");
        try {
            Socket socket = new Socket(host,port);
            new ClientWriterThread(socket.getOutputStream()).start();
            new ClientReaderThread(socket.getInputStream()).start();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
