<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<style type="text/css">
@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

  @import url('https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700');

* {
  margin:0px;
  padding:0px;
  text-align:center;
  font-family: 'GmarketSansMedium';
}


img {
  width: 180px; 
  height: 320px;
}

html, body{
  height:100%;
  font-family: 'Open Sans Condensed', sans-serif;
  background: #222;
}

h2, h4 {
  letter-spacing:4px;
  text-align:center;
  text-transform:uppercase;
}

h2 {
  font-weight:300;
  font-size:5em;

  color: white;
}


h4 {
  font-weight:300;
  padding:1em;
  color: #CCC;
}

h5 {
  letter-spacing:3px;
  font-weight:300;
  color: #CCC;
}

.range {
  -webkit-box-sizing:border-box;
  -moz-box-sizing:   border-box;
  box-sizing:        border-box;
  max-width:900px;
  margin:0 auto 5em auto;
  padding: 0em;
}

.box {
  position: relative;
  width: 180px;
  height: 0px;
  left: 7.5%;
  margin: 0.5%;
  padding-bottom: 353px;
  float: left;
  opacity: 0.65;
}

.flip,
.bar {
  position: absolute;
}

.flip {
  top:0px;
  left:0px;
  width:100%;
  height:100%;
  overflow:hidden;
  background:rgba(255,255,255,0.5);
  cursor: pointer;
  -webkit-animation:flipout 0.5s ease forwards;
  -moz-animation:   flipout 0.5s ease forwards;
  -o-animation:     flipout 0.5s ease forwards;
  animation:        flipout 0.5s ease forwards;
}

.bar {
  bottom:0px;
  left:0px;
  width:100%;
  background: white;
}

.bar h3 {
  font-size:1.5rem;
  font-weight:300;
  text-transform:uppercase;
  letter-spacing:3px;
}

.box:hover {
   opacity: 1; 
}

.box:hover > .flip {
  background: rgba(255,255,255,0.8);
  -webkit-animation:flipin 0.5s ease forwards;
  -moz-animation:   flipin 0.5s ease forwards;
  -o-animation:     flipin 0.5s ease forwards;
  animation:        flipin 0.5s ease forwards;
}

@-webkit-keyframes flipout {
  0% {-webkit-transform: translate(0px, 0px) scale(1);}
  30% {-webkit-transform: translate(0px, -30px) scale(0.98);}
  100% {-webkit-transform: translate(0px, 0px) scale(0.9);}
}

@-o-keyframes flipout {
  0% {-o-transform: translate(0px, 0px) scale(1);}
  30% {-o-transform: translate(0px, -30px) scale(0.98);}
  100% {-o-transform: translate(0px, 0px) scale(0.9);}
}

@-moz-keyframes flipout {
  0% {-moz-transform: translate(0px, 0px) scale(1);}
  30% {-moz-transform: translate(0px, -30px) scale(0.98);}
  100% {-moz-transform: translate(0px, 0px) scale(0.9);}
}

@keyframes flipout {
  0% {transform: translate(0px, 0px) scale(1);}
  30% {transform: translate(0px, -30px) scale(0.98);}
  100% {transform: translate(0px, 0px) scale(0.9);}
}

@-webkit-keyframes flipin {
  0% {-webkit-transform: translate(0px, 0px) scale(0.9);}
  30% {-webkit-transform: translate(0px, -30px) scale(0.98);}
  100% {-webkit-transform: translate(0px, 0px) scale(1);}
}

@-o-keyframes flipin {
  0% {-o-transform: translate(0px, 0px) scale(0.9);}
  30% {-o-transform: translate(0px, -30px) scale(0.98);}
  100% {-o-transform: translate(0px, 0px) scale(1);}
}

@-moz-keyframes flipin {
  0% {-moz-transform: translate(0px, 0px) scale(0.9);}
  30% {-moz-transform: translate(0px, -30px) scale(0.98);}
  100% {-moz-transform: translate(0px, 0px) scale(1);}
}

@keyframes flipin {
  0% {transform: translate(0px, 0px) scale(0.9);}
  30% {transform: translate(0px, -30px) scale(0.98);}
  100% {transform: translate(0px, 0px) scale(1);}
}
.text{
  text-align: center;
  color: white;
  font-size: 30px;
  margin-top: 3%;
  display: none;
}

