<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<% String ctxPath = request.getContextPath(); %>

<!-- CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />


<!-- JS -->

<style type="text/css">


/* 대서리 메뉴용 */
.table th, .table td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
    word-break: break-word; /* 글자가 길면 자동 줄 바꿈 */
    white-space: normal; /* 기본적으로 줄 바꿈 허용 */
}

.table thead th {
    background-color: #f4f4f4;
    font-weight: bold;
}

.table-container {
    overflow-x: auto; /* 테이블이 너무 길 경우 스크롤 허용 */
    max-width: 100%;
}
/* 대서리 메뉴용 */


.swiperMain {
    width: 100%;
    height: 100%;
}

.swiperCategory {
    width: 100%;
    height: 100%;
    overflow: hidden;
}

.swiper-slide {
    text-align: center;
    font-size: 18px;
    background: #fff;

  /* Center slide text vertically */
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center;
/*     padding-bottom: 30px; */
}

.swiper-slide img {
	display: block;
	width: 100%;
	object-fit: cover;
}

/* swiper 점 모양 */
.swiper-pagination-bullet {
  width: 10px;
  height: 10px;
  background-color: #0DCC5A;
}


.swiper-button-prev,
.swiper-button-next {
  padding: 15px 5px;
  color: black;
}

.swiper-button-prev:after,
.swiper-button-next:after {
  font-size: 16pt;
  font-weight: 900;
}



.mainImgContainer{
	height:325px;
}

.menuImgContainer{
	height: 325px;
}

.menuImg{
	border-radius: 10%;
	aspect-ratio: 1/1;
}

div.index_prod_list {
	padding-bottom: 30px;
}

div.index_prod_list span {
	display: block;
}

div.prod_title {
   	overflow: hidden;
  	text-overflow: ellipsis;
  	display: -webkit-box;
  	-webkit-line-clamp: 2;
  	-webkit-box-orient: vertical;
  	height: 50px;
}

span.prod_title {
	font-size: 12pt;
}

span.prod_price {
	margin-top: 5px;
	font-size: 14pt;
	font-weight: bold;
}

div.prod_town_time {
	margin-top: 5px;
	display: flex;
	font-size: 10pt;
	color: #999999;
	justify-content: center;
	gap: 3px;;
}



</style>


<jsp:include page=".././header/header.jsp" />

<div class="container mt-5">



<!-- 사이트 탭 테스트용  -->
<button onclick="showReviewTab()">후기확인</button>
<button onclick="showReviewRegisterTab()">후기 등록 확인</button>
	
<!-- Slider main container -->
<div class="mainImgContainer">
	<div class="swiper swiperMain">
	  <!-- Additional required wrapper -->
	  <div class="swiper-wrapper">
	    <!-- Slides -->
	    <div class="swiper-slide"><img src="https://img2.joongna.com/banner/1709792928336.webp"></div>
	    <div class="swiper-slide"><img src="https://img2.joongna.com/banner/1737697998356.webp"></div>
	    <div class="swiper-slide"><img src=""></div>
	    <div class="swiper-slide"><img src=""></div>
	    <div class="swiper-slide"><img src=""></div>
	  </div>
	  <!-- If we need pagination -->
	  <div class="swiper-pagination"></div>
	
	  <!-- If we need navigation buttons -->
	  <div class="swiper-button-prev"></div>
	  <div class="swiper-button-next"></div>
	
	</div>
	

</div>



<div class="menuImgContainer container">
 	<h3 style="margin-top:15%;">방금 등록된 상품</h3>
	<div class="swiper swiperCategory"> 
	  <!-- Additional required wrapper -->
	  <div class="swiper-wrapper">
	  
	    <!-- Slides -->
	    <c:forEach var="reg_date_list" items="${requestScope.product_list_reg_date}" varStatus="status"  begin="0" end="6">
	    <div class="swiper-slide menuImg">
	    	
	    	<div class="index_prod_list">
	    		<img class="menuImg" src="${reg_date_list.prod_img_name}">
	    		
	    		<div class="prod_info">
	    			<div class="prod_title">
		    			<span class="prod_title">${reg_date_list.product_title}</span>
		    		</div>
		    		<div>
		    			<span class="prod_price"><fmt:formatNumber value="${reg_date_list.product_price}" pattern="#,###" /> 원</span>
		    		</div>
		    		<div class="prod_town_time">
						<span class="prod_town">${reg_date_list.region_town}</span>
						<span class="bar">|</span>
						<span class="prod_time" data-date="${reg_date_list.product_update_date}"></span>
					</div>
	    		</div>
			</div>
			
	    </div>
	    </c:forEach>
	    
	  </div>

	  <!-- If we need pagination -->
	  <div class="swiper-pagination"></div>
	
	  <!-- If we need navigation buttons -->
	  <div class="swiper-button-prev"></div>
	  <div class="swiper-button-next"></div>
	
	</div>
