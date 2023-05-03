<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String start_date= (String) request.getAttribute("start_date");
String end_date = (String) request.getAttribute("end_date");

session.setAttribute("start_date", start_date);
session.setAttribute("end_date", end_date);

response.sendRedirect("cscenter_qna_list.jsp");

%>

</body>
</html>