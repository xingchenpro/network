<%--
  Created by IntelliJ IDEA.
  User: hly
  Date: 2018/6/6
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>下载</title>
    <style>
        body{
            font-size:14px;
            background:linear-gradient(to top, #F5F5DC,#F5F5DC);
            line-height: 1px;
            text-align: center;
            font-family: Arial;
        }
        .text{
            margin-left:50px;
            line-height:50px;
            font-size:20px;
            font-family: 微软雅黑;
        }
        .wrap1{
            width:100%;
            height:70px;
            background-color:#333333;
        }
        .top_left{
            float:left;
            height:70px;
            width:180px;
            /*border:1px solid red;*/
        }
        .nav{
            width:900px;
            height:70px;
            float:left;
            /*border:1px solid red;*/
        }
        .nav_left{
            float:left;
        }
        .nav_left li{
            height:70px;
            width:110px;
            float:left;
            list-style-type: none;
            text-align:center;
            line-height:70px;
            font-size: 14px;
            font-family: 微软雅黑;
        }
        .nav_left a:link,.nav_left a:visited{
            text-decoration:none;
            color:white;
        }
        .nav_left a:hover,.nav_left a:active{
            text-decoration:none;
            color:yellow;
        }
        .nav_right{
            width:200px;
            float:left;
        }
        .nav_right input[type="text"]{
            height:20px;
            margin-top:27px;
            float:left;
            width:150px;
            background:url("images/search.jpg") no-repeat right center;
            background-color:white;
            padding-right: 25px;
        }
        .top_right{
            /*border:1px solid red;*/
            float:left;
            width:90px;
            height:25px;
            padding-top:45px;
            padding-left:90px;
        }
        .top_right a{
            font-family:微软雅黑;
            text-decoration:none;
        }
        .top_right a:link,.top_right a:visited{
            color:#8e8e8e;
        }
        .top_right a:hover,.top_right a:active{
            color:red;
        }
        table,tr,td,th{
            padding: 0;
            margin: 0;
        }
        table{
            width: 60%;
            position:fixed;
            margin-top:-10px;
            margin-left:250px;
            border-color: #ccc;
        }
        table tr{
            line-height: 25px;
            border-color: #ccc;
        }
        table th,table td{
            text-align: center;
            border-color: #ccc;
        }
        table tr:nth-child(even){
            background: #ccc;
        }
        h1{
            text-shadow: 0 1px 4px black;
            color: white;
        }
    </style>
</head>
<body>
<div class="wrap">
    <div class="wrap1_2">
        <div class="wrap1">
            <div class="top_left"></div>
            <div class="nav">
                <div class="nav_left">
                    <ul>
                        <li><a href="<%=path%>/HOME">首页</a></li>
                        <li><a href="<%=path%>/actualCombat" target="_blank">精品课程</a></li>
                        <li><a href="<%=path%>/chat" target="_blank">在线交流</a></li>
                        <li><a href="<%=path%>/wjdc" target="_blank">在线考试</a></li>
                        <li><a href="<%=path%>/file/upload">资料上传</a></li>
                        <li><a href="<%=path%>/file/download">资料下载</a></li>
                    </ul>
                </div>
                <div class="nav_right">
                    <form>
                        <input type="text">
                    </form>
                </div>
            </div><!--nav结束-->
            <div class="top_right" id="login_is">
                <a href="<%=path%>/login">登录</a>
                <a href="#">注册</a>
            </div>
        </div><!--wrap1结束-->
    <div class="top_right">

    </div>
</div>


<div class="text">
    <h1>学习资料下载</h1>
    <table border="1" cellspacing="0">
        <tr>
            <th><pre>第一章 ****            <a href="<%=path%>/static/txt/java.docx" download="java.docx">点击下载</a></pre></th>
        </tr>
        <tr>
            <td><pre>第二章 ****            <a href="<%=path%>/static/txt/java.docx" download="java.docx">点击下载</a></pre></td>
        </tr>
        <tr>
            <td><pre>第三章 ****            <a href="<%=path%>/static/txt/java.docx" download="java.docx">点击下载</a></pre></td>
        </tr>
        <tr>
            <td><pre>第四章 ****            <a href="<%=path%>/static/txt/java.docx" download="java.docx">点击下载</a></pre></td>
        </tr>
        <tr>
            <td><pre>第五章 ****            <a href="<%=path%>/static/txt/java.docx" download="java.docx">点击下载</a></pre></td>
        </tr>
        <tr>
            <td><pre>第六章 ****            <a href="<%=path%>/static/txt/java.docx" download="java.docx">点击下载</a></pre></td>
        </tr>
        <tr>
            <td><pre>第七章 ****            <a href="<%=path%>/static/txt/java.docx" download="java.docx">点击下载</a></pre></td>
        </tr>
        <tr>
            <td><pre>第八章 ****            <a href="<%=path%>/static/txt/java.docx" download="java.docx">点击下载</a></pre></td>
        </tr>
    </table>
</div>
</body>
</html>
