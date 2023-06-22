<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="english">
<head>
<meta charset="EUC-KR">
<title>sohee is dying...</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	 // 네비게이터 버튼 클릭 시
	 var banner = $(".banner_slide");
	 var indicator = $("banner").find('.indicators button');
	 var img = $("banner").find('.carousel-item');
	 
	 img.slice(1).hide();
	 
	
	
	// 추천 클래스
	  var carousel = $('.card-carousel', '#section1');
	  //class가 card인 모든 card를 cards라고 변수처리
	  var cards = carousel.find('.card');
	  //전체 카드 수
	  var length = cards.length;
	  // 현재의 위치
	  var idx = 0;
	  // 마진을 포함한 card 하나의 길이
	  var width = cards.outerWidth(true); 

	  console.log(length);
	  console.log(idx);
	  console.log(width);
	  
	  // 처음에는 세개의 카드를 보여줌
	  cards.slice(0, 3).show();

	  $('.carousel-next-btn', '#section1').click(function() {
	    if (idx + 3 < length) {
	      idx += 3;
	      carousel.animate({ marginLeft: -idx * width }, 'slow');
	      console.log(-idx * width);
	    }
	  });

	  $('.carousel-prev-btn', '#section1' ).click(function() {
	    if (idx - 3 >= 0) {
	      idx -= 3;
	      carousel.animate({ marginLeft: -idx * width }, 'slow');
	      console.log(-idx * width);
	    }
	  });
	  
	  
	  // 인기클래스 
	  var carousel2 = $('.card-carousel', '#section2');
	  var cards2 = carousel2.find('.card');
	  var length2 = cards2.length;
	  var currentIndex2 = 0;
	  var cardWidth2 = cards2.outerWidth(true);

	  // Show the initial set of cards
	  cards2.slice(0, 3).show();

	  // Handle next button click for section2
	  $('.carousel-next-btn', '#section2').click(function() {
	    if (currentIndex2 + 3 < length2) {
	      currentIndex2 += 3;
	      carousel2.animate({ marginLeft: -currentIndex2 * cardWidth2 }, 'slow');
	    }
	  });
		
	  $('.carousel-prev-btn', '#section2').click(function() {
	    if (currentIndex2 - 3 >= 0) {
	      currentIndex2 -= 3;
	      carousel2.animate({ marginLeft: -currentIndex2 * cardWidth2 }, 'slow');
	    }
	  });
	  
	
	  // 인기 소모임
	  var carousel3 = $('.card-carousel', '#section3');
	  var cards3 = carousel3.find('.card');
	  var length3 = cards3.length;
	  var currentIndex3 = 0;
	  var cardWidth3 = cards3.outerWidth(true);

	  // Show the initial set of cards
	  cards3.slice(0, 2).show();

	  // Handle next button click for section3
	  $('.carousel-next-btn', '#section3').click(function() {
	    if (currentIndex3 + 2 < length3) {
	      currentIndex3 += 2;
	      carousel3.animate({ marginLeft: -currentIndex3 * cardWidth3 }, 'slow');
	    }
	  });
		
	  $('.carousel-prev-btn', '#section3').click(function() {
	    if (currentIndex3 - 2 >= 0) {
	      currentIndex3 -= 2;
	      carousel3.animate({ marginLeft: -currentIndex3 * cardWidth3 }, 'slow');
	    }
	  });
	  
	
	  // 인기 게시물 
	  var carousel4 = $('.card-carousel', '#section4');
	  var cards4 = carousel4.find('.card');
	  var length4 = cards4.length;
	  var currentIndex4 = 0;
	  var cardWidth4 = cards4.outerWidth(true);

	  // Show the initial set of cards
	  cards4.slice(0, 3).show();

	  // Handle next button click for section4
	  $('.carousel-next-btn', '#section4').click(function() {
	    if (currentIndex4 + 2 < length4) {
	      currentIndex4 += 2;
	      carousel4.animate({ marginLeft: -currentIndex4 * cardWidth4 }, 'slow');
	    }
	  });
		
	  $('.carousel-prev-btn', '#section4').click(function() {
	    if (currentIndex4 - 2 >= 0) {
	      currentIndex4 -= 2;
	      carousel4.animate({ marginLeft: -currentIndex4 * cardWidth4 }, 'slow');
	    }
	  });
	  
	});
	

</script>
</head>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="50">

