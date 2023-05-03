<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="UTf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/travel_plan.css">
<title>잇트 회원가입</title>
</head>

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>	
<script src="js/slick-1.8.1/slick/slick.min.js"></script>
<script src="js/travel_plan.js"></script>
<script>

function openmodal(city_eng){
	
	$('#background').fadeIn(200);
	$('#front').fadeIn(200);
	$('body').addClass('modal-open');
	
	$.ajax({
		url: "travel_plan3.jsp",
		type: "get",
		data: {
			city_eng: city_eng,		
		},
		success: function(data){
			console.log(city_name);
			 var city_name = data.split(',')[0];
			document.getElementById("photo2").style.backgroundImage = "url('./travelplanimgs/" + city_eng + ".jpg')",	
 			document.getElementById("smallcity1").innerText = city_name,
 			document.getElementById("smallcity2").innerText = city_eng.toUpperCase()
 			
		}
	});
};


//화면에 표시된 배경 레이어를 클릭한 경우
function closemodal(){

	$('#background').fadeOut(200);
	$('#front').fadeOut(200);	
	$('body').removeClass('modal-open');
}

$(document).keyup(function(e) {
	  if (e.key === "Escape") { // ESC 키를 눌렀을 때
	    // 모달 팝업 닫기
	    $('#background').fadeOut(200);
	    $('#front').fadeOut(200);
		$('body').removeClass('modal-open');
	  }
	});

function x(){
	 $('#background').fadeOut(200);
	 $('#front').fadeOut(200);
	 $('body').removeClass('modal-open');
}


function add() {
    var smallcity1 = $('#smallcity1').text(); // smallcity1의 내용을 가져옴
    $('input[name=coouncity]').smallcity1; // cooncity 텍스트 창에 smallcity1의 내용을 넣음
  	console.log(smallcity1);
  };

</script>


<body>



	<header>
	   <jsp:include page="header.jsp" />
	</header> 
	

	<section>
	
	<form action="travel_plan2.jsp" method="post">
	
	
<!--///////////// 팝업창 ////////// 	 -->
	 <div class='gray_layer' id='background' onclick="closemodal()"></div>
    <div class='over_layer' id='front'>
			<div class="photocity" style="display: flex;">
				<div class="photo" style="display: flex;">
					<div class="photo2" id="photo2" style=" z-index: 1500; width: 300px; height: 400px; background-size: cover; overflow:hidden;"></div>
<!-- 				photo -->
				</div>
				<div class="cityexplain" style="display: flex;">			
					<div class="cityexplain2" style="padding: 30px;">
						<h2 style="letter-spacing: 2px;" id = "smallcity1" onclick="smallcity1()">방콕</h2>
						<h3 style="margin-top: 10px; font-family: TheJamsil2Light; letter-spacing: 2px;" id = "smallcity2">	BANGKOK</h3>
						<div style="font-family: TheJamsil2Light; color: grey; font-size: 15px; margin-top: 15px;">
									방콕은 이러쿵 저렇궁 저렇구요 Kids were laughing in my classes While I was
									scheming for the masses Who do you think you are? Dreaming
									'bout being a big star They say, "You're basic", they say,
									"You're easy" You're always riding in the backseat Now I'm
									smiling from the stage while You were clapping in the
									nosebleeds</div>
						<div><button type="button" id="modalchoose" onclick="add">여행지 추가하기</button></div>
																		
<!-- cityexplain2 -->
					</div>
					<div class ="x" onclick="x()">X</div>
<!-- cityexplain -->
				</div>
<!-- photocity				 -->
			</div>
<!-- over_layer -->
		</div>





