<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
      rel="stylesheet" />
<title>   Cafe IN - My Page</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<style>
      * {
        position: relative;
      }

      .wrap {
        max-width: 1080px;
        margin: 0px auto;
        text-align: center;
      }

      li {
        display: list-item;
        text-align: -webkit-match-parent;
        flaot: left;
      }

      ul {
        list-style: none;
      }

      .c-white {
        color: white;
      }

      .MypageDiv {
        width: 100%;
        height: 100%;
        padding: 75px 0px 130px 0px;
      }

      .max-W360 {
        max-width: 360px;
        margin: 0px auto;
        padding: 0px 0px 0px 20px;
      }

      .form_main {
        width: 95%;
        height: 50px;
        margin: 3px;
        border: 1px solid #dadada;
        font-size: 15px;
        padding: 0px 15px;
        border-radius: 3px;
        outline: 0;
        box-sizing: border-box;
      }

      .btn_main {
        padding: 0px;
        margin: 3px;
        width: 100%;
        margin-bottom: 10px;
        margin-top: 10px;
      }

      .bt_1 {
        display: block;
        height: 53px;
        line-height: 53px;
        background: #760c0c;
        border-radius: 8px;
        font-size: 17px;
        font-weight: 700;
        color: white;
        border: 0px;
        outline: 0;
      }

      .non_text {
        text-decoration: none;
        color: #999;
      }

      /* 프로필 사진 */
      #box {
        margin-top: 5%;
      }
      .box {
        width: 80px;
        height: 80px;
        border-radius: 70%;
        overflow: hidden;
        float: left;
      }
      .profile {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
      .igmcan {
        float: left;
        width: 50%;
      }

      #imgmodify {
        margin-top: 3%;
        width: 200px;
        height: 60px;
        background-color: #760c0c;
        color: white;
        border-radius: 5px;
      }
    </style>
  </head>
  <body style="background-color: #222">
    <div class="mypage wrap">
      <h1 style="color: white">My Page</h1>

      <form action="/member/upload" class="loginFrom max-W360">
      <input type=hidden name=mem_id value='yj'>
      <c:forEach var=i items=${dto }>
        <div id="box">
          <div class="box" class="imgcan" style="background: #bdbdbd">
          	<div class="profile">
<!--             	<img class="profile" src="https://cdn-icons-png.flaticon.com/512/10/10522.png" /> -->            </div>
          </div>
          <div class="imgbtncan">
            <input type="file" name="file" class="img_btn" id="imgmodify" placeholder="프로필사진 변경하기">
          </div>
        </div>
        <br />
        <br />
        <ul style="padding: 0px 0px 20px 0px">
          <li>
            <span style="color: white">아이디</span>
            <input
              class="form_main"
              type="text"
              id="memId"
              value="${dto.mem_id}"
              name="memId"
              maxlength="12"
              
              readonly
            />
          </li>
          <li>
            <span style="color: white">닉네임</span>
            <input
              class="form_main"
              type="text"
              id="memName"
              value="${dto.mem_name}"
              name="memName"
              autocomplete="off"
              class="editable"
              readonly
            />
          </li>
          <li>
            <span style="color: white">이메일</span>
            <input
              class="form_main"
              type="email"
              id="memEmail"
              value="${dto.mem_email}"
              name="memEmail"
              maxlength="12"
              autocomplete="off"
              class="editable"
              readonly
            />
          </li>
          <li>
            <span style="color: white">전화번호</span>
            <input
              class="form_main"
              id="phone_center"
              value="${dto.mem_phone}"
              name="memPhone"
              maxlength="12"
              class="editable"
              readonly
            />
          </li>
        </ul>
        </c:forEach>
        <div id="btns">
          <button type="button" class="btn_main bt_1" id="modify">수정</button>
          <a href="/"><button type="button" class="btn_main bt_1" id="back">뒤로</button></a>

          <a href="/member/memberout"><button type="button" class="btn_main bt_1" id="memberout">
            탈퇴
          </button></a>
        </div>
      </form>
    </div>

    <script>
      

      //여기서 탈퇴하는 기능, 탈퇴하면 모든 본인 게시물 삭제?

      $('#modify').on('click', function () {
        $('.form_main').removeAttr('readonly');
        $(this).css('display', 'none');
        $('#back').css('display', 'none');
        $('#memberout').css('display', 'none');

        let btnok = $('<button>');
        btnok.text('수정완료');
        btnok.attr('class', 'btn_main bt_1');

        let btncancel = $('<button>');
        btncancel.text('수정취소');
        btncancel.attr('type', 'button');
        btncancel.addClass('btn_main bt_1');
        btncancel.on('click', function () {
          location.reload();
        });

        $('#btns').append(btnok);
        $('#btns').append(btncancel);
      });
      
      
      

      $('#back').on('click', function () {
        location.href = '/';
      });
      
      
      $.ajax({
    	  url:"/mypage/upload",
    	  dataType:"json"
      }).done(function(resp){
    	  $(".profile").append(resp);
      })
      
    </script>
  </body>
</html>