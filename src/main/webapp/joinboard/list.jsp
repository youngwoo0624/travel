<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Additional CSS Files -->
    <link rel="stylesheet" href="../assets/css/fontawesome.css">
    <link rel="stylesheet" href="../assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="../assets/css/owl.css">
    <link rel="stylesheet" href="../assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    
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

.sub-head-1{ 
	height:130px; 
 	background-color: #D3D3D3; 
}


.col-3{
	margin-top: 10px;
	margin-bottom: 10px;
}
.card img {
    height: 13rem;
    object-fit: cover;
}
.hideboard{
	display: none;
}

.join-head{
	font-size: -webkit-xxx-large;
    padding-top: 3px;
    font-family: KCC-간판체;
    text-align: center;
    padding-top: 100px;
    color: rgb(243 245 219);
}

.write-recommend {
    display: flex;
    justify-content: flex-end;
    margin-bottom: 30px;
    margin-right: 10px;
}

footer video {
  position: absolute; 
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover; /* 동영상 크기에 맞게 늘리기 */
}

</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>


<body style="background-image:url(../assets/images/togetherimg2.jpg); background-size:100%; background-attachment: fixed;">

	 <header class="header-area header-sticky" style="position: fixed">
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
                        <a class="board">Board</a>
                         <ul class="hideboard">
							<li class="board-li" ><a href="${pageContext.request.contextPath }/recommandboard/list.do" id="board-li-a">추천게시판</a>
    						<li class="board-li"><a href="${pageContext.request.contextPath }/recordboard/list.do" id="board-li-a">관광일기</a>
    						<li class="board-li"><a href="${pageContext.request.contextPath }/joinboard/list.do" id="board-li-a" >같이가자!</a>
  	 					 </ul>
  	 					 </li>
                       
                        <c:if test ="${empty sessionScope.loginId }">
                        <li><a href="${pageContext.request.contextPath }/member/login.do">Login</a></li>
                        </c:if>
                        <c:if test ="${not empty sessionScope.loginId }">
                         <li><a href="${pageContext.request.contextPath }/joinboard/add.do">Let's together</a></li>
                        <li><a href="${pageContext.request.contextPath }/member/logout.do">Logout</a></li>
                        <li><a href="${pageContext.request.contextPath }/member/edit.do?id=${sessionScope.loginId}" style="padding-top:6px">${sessionScope.loginId } 님 <img src="../assets/images/myinfo.png" class="myinfo-icon"></a>
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
  	
  <div class="container-fluid" style="display: flex;
    flex-wrap: inherit;
    justify-content: center;
    font-size: -webkit-xxx-large;
    margin-top: 70px;
    color:white">
    <span class="navbar-brand mb-0 h1" style="font-size:-webkit-xxx-large; padding-top:70px; font-family: KCC-간판체 ">
   	같이 곡!곡!</span>
  </div>
  
  
  
	<div class="container"  style=" display: flex;
    justify-content: space-around;margin-bottom: 150px;">
		<div class="row" style="margin-top: 100px; width:1000px">
			<div class="write-recommend">
				<h6 style="border-bottom:1px solid gray ">
				<c:if test="${not empty sessionScope.loginId }">
				<a href="${pageContext.request.contextPath }/joinboard/add.do">
				<img src="../assets/images/pen.png" style="width:20px; color:white">모집하기</a>
				</c:if>
				</h6>
				</div>
		<c:forEach var="vo" items="${list }">
			<div class="col-3">
				<div class="card" style="width:100%; height:100%;">
					<div class="bg-image hover-overlay ripple"
						data-mdb-ripple-color="light">
						<img src=${vo.pic1 } class="img-fluid" style=""/>
							<div class="mask" style="background-color: rgba(251, 251, 251, 0.15)"></div>
					</div>
					<div class="card-header" style="font-family: KCC-간판체 "><strong>${vo.writer }님과 함께</strong></div>
					<div class="card-body">
						<h5 class="card-title" style=" height: 25px; overflow: hidden; white-space: nowrap; width: 200px; text-overflow: ellipsis; font-family: Dovemayo_wild;">
						제목: ${vo.title }</h5>
						<p style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">
						${vo.content }</p>
						<a href="${pageContext.request.contextPath}/joinboard/detail.do?num=${vo.num}"><button type="button" class="btn btn-primary">상세보기</button></a>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
	
	
	<!-- 	바닥글 -->
  <footer style="position: relative;">
  	<div class="call-to-action">
    <div class="container">
      <div class="row">
        <div class="col-lg-8">
        </div>
      </div>
    </div>
  </div>
<!-- 	<video muted autoplay loop id="background-video" > -->
<!--       <source src="../assets/images/sea.mp4" type="video/mp4"> -->
<!--       <strong>Your browser does not support the video tag.</strong> -->
<!--    	 </video> -->
 
    <div class="container" style="position: relative;">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2023 1조 관광곡곡 Travel Company. All rights reserved. 
          <br>From: 이주원 전준하 남영우 장하은</p> 
          <p>img:© <a href='https://kr.123rf.com/profile_virtosmedia'>virtosmedia</a>, <a href='https://www.123rf.com/free-images/'>123RF Free Images</a></p>
        </div>
      </div>
    </div>
  </footer>
	
</body>
</html>