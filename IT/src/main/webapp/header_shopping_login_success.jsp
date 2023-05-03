<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>it헤더</title>
	
	<link rel="stylesheet" type="text/css" href="css/header_footer.css">
	
	<link rel="stylesheet" type="text/css" href="css/shopping001.css">	 
	 <link rel="stylesheet" type="text/css" href="css/shopping001_midbn2.css">
	
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-gothic.css" rel="stylesheet">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> 
   
   <script src="js/flight.js"></script>
   <script src="js/slick-1.8.1/slick/slick.min.js"></script>


     <script>
     	
$(function(){
    var $slider = $('.slider'),
        $firstSlide = $slider.find('li').first() // 첫번째 슬라이드
        .stop(true).animate({'opacity':1},200); // 첫번째 슬라이드만 보이게 하기
  
    function PrevSlide(){ // 이전버튼 함수
      stopSlide();startSlide(); //타이머 초기화
      var $lastSlide = $slider.find('li').last() //마지막 슬라이드
      .prependTo($slider); //마지막 슬라이드를 맨 앞으로 보내기  
      $secondSlide = $slider.find('li').eq(1)//두 번째 슬라이드 구하기
      .stop(true).animate({'opacity':0},400); //밀려난 두 번째 슬라이드는 fadeOut 시키고
      $firstSlide = $slider.find('li').first() //맨 처음 슬라이드 다시 구하기
      .stop(true).animate({'opacity':1},400);//새로 들어온 첫 번째 슬라이드는 fadeIn 시키기
    }
    
    function NextSlide(){ // 다음 버튼 함수
      stopSlide();startSlide(); //타이머 초기화
      $firstSlide = $slider.find('li').first() // 첫 번째 슬라이드
      .appendTo($slider); // 맨 마지막으로 보내기
      var $lastSlide = $slider.find('li').last() // 맨 마지막으로 보낸 슬라이드
      .stop(true).animate({'opacity':0},400); // fadeOut시키기
      $firstSlide = $slider.find('li').first()// 맨 처음 슬라이드
      .stop(true).animate({'opacity':1},400);// fadeIn 시키기
    }
    
    $('#next').on('click', function(){ //다음버튼 클릭
      NextSlide();
    });
    $('#prev').on('click', function(){ //이전 버튼 클릭
      PrevSlide();
    });
  
    startSlide(); // 자동 슬라이드 시작
    
    var theInterval;
  
    function startSlide() {
      theInterval = setInterval(NextSlide, 5000); //자동 슬라이드 설정
    }
  
    function stopSlide() { //자동 멈추기
      clearInterval(theInterval);
    }
    
    $('.slider').hover(function(){ //마우스 오버시 슬라이드 멈춤
      stopSlide();
    }, function (){
      startSlide();
    });
  });

        $(function(){
        $(".innersort").click(function(){
           $(".sort-dropwrap").toggle();
        });
      });



     </script>
     
     <%
      String id = request.getParameter("mem_id"); //설정해놓은 name을 이용하여 값을 가져온다. String id에 가져온 값을 넣어놓음. 
      String password = request.getParameter("mem_pw");

      session.setAttribute("IDa",id);
      session.setAttribute("PASSWORDa",password);
      //String으로 설정한 id를 다시 "IDa"로 설정한거. 이해 잘되게 일부러 다르게 설정해놓았음

      // 뒤파일 login3.jsp 에서 가져올 때는 session.getAttribute("key값") 으로 하면 된다.   ??
      %>


