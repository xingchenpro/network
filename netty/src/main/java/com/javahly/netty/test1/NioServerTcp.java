package com.javahly.netty.test1;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :http://www.javahly.com/
 * @CSDN :blog.csdn.net/Sirius_hly
 * @date :2020/3/13
 * @QQ :1136513099
 * @desc :
 */
public class NioServerTcp {

    private static ByteBuffer byteBuffer = ByteBuffer.allocate(513);

    //存放多个不同的TCP连接
    private static List<SocketChannel> socketChannels = new ArrayList<>();
    public static void main(String[] args) {
        try {
            ServerSocketChannel serverSocketChannel = ServerSocketChannel.open();
            serverSocketChannel.bind(new InetSocketAddress(8080));
            serverSocketChannel.configureBlocking(false);
            while (true){
                SocketChannel socketChannel = serverSocketChannel.accept();
                //非阻塞，不管有没有数据，都返回结果
                if (socketChannel != null) {
                    //非阻塞
                   socketChannel.configureBlocking(false);
                    socketChannels.add(socketChannel);
                }
                //主动轮询检查连接是否有数据，一个线程维护多个不同IO操作
                for (SocketChannel channel : socketChannels) {
                    int read = channel.read(byteBuffer);
                    if (read > 0) {
                        byteBuffer.flip();
                        Charset charset = Charset.forName("UTF-8");
                        String receiveTest = charset.newDecoder().decode(
                                byteBuffer.asReadOnlyBuffer()).toString();
                        System.out.println(Thread.currentThread().getName()+"  "+receiveTest);
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
