<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>전라남도 화순군</title>
      <link rel="stylesheet" href="../assets/css/fontawesome.css">
    <link rel="stylesheet" href="../assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="../assets/css/owl.css">
    <link rel="stylesheet" href="../assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    
    
    
    
    
    <script src="https://kit.fontawesome.com/df89dafb93.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
	  $(".board").click(function(){
	    $(".hideboard").slideToggle("slow");
	  });
	  $(".drop").click(function(){
	    $(".ranking").slideToggle("slow");
	  });
	});
	</script>
    
    
    <style type="text/css">
 
.main-container{
	border: 1px solid rgb(214, 214, 214);
	}
.head-container img {
    object-fit: cover;                /* 사진의 가로세로 비율 맞추기 */
}
.head-container{
    display: flex;
    justify-content: space-between;
}
.main-img-container {
    width: 815px;
    height: 500px;
}
.main-img-container img {
    width: 815px; 
    height: 500px;
}
.sub-img-container{
    width: 500px;
    height: 500px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}
.sub1, .sub2 {
    display: flex;
    justify-content: space-between;
}
.sub-img-container img {
    width: 500px;
    height: 248px;
}


.body-container{
    /* background-color: yellow; */
    padding: 50px;
}
.location-name{
    font-size: 28px;
    font-weight: 900;
}
.location-eng-name{
    margin-top: -15px;
    color: gray;
    font-size: 15px;
}
.location-info{
    color: rgb(80, 80, 80);
    line-height: 21px;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
    overflow: hidden;
}

.other-info{
    margin-top: 50px;
    padding-left: 20px;
    border-left: 2px solid rgb(221, 221, 221);
}
.other-info div {
    display: flex;
}
.other-info div p {
    margin: 0px 10px;
}
.click {
    cursor: pointer;
}
.click:hover {
    text-decoration: underline;
}
.location-map {
    margin-top: 8px;
}


.nearby-restaurant {
    margin-top: 10px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}
.restaurant-card{
    width: 200px;
    height: 280px;
    border: 2px solid rgb(221, 221, 221);
    overflow: hidden;
    cursor: pointer;
    transition: 0.3s;
}
.restaurant-card:hover{
    border: 2px solid rgb(145, 145, 145);
}
.restaurant-card img {
    width: 100%;
    height: 150px;
    object-fit: cover;
}
.restaurant-card-content{
    padding: 10px;
}
.restaurant-review{
    font-size: 14px;
    color: rgb(80, 80, 80);
    font-weight: 700;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
}

.main{
	padding-top:100px;
}
    </style>
</head>
<body>

	<header class="header-area header-sticky">
    <div class="container head-nav">
        <div class="row head-nav-sub">
            <div class="col-12 head-nav-sub2">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="../index.jsp" class="logo">
                        <img src="../assets/images/bangbang.png" class="main-logo" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="../index.jsp" class="active">Home</a></li>
                        <li>
                        <a href="#" class="board">Board</a>
                         <ul class="hideboard">
							<li class="board-li" ><a href="${pageContext.request.contextPath }/recommandboard/list.do" id="board-li-a">추천게시판</a>
    						<li class="board-li"><a href="${pageContext.request.contextPath }/recordboard/list.do" id="board-li-a">관광일기</a>
    						<li class="board-li"><a href="${pageContext.request.contextPath }/joinboard/list.do" id="board-li-a">같이가자!</a>
  	 					 </ul>
  	 					 </li>
                        <li><a href="#">Deals</a></li>
                        <c:if test ="${empty sessionScope.loginId }">
                        <li><a href="${pageContext.request.contextPath }/member/login.do">Login</a></li>
                        </c:if>
                        <c:if test ="${not empty sessionScope.loginId }">
                        <li><a href="${pageContext.request.contextPath }/member/logout.do">Logout</a></li>
                        <li><a href="#" style="padding-top:6px">${sessionScope.loginId } 님 <img src="../assets/images/myinfo.png" class="myinfo-icon"></a>
                        </li>
                        </c:if>
                    </ul>   
                    
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
<!--                 <div class="container hide-position" style="text-align: center"> -->
             
