<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>

  <% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <title> Servlet 로그인 </title>

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"> </script>
</head>

<body> 

	<header>
	   <jsp:include page="header_login_success.jsp" />
	</header> 

   <form action="Login_insert4.jsp">

      <%       
      String id = (String) session.getAttribute("IDa");
      String password = (String) session.getAttribute("PASSWORDa");
   %>

      아이디: <%= id %><br>비밀번호: <%= password %> 

      <script type="text/javascript">

        $(function(){
            $("#logoutbt").click(function () {
     
              <% session.removeAttribute("IDa"); %>

         });
        });
         
      </script>
      
      <input type="submit" id="logoutbt" value="로그아웃">

      <!-- name은 데이터를 주고받기 위함이고 class는 css를 붙이기 위함이다.  -->

   </form>

</body>
</html>
                                        