</div>


<div class="menuImgContainer container">
 	<h3 style="margin-top:15%;">방금 등록된 상품</h3>
	<div class="swiper swiperCategory"> 
	  <!-- Additional required wrapper -->
	  <div class="swiper-wrapper">
	  
	    <!-- Slides -->
	    <c:forEach var="reg_date_list" items="${requestScope.product_list_reg_date}" varStatus="status"  begin="0" end="6">
	    <div class="swiper-slide menuImg">
	    	
	    	<div class="index_prod_list">
	    		<img class="menuImg" src="${reg_date_list.prod_img_name}">
	    		
	    		<div class="prod_info">
	    			<div class="prod_title">
		    			<span class="prod_title">${reg_date_list.product_title}</span>
		    		</div>
		    		<div>
		    			<span class="prod_price"><fmt:formatNumber value="${reg_date_list.product_price}" pattern="#,###" /> 원</span>
		    		</div>
		    		<div class="prod_town_time">
						<span class="prod_town">${reg_date_list.region_town}</span>
						<span class="bar">|</span>
						<span class="prod_time" data-date="${reg_date_list.product_update_date}"></span>
					</div>
	    		</div>
			</div>
			
	    </div>
	    </c:forEach>
	    
	  </div>

	  <!-- If we need pagination -->
	  <div class="swiper-pagination"></div>
	
	  <!-- If we need navigation buttons -->
	  <div class="swiper-button-prev"></div>
	  <div class="swiper-button-next"></div>
	
	</div>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
	<h2>대서리 점심메뉴</h2>
	<div class="table-container">
	    <table class="table">
	        <thead>
	            <tr>
	                <th></th>
	                <th>월요일</th>
	                <th>화요일</th>
	                <th>수요일</th>
	                <th>목요일</th>
	                <th>금요일</th>
	            </tr>
	        </thead>
	        <tbody>
	            <tr>
	                <th scope="row">밥</th>
	                <td>백미<br>흑미</td>
	                <td>백미<br>흑미</td>
	                <td>백미<br>흑미</td>
	                <td>백미<br>흑미</td>
	                <td>백미<br>흑미</td>
	            </tr>
	            <tr>
	                <th scope="row">국</th>
	                <td>시금치된장국</td>
	                <td>된장찌개</td>
	                <td>계란탕</td>
	                <td>어묵탕</td>
	                <td>육개장</td>
	            </tr>
	            <tr>
	                <th scope="row">메인메뉴</th>
	                <td>소불고기<br>중식해물볶음<br>베이컨감자채볶음<br>미나리볶음</td>
	                <td>닭갈비<br>소세지야채볶음<br>오징어튀김</td>
	                <td>유산슬<br>너비아니구이<br>잡채<br>군만두</td>
	                <td>언양불고기<br>떡볶이<br>모둠튀김(오징어, 김말이, 만두)<br>계란곤약장조림</td>
	                <td>제육볶음<br>조기튀김</td>
	            </tr>
	            <tr>
	                <th scope="row">반찬</th>
	                <td>도토리묵무침<br>오징어젓갈<br>쌈<br>쌈장</td>
	                <td>콩나물무침<br>고사리무침<br>마카로니 샐러드</td>
	                <td>단무지무침<br>부추무침<br>조미김</td>
	                <td>깻잎지<br>조미김</td>
	                <td>콩나물무침<br>멸치몪음<br>쌈<br>고추장아찌<br>조미김</td>
	            </tr>
	        </tbody>
	    </table>
	</div>
	
</div>


 


<script type="module">
import Swiper from 'https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.mjs';

