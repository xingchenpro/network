package com.hly.socketChat.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * @author :黄良运
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/1
 */
public class Server {
    private ServerSocket server = null;
    private final int PORT = 6666;

    public static void main(String[] args) {
       new Server().begin();
    }
    private void begin() {
        try {
            server = new ServerSocket(PORT);
            System.err.println("The server is start...");
            while (true) {
                Socket socket = server.accept();
                System.err.println("Connect successful...");
                //发送消息线程
                new Thread(new Runnable() {
                    BufferedReader inputReader = null;
                    PrintStream out = null;
                    @Override
                    public void run() {
                        System.err.println("Server thread start...");
                        try {
                            inputReader = new BufferedReader(new InputStreamReader(System.in));
                            out = new PrintStream(socket.getOutputStream());

                            while(true) {
                                String input;
                                while ((input = inputReader.readLine())!=null){
                                    out.println(input);
                                }
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        finally {
                            try {
                                if(inputReader!=null){
                                    inputReader.close();
                                }
                                if(out!=null){
                                    out.close();
                                }
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }).start();

                //接收消息线程
                new Thread(new Runnable() {

                    BufferedReader reader = null;

                    @Override
                    public void run() {
                        System.err.println("Server thread start...");
                        try {
                            reader = new BufferedReader(new InputStreamReader(socket.getInputStream()));

                            while(true) {
                                String data;
                                while ((data = reader.readLine()) != null) {
                                    System.err.println("Client：" + data);
                                }
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        finally {
                            try {
                                if(reader!=null){
                                    reader.close();
                                }
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }).start();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
