<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="divheader.jsp"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="english">
<head>
<meta charset="EUC-KR">
<title>sohee is dying...</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript">

$(function() {
    $(".dropdown-menu").change(function() {
        let a_level = $("#a_level").val();
        let cl_level = $("#cl_level").val();
        let bca_no = $("#bca_no").val();
        let data = {a_level: a_level, cl_level: cl_level, bca_no: bca_no};

        $.ajax({
            url: "searchClass.jsp",
            data: data,
            success: function(data) {
            	$(".cards-container").empty();
                $.each(data, function(index, m) {
                    let card = $('<div></div>').addClass('card');
                    let cardImg = $('<img>').addClass('card-img');
                    let cardBody = $('<div></div>').addClass('card-body');
                    let cardCategory = $('<h4></h4>').addClass('card-category').text(m.bca_name + '>' + m.sca_name);
                    let cardAddr = $('<p></p>').addClass('card-addr').text(m.addr);
                    let cardTitle = $('<a></a>').addClass('card-title').text(m.cl_title);
                    let btnDiv = $('<div></div>').addClass('btn');
                    let btn_aLevel = $('<button></button>').addClass('btn_a_level').text(m.a_level);
                    let btn_clLevel = $('<button></button>').addClass('btn_cl_level').text(m.cl_level);

                    btnDiv.append(btn_aLevel, btn_clLevel);
                    cardBody.append(cardCategory, cardAddr, cardTitle, btnDiv);
                    card.append(cardImg, cardBody);
                    $('.cards-container').append(card);
                });
            }
        });
    });
});


</script>
</head>
<body >


<input type="hidden" id="bca_no" value="${bca_no }">
<!-- 배경화면 -->
<div class="searchimg">
<img src="banner1.jpg" class="img" alt="...">
</div>

<!-- 검색창 -->		
<div class="search">
	<h1>${bca_name }</h1>
 	<form action="classMain.do?bca_no=1001" method="post">
     <div class="search-bar">
       <input type="search" name="keyword" placeholder="키워드 입력" >
       <input type="submit" value="검색"> 
 	</div>
 </form>
</div>     

<!-- 필터 -->
<div class="container-filter">
    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" id="dropdown-button-1">
      레벨
    </button>
    <select class="dropdown-menu" id="a_level" >
      <option class="dropdown-iem" >lv.1</option>
      <option class="dropdown-item">lv.2</option>
      <option class="dropdown-item">lv.3</option>
    </select>
      
    <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" id="dropdown-button-2" style="margin-left:10px;">
      클래스 타입
    </button>
    <select class="dropdown-menu" id="cl_level">
      <option class="dropdown-item">입문</option>
      <option class="dropdown-item">초급</option>
      <option class="dropdown-item">중급</option>
      <option class="dropdown-item">고급</option>
    </select>
</div>



<!-- 클래스 출력 -->
<div class="container" id="section1">
  <div class="cards-container">
    <div class="card-carousel">
      <c:forEach var="m" items="${list}">
        <div class="card" >
          <img class="card-img" src="image 21.png" alt="Card image">
          <div class="card-body">
            <h4 class="card-category">${m.bca_name}> ${m.sca_name}</h4>
            <p class="card-addr">${m.addr}</p>
            <a href="#" class="card-title">${m.cl_title}</a>
            <div class="btn">
              <button class="btn_a_level">${m.a_level}</button>
              <button class="btn_cl_level">${m.cl_level}</button>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>

</div>
</nav>
<link href="./classmain.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</body>
</html>