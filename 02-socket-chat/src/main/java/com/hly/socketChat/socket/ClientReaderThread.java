package com.hly.socketChat.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/1
 */
public class ClientReaderThread extends Thread {
    //将数据输出到控制台
    private BufferedReader reader;

    public ClientReaderThread(InputStream in){
        this.reader = new BufferedReader(new InputStreamReader(in));
    }

    public void run(){
        System.err.println("ReaderThread start...");

            try {
                while(true) {
                    String serverData;
                    while((serverData = reader.readLine())!=null){
                        System.err.println("the msg from server is:" + serverData);
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
    }
}