#btn button{
  background-color: #222;
  color: white;
  border-radius: 5px;
  border: 1px solid  #222 ;
  font-size: 25px;
  transition: all ease 0.5s;
  margin-right: 20px;
 
}
#btn button:hover{
  color: #808080;
  cursor: pointer;
  font-size: 180%;
}


.container{
  text-align: center;
  overflow: hidden;
}
h3{
margin-top:10px;
}
</style>
<body>
<br><br>
  <c:if test="${!empty msg}">
		<script>
			swal({icon : "${status}",
				 title : "${msg}",
				 text : "${text}"});
		</script>
		<c:remove var="msg"/>
	</c:if>
  <h2> CAFEIN </h2>
<h4>나에게 맞는 감성카페를 찾아보세요~ </h4>
<div class="container">
<article class="range">
  
  <section class="box" id="box1">
    <figure class="flip">
      <a href="/feed/goFeed?page=1"><img src="https://2.bp.blogspot.com/-ywv6LaSnjgE/Uh9GGzWaFbI/AAAAAAAAA64/fLVMc7_xFAU/s1600/where.jpg" /></a>
<!--       /feed/feed_imglist -->
      
      <figcaption class="bar">
        <h3>FEED</h3>
       </figcaption>
    </figure>
  </section>
  
  <section class="box" id="box2">	
    <figure class="flip">
      <a href="/cafein/goCafein?page=1"><img src="https://2.bp.blogspot.com/-lNmcHj4MqOM/Uh9GFylK6vI/AAAAAAAAA6g/v3JuP6rfWKU/s1600/coffee.jpg" /></a>
      <figcaption class="bar">
        <h3>CAFE-IN</h3>
       </figcaption>
    </figure>
  </section>
  
  <section class="box" id="box3">
    <figure class="flip">
     <a href="https://gangsofguro.com/cafedrink/" target="_blank"><img src="https://1.bp.blogspot.com/-BfbEpyEtmgk/Uh9GGNwLN6I/AAAAAAAAA6k/gxHsPPGjIcc/s1600/cake.jpg" /></a>
      <figcaption class="bar">
        <h3>CAFE TEST</h3>
       </figcaption>
    </figure>
  </section>
  
    <section class="box" id="box4">
    <figure class="flip">
      <a href="/notice/FAQ"><img src="https://2.bp.blogspot.com/-XD5AjJLD0Qs/Uh9GGA_yXQI/AAAAAAAAA6s/uZNjG-XOAYw/s1600/contact.jpg" /></a>
      <figcaption class="bar">
        <h3>NOTICE</h3>
       </figcaption>
    </figure>
  </section>
</article>
</div>


<div id="con" style="height: 76px; display:block;">
</div>
<div id="feed" class="text">
  예쁜카페를 공유해보세요~ 
</div>
<div id="cafein" class="text">
  감성카페를 찾아보세요~
</div>
<div id="test" class="text">
  나의 음료취향을 알아보세요~
</div>
<div id="notice" class="text">
  무엇을 도와드릴까요?
</div>


<div id="btn"> 
	<c:choose>
		<c:when test="${empty loginID}">
		    <button type="button" onclick="location.href='/member/login' ">Login</button>
		    <button type="button" onclick="location.href='/member/signUp' ">Join</button>
	    </c:when>
	    <c:otherwise>
	    	<button type="button" onclick="location.href='/mypage/mypage' ">MyPage</button>
	    	<button type="button" onclick="location.href='/member/logout' ">Logout</button>
	    <c:if test="${loginID == 'admin'}">
			<button type="button" onclick="location.href='/manager/goAdmin' " id="adminbtn">Manage</button>
		</c:if>
	    </c:otherwise>
    </c:choose>
</div>

 	
</body>
<script>
  $("#box1").hover(function(){
    $("#feed").css("display","block");
    $("#con").css("display","none");
  },function(){
    $("#feed").css("display","none");
    $("#con").css("display","block");
  })
  $("#box2").hover(function(){
    $("#cafein").css("display","block");
    $("#con").css("display","none");
  },function(){
    $("#cafein").css("display","none");
    $("#con").css("display","block");
  })
  $("#box3").hover(function(){
    $("#test").css("display","block");
    $("#con").css("display","none");
  },function(){
    $("#test").css("display","none");
    $("#con").css("display","block");
  })
  $("#box4").hover(function(){
    $("#notice").css("display","block");
    $("#con").css("display","none");
  },function(){
    $("#notice").css("display","none");
    $("#con").css("display","block");
  })
    
</script>
</html>