const swiperMain = new Swiper('.swiperMain', {
direction: 'horizontal',
loop: true,
autoplay : { 
  	delay : 3000, 
  	disableOnInteraction : false, 
},
breakpoints: {
  1024: {
      slidesPerView: 3,
      spaceBetween: 20,
      },
      880 : {
        slidesPerView: 2,
        spaceBetween: 40,
      },
      620 : {
        slidesPerView: 1,
        spaceBetween: 50,
  	  },
	},
    pagination: {
      el: '.swiper-pagination',
    },

    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },


});

const swiperCategory = new Swiper('.swiperCategory', {
direction: 'horizontal',
loop: true,

breakpoints: {
  1024: {
      slidesPerView: 6,
      spaceBetween: 20,
      },
      880 : {
        slidesPerView: 4,
        spaceBetween: 40,
      },
      620 : {
        slidesPerView: 2,
        spaceBetween: 50,
  	  },
	},
    pagination: {
      el: '.swiper-pagination',
    },

    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },


});

</script>


<script>

$(document).ready(function(){
	
	// 상품 등록일자 계산 해주기
	$("span.prod_time").each(function() {
	    const prod_town_time = $(this).attr('data-date'); // 등록일
	    const time = timeAgo(prod_town_time); 	  		   // 함수 통해 시간 형식 변환
	    $(this).text(time);								       // 텍스트로 출력
	}); // end of $("span.product_time").each(function()


});

	
	
	
	// 등록일 계산 해주는 함수
	function timeAgo(update_date) {
	    const now = new Date(); 					 	   // 현재 시간
	    const prod_town_time = new Date(update_date); 	   // 상품 등록일
	
	    const second = Math.floor((now - prod_town_time) / 1000); 	// 두 날짜 차이를 초 단위로 계산
	    const minute = Math.floor(second / 60);				        // 두 날짜 차이를 분 단위로 계산
	    const hour = Math.floor(minute / 60);				   		// 두 날짜 차이를 시간 단위로 계산
	    const day = Math.floor(hour / 24);					   		// 두 날짜 차이를 일 단위로 계산
	
	   
	    if (minute < 1) {
	        return "방금 전";
	    } 
	    else if (minute < 60) {
	        return minute + "분 전";
	    } 
	    else if (hour < 24) {
	        return hour + "시간 전";
	    } 
	    else if (day < 30) {
	        return day +"일 전";
	    } 
	    else {
	        return "오래 전";
	    }
	} // end of function timeAgo(reg_date)
	
	
	

	
	//후기 확인 테스트 함수
	function showReviewTab() {
		$.ajax({
			url : "<%=ctxPath%>/review/",
			data : {
				"pk_member_no" : "1"
			},
			success : function(html) {
				// 서버로부터 받은 html 파일을 tab.jsp에 넣고 tab 열기
				openSideTab(html);
			},
			error : function(e) {
 				 console.log(request.responseText);
				 
 				 // 서버에서 예외 응답 메시지에서 "msg/"가 포함되어 있다면 사용자 알림을 위한 커스텀 메시지로 토스트 알림 처리
				 let response = request.responseText;
				 let message = response.substr(0, 4) == "msg/" ? response.substr(4) : "";
				 
				 // 사이드 탭 닫기
			     showAlert("error", message);
			     closeSideTab();
			}
		});
	}
	
	//후기 등록 테스트 함수
	function showReviewRegisterTab() {
		$.ajax({
			url : "<%=ctxPath%>/review/register",
			data : {
				"pk_trade_no" : "1"
			},
			success : function(html) {
				// 서버로부터 받은 html 파일을 tab.jsp에 넣고 tab 열기
				openSideTab(html);
			},
			 error: function(request, status, error){
				 console.log(request.responseText);
				 
				 // 서버에서 예외 응답 메시지에서 "msg/"가 포함되어 있다면 사용자 알림을 위한 커스텀 메시지로 토스트 알림 처리
				 let response = request.responseText;
				 let message = response.substr(0, 4) == "msg/" ? response.substr(4) : "";
				 
			     showAlert("error", message);
			     
			     // 사이드 탭 닫기
			     closeSideTab();
			}
		});
	}
	
	
	
</script>



<jsp:include page=".././footer/footer.jsp" />

