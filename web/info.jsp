<%@ page
	language="java"
	contentType="text/html; UTF-8"
    pageEncoding="UTF-8"
%>
<%
	String user_id = (String)session.getAttribute("user_id");//用户id
	String Login="Loign";//登陆后显示用户名
	String title_call_to_movie,tagline,score,movie_src,movie_introduction,num_comment,my_img=new String();
	title_call_to_movie="Men In Black Trilogy"; //电影名称
	tagline="NOW ON 4K ULTRA HD™"; //二级标题，tag一类的东西
	score="5.0分"; //电影评分
	movie_src="onesheet.jpg"; //电影图片src
	movie_introduction="test test test"; //电影简介
	num_comment="4396"; //总评论数
	my_img="头像2.0.png"; //已登录用户的头像(就是准备发布评论的人的头像)
	
	//以下为其他用户评论的变量
	String[] user_name=new String[5];//用户ID
	String[] user_img=new String[5];//用户头像
	String[] user_comment=new String[5];//用户评论内容
	String[] user_No=new String[5];//用户编号
	String[] user_time=new String[5];//用户评论时间
	String[] user_star=new String[5];//该用户评星
	for(int i=0;i<5;i++){ //初始化
	    user_name[i]="用户"+(i+1)+"ID";
	    user_img[i]="头像2.0.png";
	    user_comment[i]="用户"+(i+1)+"评论内容";
	    user_No[i]="#"+(i+1);
	    user_time[i]="2017.12.11 20:00";
	    user_star[i]="★★";
	}
	
	//随机推荐部分变量
	String[] recommend_img=new String[5];//随机推荐电影的图片
	String[] recommend_name=new String[5];//随机推荐电影的名称
	for(int i=0;i<5;i++){ //初始化
	    recommend_img[i]="推荐.jpg";
	    recommend_name[i]="Men In Black";
	}
%>
<!DOCTYPE  html>
<html  lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>TEST</title>

    <link rel="stylesheet" type="text/css" href="css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/info.css" />
    <script src="js/info.js"></script>
    <style>
    </style>

</head>
<body >
<div id="bk_outer">
    <img src="onesheet.jpg" id="main_bk">
</div>

<div id="header_outer">
    <div id="header" class="wrapper">
        <p>网站名字啊</p>
        <a href="#"><i class="fa fa-user-circle-o"></i> Login</a>
    </div><!--header-->
</div> <!--header_outer-->

<div id="nav_outer">
    <div id="nav_in" class="wrapper">
        <div id="logo"><a href="index.jsp"></a></div>
        <div id="main_nav">
            <ul id="nav">
                <li><a href="search.jsp?types=movie">电影</a>
                    <ul class="subnav">
                        <li><a href="search.jsp?types=movie&sort=hot">时下流行</a></li>
                        <li><a href="search.jsp?types=movie&sort=data">新片上映</a></li>
                        <li><a href="search.jsp?types=movie&sort=score">最佳口碑</a></li>
                        <li><a href="search.jsp?types=movie&sort=max">热议影片</a></li>
                    </ul>
                </li>
                <li><a href="search.jsp?types=TV">电视</a>
                    <ul class="subnav">
                        <li><a href="search.jsp?types=TV&sort=hot">时下流行</a></li>
                        <li><a href="search.jsp?types=TV&sort=data">新片上映</a></li>
                        <li><a href="search.jsp?types=TV&sort=score">最佳口碑</a></li>
                        <li><a href="search.jsp?types=TV&sort=max">热议影片</a></li>
                    </ul>
                </li>
                <li><a href="search.jsp?sort=hot">热评影视剧</a></li>
                <li><a href="#">发现</a></li>
            </ul>
        </div>
        <div id="serach">
            <form  action="search.jsp" method="get">
                <input type="text"  name="content" id="content" autocomplete="off" value="">
                <input type="submit" id="submit" name="submit" value="">
                <i class="fa fa-search fa-1x"></i>
            </form>
        </div>
    </div>
</div>
<div id="info_main">
    <div id="info_inner">
        <h1>Men In Black Trilogy</h1>
        <h3>NOW ON 4K ULTRA HD™</h3>
        <p id="score">5.0</p>
        <img id="info_img" src="onesheet.jpg" id="info_inner_img">
        <div id="info_text">
            just test
        </div>
    </div>
