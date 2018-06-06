<%--
  Created by IntelliJ IDEA.
  User: hly
  Date: 2018/6/5
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>actualCombat</title>
    <link href="<%=path%>/static/css/actualCombat.css" rel="stylesheet" type="text/css"/>
    <link href="<%=path%>/static/css/HOME-CSS.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div>
    <div class="wrap1">
        <div class="top_left"></div>
        <div class="nav">
            <div class="nav_left">
                <ul>
                    <li><a href="<%=path%>/HOME"target="_blank">首页</a></li>
                    <li><a href="<%=path%>/actualCombat">精品课程</a></li>
                    <li><a href="<%=path%>/chat"target="_blank">在线交流</a></li>
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
        <div class="top_right">
            <a href="#">登录</a>
            <a href="#">注册</a>
        </div>
    </div><!--wrap1结束-->
    <div class="skill_nav">
        <div class="technology">
            <ul>
                <li><a class="active" href="#">全部</a></li>
                <li><a href="#">前端开发</a></li>
                <li><a href="#">后端开发</a></li>
                <li><a href="#">大数据&云计算</a></li>
                <li><a href="#">区块链开发</a></li>
                <li><a href="#">深度学习</a></li>
                <li><a href="#">机器学习</a></li>
                <li><a href="#">人工智能</a></li>
                <li><a href="#">运维/测试</a></li>
            </ul>
        </div>
    </div>

    <div class="skill_all">
        <ul>
            <li><a class="active" href="#">不限</a></li>
            <li><a href="#">大数据</a></li>
            <li><a href="#">人工智能</a></li>
            <li><a href="#">机器学习</a></li>
            <li><a href="#">深度学习</a></li>
            <li><a href="#">区块链</a></li>
            <li><a href="#">大数据</a></li>
            <li><a href="#">云计算</a></li>
            <li><a href="#">微服务</a></li>
            <li><a href="#">Linux</a></li>
            <li><a href="#">Java</a></li>
            <li><a href="#">C++</a></li>
            <li><a href="#">Python</a></li>
            <li><a href="#">Go</a></li>
            <li><a href="#">Android</a></li>
            <li><a href="#">SQL</a></li>
            <li><a href="#">IOS</a></li>
            <li><a href="#">Angular</a></li>
            <li><a href="#">CSS</a></li>
            <li><a href="#">JavaScript</a></li>
            <li><a href="#">JQuery</a></li>
            <li><a href="#">SpringBoot</a></li>
            <li><a href="#">Redis</a></li>
            <li><a href="#">MongoDB</a></li>
            <li><a href="#">Spring</a></li>
            <li><a href="#">SpringMVC</a></li>
            <li><a href="#">Mybatis</a></li>
            <li><a href="#">SpringCloud</a></li>
            <li><a href="#">Hibernate</a></li>
            <li><a href="#">Struct2</a></li>
            <li><a href="#">Netty</a></li>
        </ul>
    </div>
    <hr/>
    <div class="skill_all">
        <ul>
            <li><a class="active" href="#">默认排序</a></li>
            <li><a href="#">最新</a></li>
            <li><a href="#">最好</a></li>
            <li><a href="#">评价</a></li>
        </ul>
    </div>

    <div class="skill_video">
        <ul>
            <li>
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_21.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li>
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_22.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li>
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_23.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li class="not_margin_right">
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_24.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li>
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_25.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li>
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_26.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li>
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_27.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li class="not_margin_right">
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_28.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li>
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_29.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li>
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_30.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#">$299<span><span class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></span></a>
                    </div>
                </div>
            </li>

            <li>
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_27.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>
                </div>
            </li>

            <li class="not_margin_right">
                <div class="single_video">
                    <figure>
                        <a href="<%=path%>/static/video/java.mp4"><img src="<%=path%>/static/img/img_25.jpg"></a>
                    </figure>
                    <div><a class="skill_video_title" href="#" title="SSM框架最详细分析与实战">SSM框架最详细分析与实战</a></div>

                    <div class="evaluate">
                        <a href="#"><span>高级</span>&nbsp&nbsp&nbsp<img src="<%=path%>/static/img/ren.png"><span>1000</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span>评价:</span><span>10分</span></a>
                    </div>
                    <div class="describe">
                        SSM框架，是Spring + Spring MVC + MyBatis的缩写，这个是继SSH之后，目前主流的Java EE企业级框架，适用于搭建各种大型的企业级应用系统。
                    </div>

                    <div class="video_pay">
                        <a href="#"><span class="video_pay_span_left">$299</span><span
                                class="video_pay_span_right"><span>收藏</span>&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp<span>加购物车</span></span></a>
                    </div>

                </div>
            </li>
        </ul>
    </div>
    <!--分页-->
    <div class="page">
        <ul class="pagination">
            <li><a href="#">首页</a></li>
            <li><a href="#">上一页</a></li>
            <li><a class="active" href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">下一页</a></li>
            <li><a href="#">尾页</a></li>
        </ul>
    </div>
    <!--页脚-->
    <div class="foot">
        <ul>
            <li><a href="https://blog.csdn.net/sirius_hly">联系作者</a></li>
            <li><a href="#">网站首页</a></li>
            <li><a href="#">企业合作</a></li>
            <li><a href="#">人才招聘</a></li>
            <li><a href="#">招程序猿</a></li>
            <li><a href="#">常见问题</a></li>
            <li><a href="#">意见反馈</a></li>
            <li><a href="#">拜师求学</a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
        </ul>
        <div id="ower">
            Copyright&nbsp&copy&nbsp2018&nbsp huangliangyun.top &nbspAll Rights Reserved&nbsp|&nbsp琼&nbspICP备01号
        </div>

    </div>

</div>
</body>
</html>