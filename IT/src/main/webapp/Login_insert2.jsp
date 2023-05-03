<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controller.UserDao" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="dto.Joininfo" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>

	<% 
		request.setCharacterEncoding("UTF-8");
	
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		//회원 아이디와 패스워드가 일치하는지 비교
 		 
		UserDao ud = new UserDao();
		
 		int result = ud.login(user.getMem_id(),user.getMem_pw());
 		
 		//String mem_nick = user.getMem_nick(); //회원정보에 저정된 닉네임 가져와서 mem_nick에 저장하기
 		
 		
 		if(result == 1){
 			
 			String mem_nick = ud.loginsession(mem_id);
 			
 			session.setAttribute("mem_id",mem_id);
 			session.setAttribute("mem_nick", mem_nick);
 			
			response.sendRedirect("Mainindex.jsp");
			
 		} else if(result ==0){
 		%>	
 		<script>
			alert("패스워드가 틀립니다.");
			location.href="login001.jsp";
			history.back();
		</script>	
		<%
 		} else if(result == -1){
		%>
		<script>
			alert("존재하지 않는 아이디입니다.");
			history.back();
		</script>	
		<%
 		}else if(result == -2){
		%>
		<script>
			alert("데이터베이스 오류입니다.");
			history.back();
		</script>
		<% 
 		}
		%>
</body>
</html>