<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="UTf-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>고객센터</title>

	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	 <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-gothic.css" rel="stylesheet">
	 
	 
	 <link rel="stylesheet" type="text/css" href="css/header_footer.css">
	 <link rel="stylesheet" type="text/css" href="css/cscenter.css">
	 
	 
	 <!-- 헤더 js -->
	 <script src="js/slick-1.8.1/slick/slick.min.js"></script>

	 <script src="js/shopping_bn.js"></script>
	 
	 <style type="text/css">
    
	    	.cscenter_menu_wrap .cscenter_menu:first-child {
	      background-color: rgba(126, 125, 203, 0.26);
	    }
	    

    
    </style>

</head>


<body>

<!--헤더부분-->

	<header>
	   <jsp:include page="header.jsp" />
	</header> 
    


	<section>

		<div class="cscenter" >
		
		
			<div class="cscenter_menu_wrap" >
			
					<div class="cscenter_menu" >
					
						<div class="cscenter_menu_txt">			
							<p><a href="N_list.jsp" >공지사항</a></p>
						</div>	
					
					</div>
					
					<div class="cscenter_menu" >
					
						<div class="cscenter_menu_txt">			
							<p><a href="cscenter_faq.jsp">자주하는 질문</a></p>
						</div>
					
					</div>
					
					<div class="cscenter_menu" >
					
						<div class="cscenter_menu_txt">			
							<p><a href="">직접 문의하기</a></p>

						</div>

					</div>
				
				</div>
						
		</div>
	
	</section>



	<footer>
    	<jsp:include page="footer.jsp"/>
	</footer>


</div>
</body>

</html>