<!-- ///////////메인화면 시작////////// -->
	
		<div class="dessearch">
			<div id="inputwrap">
					<div id="destintext">떠나고 싶은 여행지를 검색해보세요!</div>

					<div class="depdatewrap">
						<ul>
							<li><input type="text" size="50" name="coouncity" class="inputdes" placeholder="여행지를 입력해주세요" required></li>
							<li><input type="button" class="btn" value="가는날" style ="font-family: TheJamsil2Light;"> <input type="date" name="depdate" required></li>
							<li><input type="button" class="btn" value="오는날" style="font-family: TheJamsil2Light;"> <input type="date" name="arrdate" required></li>														
							<li><input type="submit" id="desearbtn" value="선택완료"></li>
						</ul>
<!-- depdatewrap -->
					</div>
<!-- inputwrap -->
			</div>
<!-- dessearch -->
		</div>



		<div id="continent">
			<div id="innercon">
				<ul id="filter-bar">
					<span class="pill"></span>
					<li onclick="reccity_all()">추천여행지</li>
					<li class="reccity1" onclick="reccity_asia()">아시아</li>
					<li class="reccity2" onclick="reccity_america()">아메리카</li>
					<li class="reccity3" onclick="reccity_europe()">유럽</li>
					<li class="reccity4" onclick="reccity_oceania()">오세아니아</li>
					<li class="reccity5" onclick="reccity_africa()">아프리카</li>
				</ul>
<!-- innercon-->	
			</div>
			<div id="greyinst">
				<font color="grey">추천여행지를 클릭해서 일정에 직접 추가해보세요</font>
<!-- greyinst		 -->
			</div>
