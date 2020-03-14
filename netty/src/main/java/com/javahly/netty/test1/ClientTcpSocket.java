package com.javahly.netty.test1;

import java.io.IOException;
import java.net.*;
import java.util.Scanner;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :http://www.javahly.com/
 * @CSDN :blog.csdn.net/Sirius_hly
 * @date :2020/3/13
 * @QQ :1136513099
 * @desc :
 */
public class ClientTcpSocket {

    public static void main(String[] args){



        try {
            Socket socket = new Socket();
            SocketAddress address = new InetSocketAddress(InetAddress.getLocalHost(),8080);
            socket.connect(address);
            while (true){
                Scanner scanner =new Scanner(System.in);
                socket.getOutputStream().write(scanner.next().getBytes());
            }

        } catch (UnknownHostException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
