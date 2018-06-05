<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%String path = request.getContextPath();%>
<!doctype html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>/static/css/login_style.css" />

</head>
<body>

<div class="login">
    <h1>用户登录</h1>
    <form action="<%=path%>/successLogin" method="post" id="loginForm" >
        <div>
            <input type="text" name="username" id="username" class="username" placeholder="用户名" autocomplete="false"/>
            <input type="password" name="password" id="password" class="password" placeholder="密码"  />
        </div>

        <input type="submit" id="submit" value="Login" >
    </form>
</div>

<script>
    if("${error}"=="error"){
        document.getElementById("submit").value = "用户名或密码错误";
        document.getElementById("submit").style.background = 'red';
    }
    if("${errorLogin}"=="errorLogin"){
        alert("请您先登录才能聊天")
    }

</script>
</body>
</html>
