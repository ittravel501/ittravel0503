<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>

  <% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <title> Servlet 로그인 </title>

</head>

<body> 
   <%@ include file="header.jsp" %>
   <form action="Login_insert1.jsp">

      <%       
      String id = (String) session.getAttribute("IDa");
      String password = (String) session.getAttribute("PASSWORDa");
   %>

     아이디: <%= id %><br>비밀번호: <%= password %> 

      
      <input type="submit" id="logoutbt" value="로그아웃">



   </form>
   <%@ include file="footer.jsp" %>
</body>
</html>
                                        