package com.javahly.netty.serializable;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.codec.LineBasedFrameDecoder;
import io.netty.handler.codec.string.StringDecoder;
import io.netty.handler.codec.string.StringEncoder;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :http://www.javahly.com/
 * @CSDN :blog.csdn.net/Sirius_hly
 * @date :2020/3/14
 * @QQ :1136513099
 * @desc : Netty 服务器端
 */
public class NettyServer {


    public static void main(String[] args){

        //线程池，不会处理操作，交给work，如果一边接受一边做处理性能低
        NioEventLoopGroup boss = new NioEventLoopGroup();
        //工作线程池
        NioEventLoopGroup work = new NioEventLoopGroup();
        ServerBootstrap serverBootstrap = new ServerBootstrap();
        //服务器端
        serverBootstrap.group(boss,work).channel(NioServerSocketChannel.class)
                .childHandler(new ChannelInitializer<SocketChannel >() {
                    @Override
                    protected void initChannel(SocketChannel socketChannel) throws Exception {
                        //发送的数据设置边界
                        socketChannel.pipeline().addLast(new StringEncoder());
                        socketChannel.pipeline().addLast(new StringDecoder());
                        socketChannel.pipeline().addLast(new LineBasedFrameDecoder(1024));
                        socketChannel.pipeline().addLast(new StringEncoder());
                        socketChannel.pipeline().addLast(new ServerHandler());
                    }
                });

        try {
            //绑定端口
            ChannelFuture channelFuture = serverBootstrap.bind(8080).sync();
            System.out.println("服务器启动成功");
            //监听请求
            channelFuture.channel().closeFuture().sync();

        } catch (InterruptedException e) {
            e.printStackTrace();
        }finally {
            boss.shutdownGracefully();
            work.shutdownGracefully();
        }
    }
}
