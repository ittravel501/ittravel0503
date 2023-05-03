<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.concurrent.TimeUnit" %>
<%@ page language="java" contentType="text/html;charset=utf-8"
	pageEncoding="UTf-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<script>
function addDays() {
  const fromDate = new Date(document.getElementsByName("depdate")[0].value);
  const toDate = new Date(document.getElementsByName("arrdate")[0].value);
  const days = Math.ceil((toDate - fromDate) / (1000 * 60 * 60 * 24));
  console.log(toDate-fromDate);

  const daysDiv = document.getElementById("days");
  daysDiv.innerHTML = "";
  for (let i = 1; i <= days; i++) {
    const dayDiv = document.createElement("div");
    dayDiv.id = "Day" + i;
    dayDiv.textContent = "Day " + i;
    daysDiv.appendChild(dayDiv);
  }
}

document.getElementsByName("depdate")[0].addEventListener("change", addDays);
document.getElementsByName("arrdate")[0].addEventListener("change", addDays);

var cityName = document.getElementsByTagName("h3")[0].innerHTML;
sessionStorage.setItem("cityName", cityName);

</script>



	
	
  
<%

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Date fromDate = sdf.parse(request.getParameter("depdate"));
	Date toDate = sdf.parse(request.getParameter("arrdate"));

	long diffInMllies = Math.abs(toDate.getTime()-fromDate.getTime());
	long diff = TimeUnit.DAYS.convert( diffInMllies, TimeUnit.MILLISECONDS);
	
	
  // 선택한 날짜를 session 객체에 저장
  
  String destination = request.getParameter("coouncity");
  
  String smalltravel1 = request.getParameter("smalltravel1");
  String smalltravel2 = request.getParameter("smalltravel2");
  
  session.setAttribute("smalltravel1", smalltravel1);
  session.setAttribute("smalltravel2", smalltravel2);
  
  String fromDate1 = request.getParameter("depdate");
  String toDate1 = request.getParameter("arrdate");
  
  
  
  session.setAttribute("fromDate", fromDate1);
  session.setAttribute("toDate", toDate1);
  session.setAttribute("coouncity", destination);
  session.setAttribute("diff",(int)diff); 
  response.sendRedirect("travel_sch_mng.jsp");
  %>
   
