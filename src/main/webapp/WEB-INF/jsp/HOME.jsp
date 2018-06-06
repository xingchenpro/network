<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <meta charset="UTF-8">
    <title>山东建筑大学精品课程网</title>
    <script type="text/javascript" src="<%=path%>/static/web/js/myfocus-2.0.1.min.js"></script> <!--引入库-->
    <script type="text/javascript" src="<%=path%>/static/web/js/mf-pattern/mF_fancy.js"></script><!--引入风格js文件-->
    <link href="<%=path%>/static/web/js/mf-pattern/mF_fancy.css" rel="stylesheet" type="text/css"><!--引入风格css文件-->
    <script type="text/javascript">
        myFocus.set({
            id: 'picBox'
        })
    </script>
    <link href="<%=path%>/static/css/HOME-CSS.css" rel="stylesheet" type="text/css">
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
        <div class="wrap2">
            <div class="ad" id="picBox">
                <div class="loading"><img src="<%=path%>/static/web/images/loading.gif"></div>
                <div class="pic">
                    <ul>
                        <li><img src="<%=path%>/static/web/images/111.jpg"></li>
                        <li><img src="<%=path%>/static/web/images/113.jpg"></li>
                        <li><img src="<%=path%>/static/web/images/114.jpg"></li>
                        <li><img src="<%=path%>/static/web/images/115.jpg"></li>
                        <li><img src="<%=path%>/static/web/images/201.jpg"></li>
                    </ul>
                </div>
            </div>
        </div><!--wrap2结束-->
    </div><!--wrap1_2结束-->
    <div class="wrap3">
        <div class="main1">
            <div class="head1">
                <ul>
                    <li><img src="<%=path%>/static/web/images/head11.png"></li>
                    <li>
                        <div class="xsrm">&nbsp;&nbsp;&nbsp新&nbsp;&nbsp;&nbsp;&nbsp手&nbsp;&nbsp;&nbsp;&nbsp入&nbsp;&nbsp;&nbsp;&nbsp门&nbsp;&nbsp;&nbsp;&nbsp</div>
                    </li>
                    <li><img src="<%=path%>/static/web/images/head12.png"></li>
                </ul>
            </div>
            <div class="display1">
                <ul>
                    <li><img src="<%=path%>/static/web/images/xs11.png"></li>
                    <li><img src="<%=path%>/static/web/images/xs12.png"></li>
                </ul>
            </div>
            <div class="course1">
                <div class="course1_div_photo">
                    <div>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/web/images/xs23.png">

                            <h3>前端小白入门</h3>
                        </a></div>
                    <div class="course_div_text">
                        <span>职业路径</span>
                        <span>5步/33课</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/web/images/xs23.png">

                            <h3>java零基础入门</h3>
                        </a>
                    </div>
                    <div class="course_div_text">
                        <span>职业路径</span>
                        <span>3步/27课</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/web/images/xs23.png"></a>
                    </div>
                    <h3>spark streaming实时流处理项目</h3>
                    <div class="course_div_text">
                        <span>职业路径</span>
                        <span>5步/33课</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/xs24.png">
                    </div>
                    <h3>C++零基础入门 热门编程语言 二级考试必备</h3>
                    <div class="course_div_text">
                        <span>职业路径</span>
                        <span>5步/33课</span>
                    </div>
                </div>
                <div class="course1_div_photo_last">
                    <div>
                        <img src="<%=path%>/static/web/images/xs25.png">
                    </div>
                    <h3>微信小程序入门与实战 常用组件API开发技巧项目实战</h3>
                    <div class="course_div_text">
                        <span>职业路径</span>
                        <span>5步/33课</span>
                    </div>
                </div>
            </div>
            <div class="course1">
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/xs31.png">
                    </div>
                    <h3>Java Web 强化：SSM框架整合</h3>
                    <div class="course_div_text">
                        <span>职业路径</span>
                        <span>3步/19课</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/xs.png">
                    </div>
                    <h3>ES6快速入门</h3>
                    <div class="course_div_text">
                        <span>初级</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/xs33.png">
                    </div>
                    <h3>PHP从基础语法到原生项目开发</h3>
                    <div class="course_div_text">
                        <span>职业路径</span>
                        <span>4步/18课</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/xs34.png">
                    </div>
                    <h3>vue2.5入门</h3>
                    <div class="course_div_text">
                        <span>初级</span>
                    </div>
                </div>
                <div class="course1_div_photo_last">
                    <div>
                        <img src="<%=path%>/static/web/images/xs35.png">
                    </div>
                    <h3>毕设项目 SSM到Spring Boot 从零开发校园商铺平台</h3>
                    <div class="course_div_text">
                        <span>实战</span>
                        <span>初级</span>
                    </div>
                </div>
            </div>
        </div><!--main1结束-->
    </div><!--wrap3结束-->
    <div class="wrap4">
        <div class="main2">
            <div class="head1">
                <ul>
                    <li><img src="<%=path%>/static/web/images/ts11.png"></li>
                    <li>
                        <div class="xsrm">&nbsp;&nbsp;&nbsp技&nbsp;&nbsp;&nbsp;&nbsp能&nbsp;&nbsp;&nbsp;&nbsp提&nbsp;&nbsp;&nbsp;&nbsp升&nbsp;&nbsp;&nbsp;&nbsp</div>
                    </li>
                    <li><img src="<%=path%>/static/web/images/ts12.png"></li>
                </ul>
            </div>
            <div class="display1">
                <ul>
                    <li><img src="<%=path%>/static/web/images/jnts11.png"></li>
                    <li><img src="<%=path%>/static/web/images/jnts12.png"></li>
                </ul>
            </div>
            <div class="course1">
                <div class="course1_div_photo">
                    <div>
                        <a href="https://coding.imooc.com/class/117.html?mc_marking=e7f909396a4c3b2dcbfc0132bee8b4a4&mc_channel=syb31"></a>
                        <img src="<%=path%>/static/web/images/jnts21.png">
                    </div>
                    <h3>Spring Boot企业微信点餐系统</h3>
                    <div class="course_div_text">
                        <span>实战</span>
                        <span>中级</span>

                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/jnts22.png">
                    </div>
                    <h3>Python Flask高级编程</h3>
                    <div class="course_div_text">
                        <span>实战</span>
                        <span>中级</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/jnts23.png">
                    </div>
                    <h3>Kubernetes基础：开启云原生之门</h3>
                    <div class="course_div_text">
                        <span>中级</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/jnts24.png">
                    </div>
                    <h3>Spring Cloud微服务实战</h3>
                    <div class="course_div_text">
                        <span>实战</span>
                        <span>高级</span>
                    </div>
                </div>
                <div class="course1_div_photo_last">
                    <div>
                        <img src="<%=path%>/static/web/images/jnts25.png">
                    </div>
                    <h3>Python人工智能常用库Numpy使用入门</h3>
                    <div class="course_div_text">
                        <span>初级</span>
                    </div>
                </div>
            </div>
            <div class="course1">
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/jnts31.png">
                    </div>
                    <h3>IntelliJ IDEA神器使用技巧</h3>
                    <div class="course_div_text">
                        <span>中级</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/jnts32.png">
                    </div>
                    <h3>Java并发编程与高并发解决方案</h3>
                    <div class="course_div_text">
                        <span>实战</span>
                        <span>中级</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/jnts33.png">
                    </div>
                    <h3>iOS开发之传感器</h3>
                    <div class="course_div_text">
                        <span>高级</span>
                    </div>
                </div>
                <div class="course1_div_photo">
                    <div>
                        <img src="<%=path%>/static/web/images/jnts34.png">
                    </div>
                    <h3>Java开发企业级权限管理系统</h3>
                    <div class="course_div_text">
                        <span>实战</span>
                        <span>中级</span>
                    </div>
                </div>
                <div class="course1_div_photo_last">
                    <div>
                        <img src="<%=path%>/static/web/images/jnts35.png">
                    </div>
                    <h3>zepto设计和源码分析</h3>
                    <div class="course_div_text">
                        <span>高级</span>
                    </div>
                </div>
            </div>
        </div><!--main1结束-->
    </div><!--wrap4结束-->
    <div class="wrap5">
        <div class="footer">
            <div class="footer_left">
                <ul>
                    <li><a href="#">企业合作</a></li>
                    <li><a href="#">人才招聘</a></li>
                    <li><a href="#">联系我们</a></li>
                    <li><a href="#">讲师招募</a></li>
                    <li><a href="#">常见问题</a></li>
                    <li><a href="#">意见反馈</a></li>
                    <li><a href="#">建筑大学</a></li>
                    <li><a href="#">友情链接</a></li>
                </ul>
            </div>
            <div class="footer_right">

            </div>
        </div><!--footer结束-->
    </div><!--wrap5结束-->
</div><!--wrap结束-->
<script type="text/javascript">

    isLogin = false;
    if ("${error}" == "true") {
        document.getElementById("login_is").innerHTML = '<img style = "position:absolute; top:18px; border-radius:50%" src="<%=path%>/static/img/img_21.jpg" width="40px" height="40px" > ';

    }

</script>
</body>
</html>