</div>
<div id="comment_outer">
    <div id="comment">
        <p id="num_of_comments">xxx评论</p>
        <div id="user_comment">
            <img id="face_img" src="头像2.0.png">
            <form action="info.html" method="post" id="comment_form">
                <textarea id="input_area"  rows="5" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情、暴力、反动的言论。"></textarea>
                <button type="submit" id="comment_submit" name="submit" value="OK">发表评论</button>
                <div id="rating" >
                    <p>
                        <input type="radio" name="level" value="1">
                        <input type="radio" name="level" value="2">
                        <input type="radio" name="level" value="3" checked>
                        <input type="radio" name="level" value="4">
                        <input type="radio" name="level" value="5">
                    </p>
                </div>
                <div id ="real_star">
                    <span><i name="real_star" class="fa fa-star"  onMouseMove="onmovestart(1)"></i></span>
                    <span><i name="real_star" class="fa fa-star" onMouseMove="onmovestart(2)"></i></span>
                    <span><i name="real_star" class="fa fa-star" onMouseMove="onmovestart(3)"
                    ></i></span>
                    <span><i name="real_star" class="fa fa-star-o" onMouseMove="onmovestart(4)"></i></span>
                    <span><i name="real_star" class="fa fa-star-o" onMouseMove="onmovestart(5)"></i></span>
                </div>
                <p  id="upfile">点击上传图片<input type="file" name="file"></p>
            </form>
        </div>
        <div class="list_item" name="list_item">
            <div>
                <img class="user_img" src="头像2.0.png"></div>
            <div class="list_content">
                <p class="user_name">用户1姓名</p>
                <p class="comment_content">用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容用户1评论内容</p>

            </div>
            <div class="info">
                <div class="floot">
                    #1
                </div>
                <div class="comment_stat">
                    <span name="star_add" ><script>star_add(0,3)</script></span>
                </div>
                <div class="comment_time">
                    30分钟前
                </div>
                <div class="comment_select">
                    <a href="#">加入黑名单</a>
                    <a  href="#">举报</a>
                    <a  href="#">删除</a>
                </div>
            </div>
        </div>
        <div class="list_item" name="list_item">
            <div><img class="user_img" src="头像2.0.png"></div>
            <div class="list_content">
                <p class="user_name">用户2姓名</p>
                <p class="comment_content">用户2评论内容用户2评论内容用户2评论内容</p>

            </div>
            <div class="info">
                <div class="floot">
                    #1
                </div>
                <div class="comment_stat">
                    <span name="star_add"><script>star_add(1,3)</script></span>
                </div>
                <div class="comment_time">
                    30分钟前
                </div>
                <div class="comment_select">
                    <a href="#">加入黑名单</a>
                    <a  href="#">举报</a>
                    <a  href="#">删除</a>
                </div>
            </div>
        </div>
        <div class="list_item" name="list_item">
            <div><img class="user_img"  src="头像2.0.png"></div>
            <div class="list_content">
                <p class="user_name">用户3姓名</p>
                <p class="comment_content">用户3评论内容</p>

            </div>
            <div class="info">
                <div class="floot">
                    #1
                </div>
                <div class="comment_stat">
                    <span name="star_add"><script>star_add(2,3)</script></i></span>
                </div>
                <div class="comment_time">
                    30分钟前
                </div>
                <div class="comment_select">
                    <a href="#">加入黑名单</a>
                    <a  href="#">举报</a>
                    <a  href="#">删除</a>
                </div>
            </div>
        </div>
        <div class="list_item" name="list_item">
            <div><img class="user_img"  src="头像2.0.png"></div>
            <div class="list_content">
                <p class="user_name">用户4姓名</p>
                <p class="comment_content">用户4评论内容</p>

            </div>
            <div class="info">
                <div class="floot">
                    #1
                </div>
                <div class="comment_stat">
                    <span name="star_add"><script>star_add(3,3)</script></span>
                </div>
                <div class="comment_time">
                    30分钟前
                </div>
                <div class="comment_select">
                    <a href="#">加入黑名单</a>
                    <a  href="#">举报</a>
                    <a  href="#">删除</a>
                </div>
            </div>
        </div>
        <div class="list_item" name="list_item">
            <div><img class="user_img" src="头像2.0.png"></div>
            <div class="list_content">
                <p class="user_name">用户5姓名</p>
                <p class="comment_content">用户5评论内容用户5评论内容用户5评论内容用户5评论内容用户5评论内容用户5评论内容用户5评论内容用户5评论内容用户5评论内容</p>

            </div>
            <div class="info">
                <div class="floot">
                    #1
                </div>
                <div class="comment_stat">
                    <span name="star_add"><script>star_add(4,3)</script></span>
                </div>
                <div class="comment_time">
                    30分钟前
                </div>
                <div class="comment_select">
                    <a href="#">加入黑名单</a>
                    <a  href="#">举报</a>
                    <a  href="#">删除</a>
                </div>
            </div>
        </div>
        <a href="#" id="next_page"  class="page">下一页</a>
        <a href="#" id="pre_page" class="page">上一页</a>

    </div>
</div>
<div id="footer_outer">
    <div id="footer">

    </div>
</div>
</body>
</html>
