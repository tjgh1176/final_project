<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap ver 5.1  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<style>
  /*HEADer부분----------------------------*/
  body{
    background-color: black;
  }
    nav {
   background-color: black;
   color: white;
   border-radius: 5px;
  
}
nav a{
    color: white;
}
.navbar-nav a{
    color: white;
    border-radius: 5px;
    margin-right: 20px;
}
.navbar-nav a:hover{
    color: black;
    background-color: white;
    border-radius: 5px;
    text-decoration-line: none;
}
#btn{
    text-align: right;
}
.navbar-toggler{
    background-color: white;
    color: black;
}
nav button{
    background-color: rgba(0, 0, 0, 0.128);
    border-radius: 5px;
    color: white;
}

nav button:hover{
    border-radius: 5px;
    color: black;
    background-color: white;
}
/*board UI출력부분----------------------------*/
.tz-gallery {
    padding: 40px;
    padding-top:0px;
}

/* Override bootstrap column paddings */
	.tz-gallery .row > div {
	    padding: 2px;
	}
	
	.tz-gallery .lightbox img {
	    width: 100%;
	    border-radius: 0;
	    position: relative;
	}
		.container h1 {
		    text-align: center;
		    margin-top: 50px;
		    font-family: 'Droid Sans', sans-serif;
		    font-weight: bold;
		}

/*---------------------기능 구현 후 Hover 예정------------------*/


/* footer 부분 */

#foot{
    border-top: 1px solid gray;
    background-color: rgba(24, 24, 24, 0.532);
    
}


.footer2{
    line-height: 20px;
    margin-top: 20px;
    margin-bottom: 20px ;
    font-family: 'Noto Sans KR';
   font-style: normal;
   font-weight: 700;
   font-size: 14px;
   line-height: 20px;
   color: #FFFFFF;
}

/*------------------------ 헤더 부분 스타일 ------------------------ */
      .search{
         color:black;
         background-color: gray;
         border-radius: 8px;
         height:50px;
         padding:5px;
         padding-left:15px;
         font-weight : bold;
         border:0 solid black;
         width:60%;
         display:block;
         margin:auto;
         
      }
      input:focus {outline:none;}
      input::placeholder {
      color: #ccc;
      }
      .write{
         width:40px;
      }
      .search2{
         width:40px;
         position:absolute;
         right:17%;
         bottom:30px;
      }
      .writebtn{
      	 background-color:transparent;
         float: right;
         margin-right:5%;
         margin-bottom:2%;
      }
      .searchbtn{
         background-color:transparent;
      }
      .select option, #select{
         color:black;
         background-color:#ccc;
      }
      .select{
         height:30px;
         margin-left:5%;
         border-radius: 8px;
         margin-top:10px;
         width:100px;
      }
      
      .searchdiv{
      	position:relative;
      }

</style>
<body>
     <!------------------------------------------------------------header----------------------------------------------------->
    
     <div class="container">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">CAFEIN</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                  <a class="nav-link" href="#">HOME</a>
                  <a class="nav-link" href="#">FEED</a>
                  <a class="nav-link" href="#">CAFE-IN</a>
                  <a class="nav-link" href="#">NOTICE</a>
                </div>
              </div>
            </div>
        
            <button>Login</button>
            <button>Signup</button>
        
          </nav>
          <h1>카페리뷰</h1>
<!-----------------------------------------------검색 DIV------------------------------------------->
       <div class="row">
		    <div class="col-12 searchdiv">
			    <input class="search" type="text" placeholder="작성자 / 제목 으로 검색해보세요.">
			    <button class="searchbtn" type="button"><img class="search2" src="/resources/img/search.png"></button>
		    </div>
		</div>
		 <div class="row">
		     <div class="col-6">
			     <select class="select">
			    	<option>최신순</option>
			    	<option>조회순</option>
			    	<option>추천순</option>
			  	</select>
		     </div>
		    <div class="col-6">
		    	<button class="writebtn" type="button"><img class="write" src="/resources/img/write.png"></button>
		    </div>
		
		   </div>
          

  <!-------------------------------------------------------인스타 Board------------------------------------------------->

          <div class="tz-gallery">

            <div class="row">
    
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="/feed/detailView">
                        <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/bridge.jpg" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="www.daum.net">
                        <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/park.jpg" alt="Park">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="www.naver.com">
                        <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/tunnel.jpg" alt="Tunnel">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="www.kakao.com">
                        <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/tunnel.jpg" alt="Tunnel">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="www.daum.net">
                        <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/tunnel.jpg" alt="Tunnel">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/tunnel.jpg">
                        <img src="https://raw.githubusercontent.com/LeshikJanz/libraries/master/Related%20images/Bootstrap%20example/tunnel.jpg" alt="Tunnel">
                    </a>
                </div>
                
    
            </div>
    
        </div>
    
    </div>


         <!-------------------------------------------------------Footer------------------------------------------------->
    <div class="col-12 d-none d-md-block">
  <div id="foot" align=center>
     <div class="container">
        <div class="row">
          <div class="col-4" id="footicon"> </div>
           <div class="col-2 footer2">회사소개</div>
           <div class="col-2 footer2">이용약관</div>
           <div class="col-2 footer2">1:1 문의</div>
           <div class="col-2 footer2">©2022 CAFEIN</div>
        </div>
     </div>
  </div>
</div>

          
</body>
</html>