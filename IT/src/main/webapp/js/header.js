/**
 * 헤더가 있는 모든 페이지를 열자마자 이 js는 실행된다.
 * 그래서 열자마자 header_login_success.jsp가 실행된다. 
 * header_login_success.jsp에서 받아온 값을 re에 저장한다. 
 */


$(window).on("load", function() {
   $.ajax({ //ajax는 화면전환없이 다른페이지 갔다가 오는 것.
      type : "POST",
      url : "header_login_success.jsp", //이 페이지로 넘어갔다 온다. 
      async : false, 
      success : function(re) { //정상적으로 위 url에 갔다 올 경우, 돌아오는 값을 re라는 변수로 받겠다. 
                         //String id = request.getParameter("id"); > 전 페이지에서 name이 id인 것을 받아와 String id에 저장하겠다는 의미.
                         //String id를 내가 임의로 지정한 것처럼, re도 내가 임의대로 지정할 수 있다. 그니까 그냥 re로 받은거임 !!
         
         login_nick = re.trim();    //url에 갔다 와서, 받아온 값의 공백을 제거한다. 이를 login_id로 명명한다!   
      },
      error :  function(e) { //url에 못갔다오면 에러...
         alert(e.responseText); 
      }
   });
   
   if(login_nick!="null") { //login_id가 null이 아니라면 
      
      $(".topwrap1 li.login_true").show(); //로그아웃 문구가 보인다. 
      $(".topwrap1 li.login_false").hide(); //로그인,회원가입 문구를 숨긴다. 
      $(".login_true:eq(1)").text(login_nick + "의 페이지" ); //
      
   }
   else if(login_nick="null") { //login_id가 null이면
   
      $(".topwrap1 li.login_false").show(); //로그인,회원가입 문구를 보인다.
      $(".topwrap1 li.login_true").hide(); //로그아웃 문구를 숨긴다.
   }
});