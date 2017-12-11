<%@ page
	language="java"
	contentType="text/html; UTF-8"
    pageEncoding="UTF-8"
%>
<%
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
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>TEST</title>
	<link rel="stylesheet" type="text/css" href="css/info.css" />
	<style>
	</style>
</head>
<body>
  <div id="head_main">
	  <div id="head_text">TEST</div>
    </div>
    
  <div>
	<!--给你留空的部分!-->
  </div>
  
  <div id="info_main">
     <div id="info_bg"></div>
      <div id="info_inner">
      	<h1><%=title_call_to_movie %></h1>
	    <h3><%=tagline %></h3>
		<h1 id="score"><%=score %></h1>
	    <img id="info_img" src="<%=movie_src %>" id="info_inner_img">
	    <div id="info_text">
		  <%=movie_introduction %>
	    </div>
      </div>
	</div>
	
	<div id="dividing_line"></div>
	
	<div id="comment">
		<p id="num_of_comments"><%=num_comment %>评论</p>
		<div id="user_comment">
			<img width=40px height="40px" src="<%=my_img %>">
			<textarea id="input_area" cols="80" name="msg" rows="5" placeholder="请自觉遵守互联网相关的政策法规，严禁发布色情、暴力、反动的言论。"></textarea>
			<button type="submit" id="comment_submit" name="submit" value="OK">发表评论</button>
			<div id="rating">
				<p>
				<input type="radio" name="level" value="1">1星
				<input type="radio" name="level" value="2">2星
				<input type="radio" name="level" value="3">3星
				<input type="radio" name="level" value="4">4星
				<input type="radio" name="level" value="5">5星
				</p>
			</div>
			<p>图片：<input type="file" name="file" size=24></p>
		</div>
		<div class="list_item">
			<div><img class="user_img" width=40px height="40px" src="<%=user_img[0]%>"></div>
			<div class="list_content">
				<p class="user_name"><%=user_name[0] %></p>
				<p class="comment_content"><%=user_comment[0] %></p>
				<div class="info">
					<span><%=user_No[0] %></span><span class="star"><%=user_star[0] %></span><span><%=user_time[0] %></span><span><a href="#">加入黑名单</a></span><span><a href="#">举报</a></span><span><a href="#">删除</a></span>
				</div>
			</div>
		</div>
		<div class="list_item">
			<div><img class="user_img" width=40px height="40px" src="<%=user_img[1]%>"></div>
			<div class="list_content">
				<p class="user_name"><%=user_name[1] %></p>
				<p class="comment_content"><%=user_comment[1] %></p>
				<div class="info">
					<span><%=user_No[1] %></span><span class="star"><%=user_star[1] %></span><span><%=user_time[1] %></span><span><a href="#">加入黑名单</a></span><span><a href="#">举报</a></span><span><a href="#">删除</a></span>
				</div>
			</div>
		</div>
		<div class="list_item">
			<div><img class="user_img" width=40px height="40px" src="<%=user_img[2]%>"></div>
			<div class="list_content">
				<p class="user_name"><%=user_name[2] %></p>
				<p class="comment_content"><%=user_comment[2] %></p>
				<div class="info">
					<span><%=user_No[2] %></span><span class="star"><%=user_star[2] %></span><span><%=user_time[2] %></span><span><a href="#">加入黑名单</a></span><span><a href="#">举报</a></span><span><a href="#">删除</a></span>
				</div>
			</div>
		</div>
		<div class="list_item">
			<div><img class="user_img" width=40px height="40px" src="<%=user_img[3]%>"></div>
			<div class="list_content">
				<p class="user_name"><%=user_name[3] %></p>
				<p class="comment_content"><%=user_comment[3] %></p>
				<div class="info">
					<span><%=user_No[3] %></span><span class="star"><%=user_star[3] %></span><span><%=user_time[3] %></span><span><a href="#">加入黑名单</a></span><span><a href="#">举报</a></span><span><a href="#">删除</a></span>
				</div>
			</div>
		</div>
		<div class="list_item">
			<div><img class="user_img" width=40px height="40px" src="<%=user_img[4]%>"></div>
			<div class="list_content">
				<p class="user_name"><%=user_name[4] %></p>
				<p class="comment_content"><%=user_comment[4] %></p>
				<div class="info">
					<span><%=user_No[4] %></span><span class="star"><%=user_star[4] %></span><span><%=user_time[4] %></span><span><a href="#">加入黑名单</a></span><span><a href="#">举报</a></span><span><a href="#">删除</a></span>
				</div>
			</div>
		</div>
	</div>
	
	<div id="rand_recommend">
		<h2>随机推荐</h2>
		<a href="#" id="previous_page">上一页</a>
		<a href="#" id="next_page">下一页</a>
		<div class="recommend_item">
			<a href="#"><img width="150px" height="225px" src="<%=recommend_img[0] %>"></a>
			<p><a href="#"><%=recommend_name[0] %></a></p>
		</div>
		<div class="recommend_item">
			<a href="#"><img width="150px" height="225px" src="<%=recommend_img[1] %>"></a>
			<p><a href="#"><%=recommend_name[1] %></a></p>
		</div>
		<div class="recommend_item">
			<a href="#"><img width="150px" height="225px" src="<%=recommend_img[2] %>"></a>
			<p><a href="#"><%=recommend_name[2] %></a></p>
		</div>
		<div class="recommend_item">
			<a href="#"><img width="150px" height="225px" src="<%=recommend_img[3] %>"></a>
			<p><a href="#"><%=recommend_name[3] %></a></p>
		</div>
		<div class="recommend_item">
			<a href="#"><img width="150px" height="225px" src="<%=recommend_img[4] %>"></a>
			<p><a href="#"><%=recommend_name[4] %></a></p>
		</div>
	</div>
	
	<div id="foot">
		<p>联系我们:123456@test.com</p>
		<p>© 2017 SYSU. All rights reserved.</p>
	</div>
	
</body>
</html>