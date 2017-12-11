<%--
  Created by IntelliJ IDEA.
  User: Chonor
  Date: 2017/12/11
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML>
<html  lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>xxxxx</title>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/index_.css" />

</head>
<body>
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
                <li><a href="#">电影</a>
                    <ul class="subnav">
                        <li><a href="#">精选</a></li>
                        <li><a href="#">即将上映</a></li>
                        <li><a href="#">上映中</a></li>
                        <li><a href="#">..加东西</a></li>
                    </ul>
                </li>
                <li><a href="#">电视</a>
                    <ul class="subnav">
                        <li><a href="#">精选</a></li>
                        <li><a href="#">即将上映</a></li>
                        <li><a href="#">上映中</a></li>
                        <li><a href="#">..加东西</a></li>
                    </ul>
                </li>
                <li><a href="#">热评影视剧</a></li>
                <li><a href="#">发现</a></li>
            </ul>
        </div>
        <div id="serach">
            <form  action="search" method="get">
                <input type="text"  name="content" id="content" autocomplete="off">
                <input type="submit" id="submit"  value="">
                <i class="fa fa-search fa-1x"></i>
            </form>
        </div>
    </div>
</div>

<div id="display_outer">
    <div id="display_in">
        <div id="img_outer">
            <img id="main_img" src="tmp.jpg" >
        </div>
        <div id="display_select">
            <ul class="displaysub">
                <li><a ><i class="fa fa-chevron-circle-left" onclick="onclickpos(0)"></i></a></li>
                <li><a href="#"><i id="select1" class="fa fa-circle-o" onmousemove="mousemovein(1)" ></i></a></li>
                <li><a href="#"><i id="select2" class="fa fa-circle-o" onmousemove="mousemovein(2)" ></i></a></li>
                <li><a href="#"><i id="select3" class="fa fa-circle-o" onMouseMove="mousemovein(3)" ></i></a></li>
                <li><a href="#"><i id="select4" class="fa fa-circle-o" onMouseMove="mousemovein(4)"></i></a></li>
                <li><a><em class="fa fa-chevron-circle-right" onClick="onclickpos(1)"></em></a></li>
            </ul>
        </div>
    </div>
</div>

<div id="featured">
    <div id="featured_sub">
        <p>本周精选</p>
        <ul class="subshow">
            <li><img src="onesheet.jpg"><a href="#">精选</a></li>
            <li><img src="onesheet.jpg"><a href="#">即将上映</a></li>
            <li><img src="onesheet.jpg"><a href="#">上映中</a></li>
            <li><img src="onesheet.jpg"><a href="#">..加东西</a></li>
        </ul>
    </div>
</div>

<div id="today_outer">
    <div id="today">
        <hr>
        <a href="#">今日推荐</a>
        <iframe width="800" height="400" src="https://www.youtube.com/embed/vn9mMeWcgoM" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
    </div>
</div>

<div id="footer_outer">
    <div id="footer">

    </div>
</div>
</body>
</html>
<script  type="text/javascript">
    var pos=1;
    document.getElementById("select1").className="fa fa-circle";

    function changeSrc(i)
    {
        if(i==1)document.getElementById("main_img").src="onesheet.jpg";
        else if(i==2)document.getElementById("main_img").src="onesheet.jpg";
        else if(i==3)document.getElementById("main_img").src="onesheet.jpg";
        else if(i==4)document.getElementById("main_img").src="onesheet.jpg";
    }

    function mousemovein(i) {
        if (i == 1) {
            document.getElementById("select1").className = "fa fa-circle";
            document.getElementById("select2").className = "fa fa-circle-o";
            document.getElementById("select3").className = "fa fa-circle-o";
            document.getElementById("select4").className = "fa fa-circle-o";
        }
        else if (i == 2) {
            document.getElementById("select1").className = "fa fa-circle-o";
            document.getElementById("select2").className = "fa fa-circle";
            document.getElementById("select3").className = "fa fa-circle-o";
            document.getElementById("select4").className = "fa fa-circle-o";
        }
        else if (i == 3) {
            document.getElementById("select1").className = "fa fa-circle-o";
            document.getElementById("select2").className = "fa fa-circle-o";
            document.getElementById("select3").className = "fa fa-circle";
            document.getElementById("select4").className = "fa fa-circle-o";
        }
        else {
            document.getElementById("select1").className = "fa fa-circle-o";
            document.getElementById("select2").className = "fa fa-circle-o";
            document.getElementById("select3").className = "fa fa-circle-o";
            document.getElementById("select4").className = "fa fa-circle";
        }
        pos = i;
        changeSrc(pos);

    }
    function changepos(){
        pos=pos+1;
        if(pos==5)pos=1;
        if(pos==1){
            document.getElementById("select1").className="fa fa-circle";
            document.getElementById("select4").className="fa fa-circle-o";
        }
        else if(pos==2){
            document.getElementById("select1").className="fa fa-circle-o";
            document.getElementById("select2").className="fa fa-circle";
        }
        else if(pos==3){
            document.getElementById("select3").className="fa fa-circle";
            document.getElementById("select2").className="fa fa-circle-o";
        }
        else {
            document.getElementById("select4").className="fa fa-circle";
            document.getElementById("select3").className="fa fa-circle-o";
        }
        changeSrc(pos);
    }

    function onclickpos(i){
        if(i==1)pos=pos+1;
        else pos=pos-1;
        if(pos==5)pos=1;
        if(pos==0)pos=4;
        mousemovein(pos);
    }
    var t1 = window.setInterval(changepos,10000);
</script>
