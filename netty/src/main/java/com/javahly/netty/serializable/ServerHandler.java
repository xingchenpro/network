package com.javahly.netty.serializable;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.util.CharsetUtil;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :http://www.javahly.com/
 * @CSDN :blog.csdn.net/Sirius_hly
 * @date :2020/3/14
 * @QQ :1136513099
 * @desc :
 */
public class ServerHandler extends SimpleChannelInboundHandler<String> {

    /**
     * 获取数据
     *
     * @param channelHandlerContext
     * @param
     * @throws Exception
     */
    @Override
    protected void channelRead0(ChannelHandlerContext channelHandlerContext, String s) throws Exception {
        System.out.println("客户端：" + s);
        channelHandlerContext.writeAndFlush(Unpooled.copiedBuffer("收到\n", CharsetUtil.UTF_8));
    }
}
