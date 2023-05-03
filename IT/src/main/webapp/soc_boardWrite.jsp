<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잇로그 글쓰기</title>
</head>
	<link rel="stylesheet" href="css/soc_boardWriteCss.css">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-gothic.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> 
    <script src="./slick-1.8.1/slick/slick.min.js"></script>
</head>

<body>
<form action="soc_writearrange.jsp" method ="post"> 
	<div class="wrap">
		<!-- 최상단 -->
		<div class="top_wrap">
			<div style="width:30%;">
			<img src="imgs/board/icon_pack.png">
<!-- 			<input id="img-selector" type="file" accept="image/*" style="display:none;"> -->
			<a href="#"><img src="imgs/board/gallery_icon.png" id="uploadimg" style="cursor : pointer;"></a>
			<a href="#"><img src="imgs/board/movie_icon.png"></a>
			<a href="#"><img src="imgs/board/pick_icon.png"></a>
					
		<table border="1">
    <tr>
      <th align="center" bgcolor="orange" width="500px">첨부파일</th>
    </tr>
    <tr>
      <td align="center">
        <input type="file" name="uploadFile" id="uploadFile" multiple>
        <div id="preview"></div>
      </td>
    </tr>
  </table>
			</div>
			<div style="width:40%;"></div>
			<div class="title">잇로그 글쓰기</div>
		</div>
		<div style="display:flex; justify-content:center;">
		<div class="travel_plan">
			<div class="day_plan">
				<div>2023/04/22</div>
				<h4>스케줄1</h4>
					<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>				
			</div>
			<div class="day_plan">
				<div>2023/04/23</div>
				<h4>스케줄1</h4>
					<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>				
			</div>
			<div class="day_plan">
				<div>2023/04/24</div>
				<h4>스케줄1</h4>
					<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>
				<h4>스케줄1</h4>
				<h5>설명1</h5>				
			</div>
		</div></div>
		<!-- 텍스트박스 -->
		<div>
		<textarea placeholder="내용을 입력하세요."  name ="soc_con" id="soc_con" style="overflow:scroll;"></textarea>
		<a href="soc_basicboard.jsp"><input type="button" value="취소"></a><input type="button" value="등록">
		</div>
	</div>
	</form>
</body>
<script>

$(document).ready(function (e){
    $("input[type='file']").change(function(e){

      //div 내용 비워주기
      $('#preview').empty();

      var files = e.target.files;
      var arr =Array.prototype.slice.call(files);
      
      //업로드 가능 파일인지 체크
      for(var i=0;i<files.length;i++){
        if(!checkExtension(files[i].name,files[i].size)){
          return false;
        }
      }
      
      preview(arr);
      
      
    });//file change
    
    function checkExtension(fileName,fileSize){

      var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
      var maxSize = 20971520;  //20MB
      
      if(fileSize >= maxSize){
        alert('파일 사이즈 초과');
        $("input[type='file']").val("");  //파일 초기화
        return false;
      }
      
      if(regex.test(fileName)){
        alert('업로드 불가능한 파일이 있습니다.');
        $("input[type='file']").val("");  //파일 초기화
        return false;
      }
      return true;
    }
    
    function preview(arr){
      arr.forEach(function(f){
        
        //파일명이 길면 파일명...으로 처리
        var fileName = f.name;
        if(fileName.length > 10){
          fileName = fileName.substring(0,7)+"...";
        }
        
        //div에 이미지 추가
        var str = '<div style="display: inline-flex; padding: 10px;"><li>';
        str += '<span>'+fileName+'</span><br>';
        
        //이미지 파일 미리보기
        if(f.type.match('image.*')){
          var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
          reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
            //str += '<button type="button" class="delBtn" value="'+f.name+'" style="background: red">x</button><br>';
            str += '<img src="'+e.target.result+'" title="'+f.name+'" width=100 height=100 />';
            str += '</li></div>';
            $(str).appendTo('#preview');
          } 
          reader.readAsDataURL(f);
        }else{
          str += '<img src="/resources/img/fileImg.png" title="'+f.name+'" width=100 height=100 />';
          $(str).appendTo('#preview');
        }
      });//arr.forEach
    }
  });


// const uploadimg = document.getElementById('uploadimg');
// const imageSelector = document.getElementById('img-selector');
// const soc_con = document.getElementById('soc_con');

// function focusEditor() {
//     soc_con.focus({preventScroll: true});
// }

// function addImage() {
//     imageSelector.click();
// }

// uploadimg.addEventListener('click', addImage);

// imageSelector.addEventListener('change', function (e) {
//     const files = e.target.files;
//     if (!!files) {
//         insertImageDate(files);
//     }
// });

// function insertImageDate(files) {
//     for (let i = 0; i < files.length; i++) {
//         const reader = new FileReader();
//         reader.addEventListener('load', function (e) {
//             const img = document.createElement('img');
//             img.src = reader.result;
//             soc_con.appendChild(img);
//         });
//         reader.readAsDataURL(files[i]);
//     }
// }

// focusEditor(); // 에디터에 포커스를 먼저 줍니다.

    
</script>

</html>