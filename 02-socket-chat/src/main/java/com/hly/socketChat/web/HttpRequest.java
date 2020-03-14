package com.hly.socketChat.web;

import java.io.*;
import java.net.Socket;
import java.util.StringTokenizer;

/**
 * @author :hly
 * @github :https://github.com/huangliangyun
 * @blog :blog.csdn.net/Sirius_hly
 * @date :2018/11/2
 */
public class HttpRequest implements Runnable {

    final static String CRLF = "\r\n";
    Socket socket;

    public HttpRequest(Socket socket) {
        this.socket = socket;
    }

    private void processRequest() throws IOException {

        BufferedReader reader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        DataOutputStream os = new DataOutputStream(socket.getOutputStream());

        //get the line of HTTP request
        String requestLine = reader.readLine();
        //display request line
        System.out.println(requestLine);
        //get the head
        String headLine = null;
        while ((headLine=reader.readLine()).length()!=0){
            System.out.println(headLine);
        }

        //get the file nam from request
        StringTokenizer tokens  = new StringTokenizer(requestLine);
        //System.out.println("token:"+tokens.nextToken());

        tokens.nextToken();
        String filename = tokens.nextToken();
        //System.out.println("token:"+tokens.nextToken());
        //System.out.println("fileName:"+filename);
        //add . to express at present catalogue
        filename = '.'+filename;
        //System.out.println("fileName2:"+filename);

        //Open File I/O
        FileInputStream fis =null;
        boolean fileExists = true;

        try {
            fis = new FileInputStream(filename);
        } catch (FileNotFoundException e) {
            fileExists = false;
            e.printStackTrace();
        }

        String statusLine = null;
        String contentTypeLine = null;
        String entityBody = null;

        if(fileExists){
            statusLine = "HTTP/1.0 200 OK";
            contentTypeLine = "Content-type:" + contentType(filename) + CRLF;

        }else{
            statusLine = "HTTP/1.0 404 Not Found";
            contentTypeLine = "Content-type: text/html" + CRLF;
            entityBody = "Not Found";
        }

        os.writeBytes(statusLine);
        os.writeBytes(contentTypeLine);
        os.writeBytes(CRLF);
        if(fileExists){
            sendBytes(fis,os);
            fis.close();
        }else{
            os.writeBytes(entityBody);
        }
        os.close();
        os.close();
        socket.close();
    }

    private void sendBytes(FileInputStream fis, DataOutputStream os) throws IOException {

        byte[] buffer = new byte[1024];
        int bytes = 0;

        while ((bytes = fis.read(buffer)) != -1) {
            os.write(buffer, 0, bytes);
        }
    }

    private static String contentType(String fileName) {
        if (fileName.endsWith(".htm") || fileName.endsWith(".html")) {
            return "text/html";
        }
        if (fileName.endsWith(".jpg")) {
            return "text/jpg";
        }
        if (fileName.endsWith(".gif")) {
            return "text/gif";
        }
        if (fileName.endsWith(".mp3")) {
            return "audio/mp3";
        }
        if (fileName.endsWith(".mp4")) {
            return "video/mpeg4";
        }
        return "application/octet-stram";
    }

    @Override
    public void run() {
        try {
            processRequest();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
