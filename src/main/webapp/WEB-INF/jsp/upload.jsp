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
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>上传</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <style type="text/css">
        body {
            text-align: center;
            font-family: Arial;
            font-size: 14px;
            background: linear-gradient(to top, #F5F5DC, #F5F5DC);
        }

        .text {
            margin-left: 5px;
            line-height: 10px;
            font-size: 15px;
            font-family: 微软雅黑;
        }

        a {
            text-decoration: none;
        }

        input {
            width: 270px;
            height: 50px;
            margin-top: 250px;
            padding: 0 15px;
            box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.1) inset;
            text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
            background: rgba(45, 45, 45, .15);
            border-radius: 6px;
            font-size: 14px;
            color: white;
        }

        input:focus {
            outline: 0;
        }

        input[type="submit"] {
            cursor: pointer;
            width: 100px;
            height: 50px;
            background: rgba(5, 46, 255, 0.71);
            border-radius: 6px;
            border: 0;
            font-weight: 700;
            text-shadow: 0 1px 2px black;
        }

        input[type="submit"]:hover {
            box-shadow: 0 15px 30px 0 rgba(255, 255, 255, .15) inset;
        }

        input[type="file"] {
            position: absolute;
            font-size: 5px;
            left: 565px;
            top: 80px;
            opacity: 0;
        }

        input[type="file"]:hover {
            outline: 0;
        }

        .wrap1 {
            width: 100%;
            height: 70px;
            background-color: #333333;
        }

        .top_left {
            float: left;
            height: 70px;
            width: 180px;
            /*border:1px solid red;*/
        }

        .nav {
            width: 900px;
            height: 70px;
            float: left;
            /*border:1px solid red;*/
        }

        .nav_left {
            float: left;
        }

        .nav_left li {
            height: 70px;
            width: 110px;
            float: left;
            list-style-type: none;
            text-align: center;
            line-height: 70px;
            font-size: 14px;
            font-family: 微软雅黑;
        }

        .nav_left a:link, .nav_left a:visited {
            text-decoration: none;
            color: white;
        }

        .nav_left a:hover, .nav_left a:active {
            text-decoration: none;
            color: yellow;
        }

        .nav_right {
            width: 200px;
            float: left;
        }

        .nav_right input[type="text"] {
            height: 20px;
            margin-top: 27px;
            float: left;
            width: 150px;
            background: url("images/search.jpg") no-repeat right center;
            background-color: white;
            padding-right: 25px;
        }

        .top_right {
            /*border:1px solid red;*/
            float: left;
            width: 90px;
            height: 25px;
            padding-top: 45px;
            padding-left: 90px;
        }

        .top_right a {
            font-family: 微软雅黑;
            text-decoration: none;
        }

        .top_right a:link, .top_right a:visited {
            color: #8e8e8e;
        }

        .top_right a:hover, .top_right a:active {
            color: red;
        }

        .plate {
            width: 300px;
            height: 400px;
            position: fixed;
            margin-top: -200px;
            float: left;
            background: #f3f3f3;
            border: 2px solid #e8e8e8;
        }

        .plate1 {
            width: 1000px;
            height: 50px;
            position: fixed;
            margin-top: -250px;
            margin-left: 350px;
            background: #f3f3f3;
            border: 2px solid #e8e8e8;
        }
    </style>
</head>
<body>
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
    </div><!--wrap1_2结束-->
<div class="file-box">
    <form action="<%=path%>/file/uploadAfter" method="post" enctype="multipart/form-data">
        <input type='text' name='textfield' id='textfield' value="请选择上传文件"/>
        <input type="file" name="file" class="file" id="fileField" size="28"
               onchange="document.getElementById('textfield').value=this.value"/>
        <input type="submit" name="submit" id="submit" class="btn" value="上传"/>
    </form>
</div>
<div class="plate">
    <div class="text">
        <p>当前作业
        <p>
        <ul type="square">
            <li><a href="课件" download="42016.png">
                <pre>第一章 ****                   </pre>
            </a></li>
            <li><a href="课件" download="42016.png">
                <pre>第二章 ****                   </pre>
            </a></li>
            <li><a href="课件" download="42016.png">
                <pre>第三章 ****                   </pre>
            </a></li>
            <li><a href="课件" download="42016.png">
                <pre>第四章 ****                   </pre>
            </a></li>
            <li><a href="课件" download="42016.png">
                <pre>第五章 ****                   </pre>
            </a></li>
            <li><a href="课件" download="42016.png">
                <pre>第六章 ****                   </pre>
            </a></li>
            <li><a href="课件" download="42016.png">
                <pre>第七章 ****                   </pre>
            </a></li>
            <li><a href="课件" download="42016.png">
                <pre>第八章 ****                   </pre>
            </a></li>
        </ul>
    </div>
</div>
<div class="plate1">
    <pre>提交截止日期:    2018.6.1————2018.6.30</pre>
</div>

<script type="text/javascript">


    if ("${upload}" == "yes") {
        alert("上传成功");
        "${upload}"==""
    }
    else if ("${upload}" == "no") {
        alert("上传失败");
        "${upload}"==""
    }

    else if ("${upload}"=="") {
        alert("请选择上传文件");
    }


</script>
</body>
</html>
