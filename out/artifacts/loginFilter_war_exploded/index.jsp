<%--
  Created by IntelliJ IDEA.
  User: HHY
  Date: 2020/6/29
  Time: 3:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <base href="${pageContext.request.contextPath}/">
  <script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
  <title>登录</title>
  <style>
    .index {
      align-items: center;
      display: flex;
      width: 100%;
      min-width: 300px;
      min-height: 500px;
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      text-align: center;
      /*background: rebeccapurple;*/
      background-image: url(img/4.jpg);
    }
    .index .ivu-row-flex {
      height: 100%;
    }
    #index_pc_bj {
      width: 100%;
      height: auto;
      background-size: cover;
      overflow: hidden;
      background-position: center center; /*box-shadow: 0 0px 3px rgba(0,0,0,.5);*/
      text-align: center;
    }
    /*具体内容*/
    .wrap_conter ul {
      position: relative;
      width: 400px;
      border-radius: 5px;
      background: #fff;
      margin: 0 auto;
    }
    .wrap_conter li {
      text-align: center;
      color: #fff;
      font-size: 12px;
      line-height: 40px;
      padding: 0 50px 0px 25px;

    }
    .content {
      color: #1548c9;
      line-height: 40px;
      display: block;
      text-align: left;
      padding: 5px 40px 5px 5px;
      margin: 0 20px 0 20px;
    }

    .wrap_conter li dl {
      width: 100%;
      margin-top: 20px;
      margin-bottom: 20px;
    }


    .ivu-form-item-content .account-list {
      width: auto;
      padding-top: 10px;
    }
    .account-list li {
      width: auto;
      display: inline-block;
    }
    .tips{
        margin: 0;
        height: 20px;
        color: darkred;
    }

  </style>
</head>
<body>

<div class="index">
  <div id="index_pc_bj">
    <form action="javascript:void(0)" method="POST" onsubmit="return login()">
      <div class="wrap_conter">
        <ul style="list-style: none;box-shadow:10px 10px 20px rgba(0,0,0,.5);">
          <li style="border-bottom: 1px solid #e9eaec;">
            <div class="content">
              <img src ="img/1.JPG" style="width: 40px;height: 40px;" align="absmiddle" />
              <span style="float:right;font-size: 25px"><Icon type="ios-log-in"></Icon>欢迎登录</span>
            </div>
          </li>
          <li style="height: 190px;">
            <dl>
              <FormItem prop="userName" >
                <input  type="text" id="username" name="mysno" maxlength="10" placeholder="学号" style="width: 250px;height: 30px;margin-top: 10px" />
                <Icon type="ios-person-outline" slot="prepend" ></Icon>
              </FormItem>
              <FormItem prop="password">
                <input  type="password" id="password" name="mypwd" maxlength="18" placeholder="密码" style="width:250px;height: 30px;margin-top: 15px">
                <Icon type="ios-lock-outline" slot="prepend"></Icon></Input>
              </FormItem>
              <div class="tips"></div>
              <FormItem>
                <input type="submit" style="width: 250px;background-color: #9cb4f0;font-size: 18px;margin-top: 15px" value="登录" />
              </FormItem>
            </dl>
          </li>
        </ul>
      </div>
    </Form>
  </div>
</div>

<script>
    function login() {
        $.ajax({
           url:'${pageContext.request.contextPath}/login',
           type:'Post',
           data:{
              username:$('#username').val(),
              password:$('#password').val()
           },
           success:function (response) {
              response = JSON.parse(response)
              if (response.status!=200){
                    $('.tips').text(response.msg)
              }else {
                 location.href = "${pageContext.request.contextPath}/main/index.jsp"
              }
           },
           error:function (error) {
             console.log(error)
           }
        })
    }
</script>

</body>

</html>
