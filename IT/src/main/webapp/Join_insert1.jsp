<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>가입_윤진</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/itt_join.css">
<link rel="stylesheet" type="text/css" href="css/header_footer.css">

	  <!-- <script src="./flight.js"></script>  -->
	  <!-- data를 따로 적지않고 url에 값을 바로 줄 수 있게 ?id +id  로 하였음 -->
	  
	  <script src="js/inputaddress.js"></script>
	  <script src="js/it_join.js"></script>  

</head>


<body >

	<header>
	   <jsp:include page="header.jsp" />
	</header> 


	<section>


	<h2>회원가입</h2><br>
	
	<div id="tablewrap">
	
	 <form action="Join_insert2.jsp" method="post">
		

	

	<table  align="center" cellpadding="10" cellspacing="20" width="700px">
	
	<div id="pwrap">
	<p style="text-align: right; width: 670px; margin: 0 auto;">*는 필수항목입니다.</p>
	</div>
	
	<tr>
		<td id="idtd" bgcolor="white" >

				<b><p>*아이디</p></b>

				<input  id="idbox" type="text" name="mem_id"  maxlength="20" placeholder="아이디를 입력해주세요" required>
				

				<input id="idcheckbutton" name="checkid" type="button" value="중복확인">


		</td>
	</tr>

	<tr>
		<td bgcolor="white">


	

			<b><p>*비밀번호</p></b>
			<div id="pw_msg"></div>
			<input id="password" class="pwbox" type="password" name="mem_pw" minlength="5" maxlength="20" placeholder="비밀번호를 입력해주세요" oninput="pwcheck()" ><br>


		</td>

	</tr>

	<tr>
		<td bgcolor="white">



			<b><p>*비밀번호 재확인</p></b>
			<input  id="passwordcheck" class="pwbox"  type="password" name="passwordcheck" maxlength="20" placeholder="비밀번호를 한번 더 입력해주세요"  oninput="pwcheck()" ><br>
			<div id="pwcheck_msg"></div>

	


		</td>
	</tr>

	<tr>
		<td bgcolor="white">
		
			<b><p>*이름</p></b>
			<input id="namebox" type="text" name="mem_name" size="10" placeholder="이름을 입력해주세요" maxlength="10" required><br>
		
		</td>
	</tr>

	<tr>
		<td bgcolor="white">
		
			<b><p>닉네임</p></b>
			<input id="mem_nick" type="text" name="mem_nick" size="10" placeholder="닉네임을 입력해주세요" maxlength="10" required><br>
		
		</td>
	</tr>

	<tr>
		<td bgcolor="white">
			<b><p>본인 확인 이메일</p></b>

			<div class="Email">
				<input id="emailtext" class="box"  type="text" name="email1"required>
				@ 
				<select style="width: 150px; height: 25px;" name="email2">
					<option>선택</option>
					<option>naver.com</option>
					<option>hanmail.net</option>
					<option>gmail.com</option>
					<option>직접입력</option>
				</select>
			</div>

		</td>
	</tr>


	<tr>
		<td bgcolor="white">

			<b><p>*주소</p></b>
			<input class="addressbox" style="width: 370px;" type="text" name="addr1" placeholder="우편번호" id="sample4_postcode" required readonly>

			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
			<input class="addressbox" type="text" name="addr2" placeholder="지번" id="sample4_jibunAddress" required readonly>
			<input class="addressbox" type="text" name="addr3" placeholder="상세주소"  ><br>

		</td>
	</tr>

	<tr>
		<td bgcolor="white">
			<b><p>휴대전화</p></b>
				<input class="mobilebox" id="mobile1" type="text" name="mobile1"  maxlength="3" oninput="mobile1()"required>
				&nbsp;-&nbsp;
				<input class="mobilebox" id="mobile2" type="text" name="mobile2"  maxlength="4" oninput="mobile2()"required>
				&nbsp;-&nbsp;
				<input class="mobilebox" id="mobile3" type="text" name="mobile3" maxlength="4" oninput="mobile3()"required>
				<br>
		</td>
	</tr>

	<tr>
		<td bgcolor="white">
			<b><p>성별</p></b>

				<div class="gender">
					<input  type="radio" name="gender" value="male" checked>남자
					<input type="radio" name="gender" value="female"  >여자
				</div>
				
		</td>
	</tr>


	<tr>
		<td bgcolor="white">
			<b><p>생년월일</p></b>
				<input  class="birthbox" id="yearbox" placeholder="YYYY" type="text" name="birth_year" size="4" maxlength="4" oninput="yearboxtxt()" required>

				<input  class="birthbox" id="monthbox" placeholder="MM" type="text" name="birth_month" size="4" maxlength="2" oninput="monthboxtxt()"required>

				<input  class="birthbox" id="daybox" placeholder="DD" type="text" name="birth_day" size="4" maxlength="2" oninput="dayboxtxt()"required>

		</td>
	</tr>

	<tr>
		<td bgcolor="white">
			<b><p>소식받기</p></b>

				<div class="news">
				<input class="news_check" type="checkbox" name="news" value="SMS" checked >SMS &nbsp;
				
				<input class="news_check" type="checkbox" name="news" value="Email" >E-mail &nbsp;
				
				<input class="news_check" type="checkbox" name="news" value="pst" >우편 &nbsp;
				</div>
		</td>
	</tr>

	<tr>
		<td bgcolor="white">
		<div>
			<div id="joinbutton">

		
					<input id="cancel" type="button"style="width: 150px; height: 50px; " name="cancel" value="취소" onclick="joincancel()">
					<input id="joinnbutton" style="width: 150px; height: 50px; " type="submit" name="join" value="가입하기" onclick="joinbutton()">
	
			</div>

		</div>
		</td>
	</tr>

</table>



</form>

</div>

</section>


	<footer>
    	<jsp:include page="footer.jsp"/>
	</footer>

        

</body>


</html>

