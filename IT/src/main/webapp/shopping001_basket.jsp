<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTf-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>쇼핑메인</title>

	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	 <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-gothic.css" rel="stylesheet">
	 
	 
	 <link rel="stylesheet" type="text/css" href="css/header_footer.css">
	 <link rel="stylesheet" type="text/css" href="css/shopping001_basket.css">
	 
	 <!-- 헤더 js -->
	 <script src="js/slick-1.8.1/slick/slick.min.js"></script>

	 <script src="js/shopping_bn.js"></script>

</head>


<body>

<!--헤더부분-->

	<header>
	   <jsp:include page="header.jsp" />
	</header> 
    


	<section>

		<div id="s_order" >
			<ul>
				<li> 01장바구니</li>>
				<li>02주문서작성/결제</li>>
				<li>03주문완료</li>
			</ul>		
		</div>
		
		<div id="s_basketwrap" >
			<div id="s_basket" >
				<ul>
					<li>상품</li>
					<li>옵션</li>
					<li>상품금액</li>
					<li>수량</li>
					<li>배송비</li>
					<li>할인/적립</li>
					<li>합계금액</li>
					<li>선택</li>
				</ul>
			
			</div>
		
		</div>
	


	</section>



	<footer>
    	<jsp:include page="footer.jsp"/>
	</footer>


</div>
</body>

</html>