<!-- continent -->
		</div>

		<div class="sortwrap">
			<div class="innersort">
				<div class="sort">
					추천순 <span class="sorticon">arrow_drop_down</span>
				</div>
				<div class="sort-dropwrap">
					<ul>
						<li>인기순</li>
						<li>추천순</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="picswraps">

			<div class="recdes_asia">
				<div class="picwrap1">
					<div class="pntwrap1" onclick="openmodal('bangkok')">
						<div class="pic"  >
							<img src="./travelplanimgs/bangkok.jpg" class="zoom">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>태국 방콕</li>
								<li>Bangkok</li>
							</ul>
						</div>
					</div>

					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/vangvieng.jpg" class="zoom" onclick="openmodal('vangvieng')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>라오스 방비엥</li>
								<li>Vang Vieng</li>
							</ul>
						</div>
					</div>

					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/taipei.jpg" class="zoom" onclick="openmodal('taipei')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>대만 타이페이</li>
								<li>Taipei</li>
							</ul>
						</div>
					</div>

					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/chiangmai.jpg" class="zoom" onclick="openmodal('chiangmai')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>태국 치앙마이</li>
								<li>ChiangMai</li>
							</ul>
						</div>
					</div>

					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/danang.jpg" class="zoom" onclick="openmodal('danang')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>베트남 다낭</li>
								<li>Da Nang</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="picwrap1">
					<div class="pntwrap1">
						<div class="pic">
							<img src="./travelplanimgs/Phnom Penh.jpg" class="zoom" onclick="openmodal('Phnom Penh')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>캄보디아 프놈펜</li>
								<li>Phnom Penh</li>
							</ul>
						</div>
					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/bali.jpg" class="zoom" onclick="openmodal('bali')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>인도네시아 발리</li>
								<li>Bali</li>
							</ul>
						</div>
					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/singapore.jpg" class="zoom" onclick="openmodal('singapore')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li></li>
								<li>싱가포르</li>
								<li>Singapore</li>
							</ul>
						</div>
					</div>

					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/Kaohsiung.jpg" class="zoom" onclick="openmodal('Kaohsiung')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>대만 가오슝</li>
								<li>Kaohsiung</li>
							</ul>
						</div>
					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/Nha Trang.jpg" class="zoom" onclick="openmodal('Nha Trang')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>베트남 나트랑</li>
								<li>Nha Trang</li>
							</ul>
						</div>
					</div>
				</div>
			</div>


			<div class="recdes_america">
				<div class="picwrap1">
					<div class="pntwrap1">
						<div class="pic">
							<img src="./travelplanimgs/la.jpg" class="zoom" onclick="openmodal('la')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>미국 로스앤젤레스</li>
								<li>Los Angeles</li>
							</ul>
						</div>
					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/vancouver.jpg" class="zoom" onclick="openmodal('vancouver')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>캐나다 밴쿠버</li>
								<li>Vancouver</li>
							</ul>
						</div>
					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/reclasvegas.jpg" class="zoom" onclick="openmodal('reclasvegas')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>미국 라스베가스</li>
								<li>Las Vegas</li>
							</ul>
						</div>
					</div>

					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/seattle.jpg" class="zoom" onclick="openmodal('seattle')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>미국 시애틀</li>
								<li>Seattle</li>
							</ul>
						</div>
					</div>


					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/toronto.jpg" class="zoom" onclick="openmodal('toronto')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>캐나다 토론토</li>
								<li>Toronto</li>
							</ul>
						</div>
					</div>
				</div>


				<div class="picwrap1">
					<div class="pntwrap1">
						<div class="pic">
							<img src="./travelplanimgs/mexicocity.jpg" class="zoom" onclick="openmodal('mexicocity')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>멕시코 멕시코시티</li>
								<li>Mexicocity</li>
							</ul>
						</div>
					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/lapaz.jpg" class="zoom" onclick="openmodal('lapaz')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>볼리비아 라파스</li>
								<li>La Paz</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/newyork.jpg" class="zoom" onclick="openmodal('newyork')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>미국 뉴욕</li>
								<li>New York</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/saopaulo.jpg" class="zoom" onclick="openmodal('saopaulo')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>브라질 상파울루</li>
								<li>São Paulo</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/sf.jpg" class="zoom" onclick="openmodal('sf')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>미국샌프란시스코</li>

								<li>San Francisco</li>
							</ul>
						</div>

					</div>
				</div>
			</div>

			<div class="recdes_europe">
				<div class="picwrap1">
					<div class="pntwrap1">
						<div class="pic">
							<img src="./travelplanimgs/barcelona.jpg" class="zoom" onclick="openmodal('barcelona')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>스페인 바르셀로나</li>
								<li>Barcelona</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/lisbon.jpg" class="zoom" onclick="openmodal('lisbon')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>포르투갈 리스본</li>
								<li>Lisbon</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/berlin.jpg" class="zoom" onclick="openmodal('berlin')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>독일 베를린</li>
								<li>Berlin</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/bern.jpg" class="zoom" onclick="openmodal('bern')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>스위스 베른</li>
								<li>Bern</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/amsterdam.jpg" class="zoom" onclick="openmodal('amsterdam')" >
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>네덜란드 암스테르담</li>
								<li>Amsterdam</li>
							</ul>
						</div>

					</div>
				</div>


				<div class="picwrap1">
					<div class="pntwrap1">
						<div class="pic">
							<img src="./travelplanimgs/wien.jpg" class="zoom" onclick="openmodal('wien')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>오스트리아 빈</li>
								<li>Wien</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/venezia.jpg" class="zoom" onclick="openmodal('venezia' )">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>이태리 베네치아</li>
								<li>Venezia</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/antwerp.jpg" class="zoom" onclick="openmodal( 'antwerp')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>벨기에 앤트워프</li>
								<li>Antwerp</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/copenhagen.jpg" class="zoom" onclick="openmodal( 'copenhagen')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>덴마크 코펜하겐</li>
								<li>Copenhagen</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/nice.jpg" class="zoom" onclick="openmodal( 'nice')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>프랑스 니스</li>
								<li>Nice</li>
							</ul>
						</div>

					</div>
				</div>
			</div>



			<div class="recdes_oceania">
				<div class="picwrap1">
					<div class="pntwrap1">
						<div class="pic">
							<img src="./travelplanimgs/melbourne.jpg" class="zoom" onclick="openmodal( 'melbourne')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>호주 멜버른</li>
								<li>Melbourne</li>
							</ul>
						</div>
						<div class="text">
							<br>
						</div>
					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/brisbane.jpg" class="zoom" onclick="openmodal( 'brisbane')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>호주 브리즈번</li>
								<li>Brisbane</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/auckland.jpg" class="zoom" onclick="openmodal( 'auckland')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>뉴질랜드 오클랜드</li>
								<li>Auckland</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/palau.jpg" class="zoom" onclick="openmodal( 'palau')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>팔라우</li>
								<li>Palau</li>

							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/saipan.jpg" class="zoom" onclick="openmodal( 'saipan')">
						</div>
						<div class="textwrap">
							<ul class="text">

								<li>사이판</li>
								<li>Saipan</li>
							</ul>
						</div>

					</div>
				</div>


				<div class="picwrap1">
					<div class="pntwrap1">
						<div class="pic">
							<img src="./travelplanimgs/guam.jpg" class="zoom" onclick="openmodal( 'guam')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>괌</li>
								<li>guam</li>

							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/goldcoast.jpg" class="zoom" onclick="openmodal( 'goldcoast')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>호주 골드코스트</li>
								<li>Goldcoast</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/tauranga.jpg" class="zoom" onclick="openmodal( 'tauranga')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>뉴질랜드 타우랑가</li>
								<li>Tauranga</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/fiji.jpg" class="zoom" onclick="openmodal( 'fiji')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>피지</li>
								<li>Fiji</li>

							</ul>
						</div>
					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/southisland.jpg" class="zoom" onclick="openmodal( 'southisland')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>뉴질랜드 남섬</li>
								<li>South Island</li>
							</ul>
						</div>

					</div>
				</div>
			</div>

			<div class="recdes_africa">
				<div class="picwrap1">
					<div class="pntwrap1">
						<div class="pic">
							<img src="./travelplanimgs/cairo.jpg" class="zoom" onclick="openmodal( 'cairo')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>이집트 카이로</li>
								<li>Cairo</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/daressalaam.jpg" class="zoom" onclick="openmodal( 'daressalaam')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>탄자니아 다르에스살람</li>

								<li>Dar es Salaam</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/mauritius.jpg" class="zoom" onclick="openmodal( 'mauritius')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>모리셔스Mauritius</li>

							</ul>
						</div>
					</div>

					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/capetown.jpg" class="zoom" onclick="openmodal( 'capetown')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>남아공 케이프타운</li>
								<li>Cape Town</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/nyirobi.jpg" class="zoom" onclick="openmodal( 'nyirobi')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>케냐 나이로비</li>
								<li>Nyirobi</li>
							</ul>
						</div>

					</div>
				</div>


				<div class="picwrap1">
					<div class="pntwrap1">
						<div class="pic">
							<img src="./travelplanimgs/kigali.jpg" class="zoom" onclick="openmodal( 'kigali')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>르완다 키갈리</li>
								<li>Kigali</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/seychelles.jpg" class="zoom" onclick="openmodal( 'seychelles') ">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>세이셸</li>
								<li>Seychelles</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/zanzibar.jpg" class="zoom" onclick="openmodal( 'zanzibar')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>탄자니아 잔지바르</li>
								<li>Zanzibar</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/checchaouen.jpg" class="zoom"onclick="openmodal( 'checchaouen')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>모로코 쉐프샤우엔</li>
								<li>Checchaouen</li>
							</ul>
						</div>

					</div>
					<div class="pntwrap">
						<div class="pic">
							<img src="./travelplanimgs/accra.jpg" class="zoom"onclick="openmodal( 'accra')">
						</div>
						<div class="textwrap">
							<ul class="text">
								<li>가나 아크라</li>
								<li>Accra</li>
							</ul>
						</div>

					</div>
				</div>
			</div>

		</div>
		<div class="wheretogo">
			<div class="julwrap">
				<div class="btextwrap">어디를 가야할 지 고민된다면..</div>

				<div class="ltextwrap">가장 많이 검색한 여행지</div>


				<div class="nemowrap">
					<div class="pic3s">
						<img src="./travelplanimgs/top4bali.jpg" class="zoom"onclick="openmodal()">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li>인도네시아 발리</li>
							<li>Bali</li>
						</ul>
					</div>
				</div>

				<div class="nemowrapwm">
					<div class="pic3s">
						<img src="./travelplanimgs/top4paris.jpg" class="zoom"onclick="openmodal()">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li>프랑스 파리</li>
							<li>Paris</li>
						</ul>
					</div>
				</div>
				<div class="nemowrapwm">
					<div class="pic3s">
						<img src="./travelplanimgs/top4newyork.jpg" class="zoom"onclick="openmodal()">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li>미국</li>
							<li>New York</li>
						</ul>
					</div>
				</div>

				<div class="nemowrapwml">
					<div class="pic3s">
						<img src="./travelplanimgs/top4sydney.jpg" class="zoom"onclick="openmodal()">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li>호주 시드니</li>
							<li>Sydney</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="julwrap">
				<div class="ltextwrap" id="modal">회원님들이 다녀오신 여행지</div>
				<div class="nemowrap">
					<div class="pic3s">
						<img src="./travelplanimgs/dubai.jpg" class="zoom"onclick="openmodal()">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li style="letter-spacing: 1px;">두바이를 다녀오신</li>
							<li style="letter-spacing: 1px;">eclips회원님의 이야기</li>
						</ul>
					</div>
				</div>
				<div class="nemowrapwm">
					<div class="pic3s">
						<img src="./travelplanimgs/bohol.jpg" class="zoom"onclick="openmodal()">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li style="letter-spacing: 1px;">보홀을 다녀오신</li>
							<li style="letter-spacing: 1px;">Yeti회원님의 이야기</li>
						</ul>
					</div>
				</div>
				<div class="nemowrapwm">
					<div class="pic3s">
						<img src="./travelplanimgs/tainan.jpg" class="zoom"onclick="openmodal()">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li style="letter-spacing: 1px;">타이난을 다녀오신</li>
							<li style="letter-spacing: 1px;">마루는 강쥐님의 이야기</li>
						</ul>
					</div>
				</div>

				<div class="nemowrapwml">
					<div class="pic3s">
						<img src="./travelplanimgs/lasvegas.jpg" class="zoom"onclick="openmodal()">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li style="letter-spacing: 1px;">라스베가스를 다녀오신</li>
							<li style="letter-spacing: 1px;">핸드폰진동님의 이야기</li>
						</ul>
					</div>
				</div>
			</div>


			<div class="julwrap">
				<div class="ltextwrap">제철여행지 - 지금이 이 나라를 여행하기에 가장 좋은 날씨!</div>
				<div class="nemowrap">
					<div class="pic3s">
						<img src="./travelplanimgs/venice.jpg" class="zoom">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li>이태리</li>
							<li>Italy</li>
						</ul>
					</div>
				</div>
				<div class="nemowrapwm">
					<div class="pic3s">
						<img src="./travelplanimgs/taiwan.jpg" class="zoom">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li>대만</li>
							<li>Taiwan</li>
						</ul>
					</div>
				</div>
				<div class="nemowrapwm">
					<div class="pic3s">
						<img src="./travelplanimgs/vietnam.jpg" class="zoom">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li>베트남</li>
							<li>VietNam</li>
						</ul>
					</div>
				</div>

				<div class="nemowrapwml">
					<div class="pic3s">
						<img src="./travelplanimgs/austria.jpg" class="zoom">
					</div>
					<div class="textwrap">
						<ul class="usertext">
							<li>오스트리아</li>
							<li>Austria</li>
						</ul>
					</div>
				</div>



			</div>
		</div>
		</div>
	</section>
	</form>

	<footer>
	   <jsp:include page="footer.jsp" />
	</footer> 


</body>
</html>