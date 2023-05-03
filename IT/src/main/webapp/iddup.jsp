<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList" %>

<% request.setCharacterEncoding("utf-8"); %>

<%
	String id = request.getParameter("mem_id");
	ArrayList<String> idList = new ArrayList<String>();

	Connection conn = null;
	Statement stmt = null;
 
	try{

	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/teamproject","root","1234");

	if(conn == null){
	  throw new Exception("데이터베이스에 연결할 수 없습니다.");
	}

	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select mem_id from mem_account;");

	// id 값을 저장할 ArrayList 생성
	while(rs.next()){

	  idList.add(rs.getString("ID"));
	}

	}finally{
	  try{
	    stmt.close();
	  }catch(Exception ignored){
	  }
	  try{
	    conn.close();
	  }catch(Exception ignored){
	  }

	}

	for (int i =0;i<idList.size() ;i++ ) {
		if (idList.get(i).equals(id)) {
			out.print("false");
			return;
		}
	}
	out.print("success");




%>