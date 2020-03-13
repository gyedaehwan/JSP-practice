<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	
<!DOCTYPE HTML>
<style type="text/css">
   #header{
        position: relative;
        margin-left: 20%;
        margin-right: 20%;
        text-align: center;
        border: 4px groove #000;
    }
    .title{
        position: relative;
        margin: 5px ;
        padding : 0px;
        font-size: 20px;
    }
    .now_cal_time{
        position : absolute;
        top:80%;
        left:45%;
        border: 4px groove #000;
    }
    #body{
        text-align: center;
        position:relative;            
        margin-left: 20%;
        margin-right: 20%;
    }
    .left_menu{
        position : relative;
        float:left;
        text-align: left;
        border: 4px groove #000;
        width:10%;
        padding: 10px;

    }
    #main{
        position: relative;
        float:right;
        border: 4px groove #000;
        padding:10px;
    }

    .login{
        border: 5px groove #000;
        float:left;
        width:25%;
        height:20%;

    }
    .search{
        position : relative;
        border: 5px groove #000;
        float:right;
        width:70%;
        height:20%;
    }
    .main{
        position:relative;
        clear:both;
        border: 5px groove #000;
    }

</style>

<html>
<head>
    <title>daehwan홈페이지. 환영합니다.</title>
</head>
<body>
    <div id="header" role="banner">
        <div class="title">
            <h1>대환이의 홈페이지</h1>
        </div>
        <div class="now_cal_time">
            시간입력
            <!-- JSP 입력-->
        </div>

    </div>

    <div id="body" role="main">
        <section class="left_menu">
            <div class="menu_1">
                <!-- JSP 입력-->
                메뉴1
            </div>
            <div class="menu_2">
                <!-- JSP 입력-->
                메뉴2   
            </div>
            <div class="menu_3">
                <!-- JSP 입력-->
                메뉴3   
            </div>
        </section>
        


        <div id="main">
            <section class="login">
				<%if (session.getAttribute("ID") == null) { %>
					<jsp:include page="login/login.jsp" />
				<%} else { %>
					<jsp:include page="login/loginOK.jsp" />
				<%} %>
            </section>
            

           <div class="search">
           <!-- form 넣어야함 -->
               <input type="serach" name="serach" size="80">
               <input type="submit" value="검색">
           </div>
            

            <div class="main">
                <!-- JSP 입력-->
                메인입니다.
            </div>
           
  

        </div>
    </div>

</body>

</html>