</head>
<body>
	<!--헤더부분-->
    <header style="border-bottom: 1px solid rgb(224, 224, 224);">
            
            <div class="hdwrap1">
                <div class="ftwrap1"><a href="mainindex.jsp"><img src="./mainindeximgs/logo.png" height="90px"style="padding-left: 20px"  ></a>
                    <div class="ftwrap2"></div>
                    <div class="search-wrapper active">
                      <div class="input-holder">
                          <input type="text" class="search-input" placeholder="검색어를 입력해주세요." />
                          <button class="search-icon" onclick="searchToggle(this, event);"><span></span></button>
                      </div>
                      <!-- <span class="close" onclick="searchToggle(this, event);"></span> -->
                  </div>
                    <div class="topwrap1">
                      <ul>
                        <li><a href="N_list.jsp">고객센터</a></li>
                        <li><%=id %>님  </li>
                        <li><a href=""></a> 로그아웃</li>
                       
                      </ul>
                    </div>
                  </div> 
          </div>
          <div class="hdwrap2">
          <div class="menuwrap1">
            <ul>
              <li class="menulist1"> <a href="#" class="menu"><img src="./mainindeximgs/ico-hamburgermenu.png" alt=""> &nbsp&nbsp&nbsp&nbsp전체 메뉴 </a></li>
              <li class="menulist2"> <a href="./travelplan.html" class="menu"> 여행지추가</a> </li>
              <li class="menulist3"> <a href="./trave_scg_mng.html" class="menu"> 일정짜기 </a> </li>
              <li class="menulist4"> <a  class="menu" href="./flight.html"> 항공예약 </a></li>
              <li class="menulist5"><a  class="menu" href="./tour002.html"> 투어예약 </a></li>
              <li class="menulist6"> <a href="#" class="menu"> 소셜 </a></li>
              <li class="menulist7"><a class="menu" href="shopping001.jsp" > 쇼핑 </a></li>
              <li class="menulist8"><a href="#" class="menu"> 커뮤니티 </a></li>
              </ul>
        </div>
      </div>
   
             <div class="menuwrap2">
      <div class="menuwrap3">
       <ul class="s_menu">
         <li>
             <a>여행지 추가</a>
         </li>
         <!-- <li>
             <a>여행지 목록</a>
         </li>
         <li>
             <a>할리치노 · 빙수</a>
         </li>
         <li>
             <a>스파클링</a>
         </li>
         <li>
             <a>푸드</a>
         </li>
         <li>
             <a>MD상품</a>
         </li>
         <li>
             <a>MD식품</a>
         </li> -->
     </ul>

     <ul class="s_hollysmall">
         <li>
             <a>일정짜기</a>
         </li>
         <!-- <li>
             <a>할리스카드</a>
         </li>
         <li>
             <a>E-Store</a>
         </li>
         <li>
             <a>구매내역</a>
         </li> -->
     </ul>

     
     <ul class="s_membership">
      <li>
          <a>항공 홈</a>
      </li>
      <li>
          <a> 항공권 예매</a>
      </li>
      <li>
         <a>내 항공권 조회</a>
     </li>
  </ul>
  
  <ul class="s_hollysnews">
      <li>
          <a>투어 홈</a>
      </li>
      <li>
          <a>국내</a>
      </li>
      <li>
         <a>해외</a>
     </li>
  </ul>

  <ul class="s_store">
      <li>
          <a>소셜 홈</a>
      </li>
      <li>
         <a>글 작성</a>
     </li>
     <li>
         <a>내 피드</a>
     </li>
  </ul>

  
  <ul class="s_hollysis">
      <li>
          <a href="#">쇼핑 홈</a>
      </li>
      <li>
          <a>캐리어</a>
      </li>
      <li>
          <a>여행용품</a>
      </li>
      <li>
          <a>잡화</a>
      </li>
   </ul>



      <ul class="s_community">
        <!-- <li>
          <a>중고장터</a>
      </li> -->
      <li>
          <a>커뮤니티</a>
      </li>
     </ul>


      </div>
     
   </div>

   <!-- <div class="menuwrap4">
    <div class="menuwrap5">
      <ul>
        <li> 여행지 홈 </li>
        <li>여행지 추천</li>
        <li>인기별 여행지</li>
        <li>특색 여행지</li>
      </ul>
    </div>
   </div>

   <div class="menuwrap6">
    <div class="menuwrap7">
      <ul>
        <li>일정짜기 홈</li>
        <li> 새 일정 짜기</li>
      </ul>
    </div>
   </div> -->

   <div class="menuwrap8">
    <div class="menuwrap9">
      <ul>
        <li> <a href="./flight.html"> 항공 홈 </a></li>
        <li>항공권 예매</li>
        <li> 내 항공권 조회</li>
      </ul>
    </div>
   </div>
   
   <div class="menuwrap10">
    <div class="menuwrap11">
      <ul>
        <li></li>
        <li> <a href="./tour002.html">투어 홈 </a></li>
        <li> 국내 </li>
        <li> 해외 </li>
      </ul>
    </div>
   </div>

   <div class="menuwrap12">
    <div class="menuwrap13">
      <ul>
        <li>소셜 홈</li>
        <li>글 작성</li>
        <li>내 피드</li>
      </ul>
    </div>
   </div>

   <div class="menuwrap14">
    <div class="menuwrap15">
      <ul>
        <li>쇼핑 홈</li>
        <li>배낭</li>
        <li>잡화</li>
        <li>캐리어</li>
      </ul>
    </div>
   </div>
<!-- 
   <div class="menuwrap16">
    <div class="menuwrap17">
      <ul>
        <li>커뮤니티 홈</li>
        <li>중고장터</li>
        <li>커뮤니티</li>
       
      </ul>
    </div>  -->
          
    </header>
      
</body>
</html>