<!--   	 			</div>		  -->
            </div>
        </div>
    </div>
  </header>
	<nav class="main">
	
    <div class="container main-container">
        <div class="head-container">
            <div class="main-img-container">
                <img src="./img/img1.jpg">
            </div>
            <div class="sub-img-container">
                <div class="sub1">
                    <img src="./img/img2.jpg">
                </div>
                <div class="sub2">
                    <img src="./img/img4.jpg">
                </div>
            </div>
        </div>
        <div class="body-container">
            <div class="location-title">
                <p><b style="color: rgb(18, 126, 214);">전라남도</b> > 화순군</p>
                <p class="location-name">전라남도 화순군</p>
                <p class="location-eng-name">Hwasun-gun</p>
            </div>
            <div class="location-info">
                <p>방랑 시인 김삿갓, 다산 정약용 등 시인 묵객들의 발길이  끊이지 않았던 화순 적벽은 천혜의 장관을 연출하며 매년 10월 말 경에 적벽 문화제가 열린다. 
                    유네스코 세계문화유산에 등재되어 가치를 인정받고 있는 고인돌 유적지는 지역민의 자긍심을 고취시키고 있다. 한국의 알파스라 불리는 만연산 철쭉공원은
                    봄이되면 아름다운 분홍빛을 선사하며 봄의 향기를 물씬 풍긴다. 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 
                    그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 
                    그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 그리고 
                    그리고 그리고 그리고 그리고 그리고 그리고 </p>
                <button>∨</button>
            </div>
            <div class="other-info">
                <div class="location-weather">
                    <p style="color: gray;">날씨</p>
                    <p>흐림, 10℃ 12℃ ☁</p> 
                    <p class="click" style="color: rgb(18, 126, 214);">날씨정보</p>
                </div>
                <div class="location-map">
                    <p style="color: gray;">위치</p>
                    <p class="click" style="color: rgb(18, 126, 214);">길찾기정보</p>
                    <p class="click" style="color: rgb(18, 126, 214);">📌지도</p>
                </div>
            </div>
            <div style="margin-top: 80px;">
                <p style="color: rgb(100, 100, 100); font-size: 20px; font-weight: 600;">주변 관광지</p>
            </div>
            <div class="nearby-restaurant">
                <div class="restaurant-card">
                    <div class="restaurant-card-img">
                        <img src="/img/img6.jpg">
                    </div>
                    <div class="restaurant-card-content">
                        <p style="font-weight: 700; font-size: 18px;">관광지명</p>
                        <p style="margin-top: -20px; font-size: 13px; color: rgb(160, 160, 160);">★★★★☆</p>
                        <p class="restaurant-review"></p>
                    </div>
                </div>

                <div class="restaurant-card">
                    <div class="restaurant-card-img">
                        <img src="/img/img6.jpg">
                    </div>
                    <div class="restaurant-card-content">
                        <p style="font-weight: 700; font-size: 18px;">관광지명</p>
                        <p style="margin-top: -20px; font-size: 13px; color: rgb(160, 160, 160);">★★★★☆</p>
                        <p class="restaurant-review"></p>
                    </div>
                </div>

                <div class="restaurant-card">
                    <div class="restaurant-card-img">
                        <img src="/img/img6.jpg">
                    </div>
                    <div class="restaurant-card-content">
                        <p style="font-weight: 700; font-size: 18px;">관광지명</p>
                        <p style="margin-top: -20px; font-size: 13px; color: rgb(160, 160, 160);">★★★★☆</p>
                        <p class="restaurant-review"></p>
                    </div>
                </div>

                <div class="restaurant-card">
                    <div class="restaurant-card-img">
                        <img src="/img/img6.jpg">
                    </div>
                    <div class="restaurant-card-content">
                        <p style="font-weight: 700; font-size: 18px;">관광지명</p>
                        <p style="margin-top: -20px; font-size: 13px; color: rgb(160, 160, 160);">★★★★☆</p>
                        <p class="restaurant-review"></p>
                    </div>
                </div>

                <div class="restaurant-card">
                    <div class="restaurant-card-img">
                        <img src="/img/img6.jpg">
                    </div>
                    <div class="restaurant-card-content">
                        <p style="font-weight: 700; font-size: 18px;">관광지명</p>
                        <p style="margin-top: -20px; font-size: 13px; color: rgb(160, 160, 160);">★★★★☆</p>
                        <p class="restaurant-review"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </nav>
    
    
    <!-- 	바닥글 -->
  <div class="call-to-action">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
          <h2>Are You Looking To Travel ?</h2>
        </div>
      </div>
    </div>
  </div>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2023 1조 관광곡곡 Travel Company. All rights reserved. 
          <br>From: 이주원 전준하 남영우 장하은</p> 
        </div>
      </div>
    </div>
  </footer>	
    
    
</body>
</html>