<!-- 배너 -->
<div id="banner" class="banner_slide" data-bs-ride="carousel">
  <div class="indicators">
    <button type="button" data-bs-target="#banner" data-bs-slide-to="0" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#banner" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#banner" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image 18.png" class="d-block w-100" alt="...">
      <div class="carousel-caption">
        <h5>기분 너무 조쳐?</h5>
        <p>곱창 먹고 와서 기분 째짐요</p>
        <p>다들 곱창먹고 광명 찾으세여~~</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image 26.png" class="d-block w-100" alt="...">
      <div class="carousel-caption">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image 27.png" class="d-block w-100" alt="...">
      <div class="carousel-caption">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
</div>

<!-- 네비게이션 바 -->
<nav class="navbar navbar-expand-sm">
  <ul class="navbar-nav">
    <li><a class="nav-link" href="#section1">추천 클래스</a></li>
    <li><a class="nav-link" href="#section2">인기 클래스 TOP7</a></li>
    <li><a class="nav-link" href="#section3">HOT! 소모임</a></li>
    <li><a class="nav-link" href="#section4">인기 Talk Talk</a></li>
  </ul>
</nav>

<!-- 클래스 출력 -->
<div class="container" id="section1">
  <div class="title-container">
    <h2 class="title">추천 클래스</h2>
    <div class="carousel-controls">
      <button class="carousel-prev-btn" type="button"><</button>
      <button class="carousel-next-btn" type="button">></button>
    </div>
  </div>
  <div class="cards-container">
    <div class="card-carousel">
      <c:forEach var="m" items="${list}">
        <div class="card" style="width: 400px;">
          <img class="card-img" src="image 21.png" alt="Card image">
          <div class="card-body">
            <h4 class="card-category">${m.bca_name} ${m.sca_name}</h4>
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


<div class="container" id="section2">
  <div class="title-container">
    <h2 class="title">인기 클래스 TOP7</h2>
    <div class="carousel-controls">
      <button class="carousel-prev-btn" type="button">&lt;</button>
      <button class="carousel-next-btn" type="button">&gt;</button>
    </div>
  </div>
  <div class="cards-container">
  <div class="card-carousel">
    <c:forEach var="n" items="${list2}">
      <div class="card" style="width:400px">
        <img class="card-img-top" src="image 21.png" alt="Card image">
        <div class="card-body">
          <h4 class="card-category">${n.bca_name} ${n.sca_name}</h4>
          <p class="card-text">${n.addr}</p>
          <a href="#" class="card-title">${n.cl_title}</a>
          <div class="btn">
            <button class="btn_a_level">${n.a_level}</button>
            <button class="btn_cl_level">${n.cl_level}</button>
          </div>
        </div>
      </div>
    </c:forEach>
    </div>
  </div>
</div>

<div class="container" id="section3">
  <div class="title-container">
    <h2 class="title">HOT! 소모임</h2>
    <div class="carousel-controls">
      <button class="carousel-prev-btn" type="button">&lt;</button>
      <button class="carousel-next-btn" type="button">&gt;</button>
    </div>
  </div>
  <div class="cards-container">
  <div class="card-carousel">
    <c:forEach var="h" items="${list3}">
      <div class="card" style="width:600px">
        <img class="card-img-top" src="image 21.png" alt="Card image">
        <div class="card-body">
          <h4 class="card-category">${h.bca_name} ${h.sca_name}</h4>
          <p class="card-text">${h.cb_cls_date}</p>
          <a href="#" class="card-title">${h.cb_title}</a>
          <div class="btn">
            <button class="btn_a_level">${h.ap_cnt}</button>
            <button class="btn_cl_level">${h.cb_people}</button>
          </div>
        </div>
      </div>
    </c:forEach>
    </div>
  </div>
</div>
<div class="container" id="section4">
  <div class="title-container">
    <h2 class="title">인기 Talk! Talk!</h2>
    <div class="carousel-controls">
      <button class="carousel-prev-btn" type="button">&lt;</button>
      <button class="carousel-next-btn" type="button">&gt;</button>
    </div>
  </div>
  <div class="cards-container">
    <div class="card-carousel">
    <c:forEach var="b" items="${list4}">
      <div class="card" style="width:600px">
        <img class="card-img-top" src="image 21.png" alt="Card image">
        <div class="card-body">
          <h4 class="card-category">${b.b_title}</h4>
          <p class="card-text">${b.b_date}</p>
          <a href="#" class="card-title">${b.b_content}</a>
          <div class="btn">
            <button class="btn_a_level">${b.a_nick}</button>
            <button class="btn_cl_level">${b.bc_name}</button>
          </div>
        </div>
      </div>
    </c:forEach>
    </div>
  </div>
</div>
</nav>
<link href="./mainpage3.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</body>
</html>