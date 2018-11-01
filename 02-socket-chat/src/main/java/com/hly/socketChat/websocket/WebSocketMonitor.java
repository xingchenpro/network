package com.hly.socketChat.websocket;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/1
 */
public class WebSocketMonitor implements Runnable {
    @Override
    public void run() {

    }
    //https://blog.csdn.net/lonelyroamer/article/details/7993637
    //初始20秒，之后5秒一次
    public void sendMsg() {
        ScheduledExecutorService newScheduledThreadPool = Executors.newSingleThreadScheduledExecutor();
        newScheduledThreadPool.scheduleWithFixedDelay(new WebSocketMonitor(), 20, 5, TimeUnit.SECONDS);

    }

}
