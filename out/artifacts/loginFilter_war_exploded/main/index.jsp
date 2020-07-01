<%--
  Created by IntelliJ IDEA.
  User: HHY
  Date: 2020/6/29
  Time: 3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>IDomino的博客</title>

    <style scoped>
        *{
            margin: 0px;
            padding:0px;
            list-style: none;
            text-decoration: none;
        }
        #flash{
            width: 100%;
            height: 440px;
            margin: 0 auto;
            position: relative;

        }
        #flash img{
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0px;
            top: 0px;
            display: none;
        }
        #flash ul{
            width: 150px;
            height: 25px;
            border-radius: 20px;
            background-color:rgba(255,255,255,0.5);
            position: absolute;
            left: 41%;
            bottom: 10%;
        }
        #flash ul li{
            width: 12px;
            height: 12px;
            margin-top:5px;
            background-color: #fff;
            border-radius: 50%;
            margin-left: 15px;
            float: left;
        }
        #flash ul .li_1{
            background-color: #f40;
        }
        #flash .span-r{
            width: 50px;
            height: 50px;
            border-radius: 50%;
            position: absolute;
            right: 2%;
            top: 45%;
            background-color: rgba(255,255,255,0.5);
        }
        #flash .span-r span{
            width: 100%;
            height:100%;
            color:rgba(0,0,0,0.5);
            font-size: xx-large;
            font-weight: 700;
            line-height: 50px;
            margin-left: 6px;
            cursor: pointer;
        }
        #flash .span-l{
            width: 50px;
            height: 50px;
            border-radius: 50%;
            position: absolute;
            left: 2%;
            top: 45%;
            background-color: rgba(255,255,255,0.5);
        }
        #flash .span-l span{
            width: 100%;
            height:100%;
            color:rgba(0,0,0,0.5);
            font-size: xx-large;
            font-weight: 700;
            line-height: 50px;
            margin-left: 1px;
            cursor: pointer;
        }
        h3{
            margin-left: 250px;

            text-align: left;

        }


    </style>

</head>
<body style="width: 100%;background-color: rgb(243, 242, 242);">
<div id="header" style="width:100%;height: 60px;;background-color: rgb(255, 255, 255);">
    <div >

        <img src="../img/1.JPG" class="img-responsive img-circle" alt="Cinque Terre" width="50" height="50" style="float: left;margin-left: 20px;margin-top: 4px;">
    </div>
    <div style="float: left;margin-top: 11px;">
        <span style="margin-left: 20px;font-size: 25px;color: rgb(151, 224, 247);">欢迎浏览IDomino的博客</span>
    </div>
    <div style="float: right;margin-right: 5px;height: 60px;">
        <p style="font-size: 22px;color:rgb(151, 224, 247);margin-top: 13px;"><span class="glyphicon glyphicon-asterisk" aria-hidden="true" ></span>已登录</p>

    </div>

</div>
<center>
    <div id="home" style="width: 60%;vertical-align:middle;margin-top: 15px;">
        <div id="content" style="height:1100px;width:70%;float:left;">
            <div id="flash">
                <img src="../img/24.JPG" alt="" style="display: block;">
                <img src="../img/20.JPG" alt="" >
                <img src="../img/21.JPG" alt="">
                <img src="../img/22.JPG" alt="">
                <img src="../img/23.JPG" alt="" >
                <ul>
                    <li class="li_1"></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <div class="span-r">
                    <span>></span>
                </div>
                <div class="span-l">
                    <span><</span>
                </div>
            </div>

            <div id="pic" style="height: 630px;margin-top: 15px;">

                <div id="info_1" style="background-color: rgb(255, 255, 255);;height: 200px;">
                    <img src="../img/30.JPG" class="img-rounded" style="float: left; width: 200px; height: 200px;">
                    <br>
                    <h1>个人简介 <br><small>2018100729 齐荣晖</small></h1>
                </div>

                <div id="info_2" style="background-color: rgb(255, 255, 255);;height: 200px;margin-top: 15px;">
                    <img src="../img/31.JPG"  class="img-rounded" style="float: left; width: 200px; height: 200px;">
                    <br>
                    <h1>项目简介 <br><small>名称：迷你个人博客<br>前后端分离项目</small></h1>
                </div>

                <div id="info_3" style="background-color: rgb(255, 255, 255);;height: 200px;margin-top: 15px;">
                    <img src="../img/32.JPG" class="img-rounded" style="float: left; width: 200px; height: 200px;">
                    <br>
                    <h1>技术交流 <br><small>E-mail：18895557307@163.com</small></h1>
                </div>

            </div>

        </div>


        <div id="introduction" style="background-color:rgb(255, 255, 255);;height:200px;width:15%;float:left;margin-left: 15px;position:fixed; right: 22%; ">
            <div style="color: rgb(151, 224, 247);">
                <h2><span class="glyphicon glyphicon-bell"></span>公告栏 <br></h2>
                <hr>
                <p>www</p>
            </div>

        </div>
    </div>

    </div>

    <div id="footer"  style="background-color:rgb(255, 255, 255);clear:both;text-align:center;height: 100px;">
        <br>
        <p style="font-size: 15px;color: rgb(151, 224, 247);">联系电话：18895557307<br>
            联系邮箱：18895557307@163.com
        </p>
    </div>
</center>



</body>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    var div = document.getElementById('flash');
    var img = div.getElementsByTagName('img');
    var ul = document.getElementsByTagName('ul')[0];
    var li = ul.getElementsByTagName('li');
    var div_r = document.getElementsByTagName('div')[1];
    var div_l = document.getElementsByTagName('div')[2];
    var len = img.length;
    var count = 0;

    function run(){ /*将定时器里的函数提取到外部*/
        count++;
        count = count==5?0:count;
        for(var i=0;i<len;i++){
            img[i].style.display = 'none';
        }
        img[count].style.display = 'block';
        for(var i=0;i<li.length;i++){
            li[i].style.backgroundColor = "#fff";
        }
        li[count].style.backgroundColor = "#f40";
    }

    var timer = setInterval(run,1000); /*定时器*/

    div.onmouseover = function(){
        clearInterval(timer);
    }

    div.onmouseleave = function(){ /*鼠标移出，轮播继续*/
        timer = setInterval(run,1000);
    }

    for(var i=0;i<len;i++){
        li[i].index = i; /*记录当前鼠标位置*/
        li[i].onmouseenter = function(){ /*鼠标经过*/
            for(var i=0;i<len;i++){
                li[i].style.background = '#fff';
                img[i].style.display = 'none';
            }
            this.style.background = '#f40';
            img[this.index].style.display = 'block';
        }
    }

    div_r.onclick = function(){
        run();
    }

    function reverse(){
        count--;
        count = count==-1?4:count;
        for(var i=0;i<len;i++){
            img[i].style.display = 'none';
        }
        img[count].style.display = 'block';
        for(var i=0;i<li.length;i++){
            li[i].style.backgroundColor = "#fff";
        }
        li[count].style.backgroundColor = "#f40";
    }

    div_l.onclick = function(){
        reverse();
    }
</script>
</html>