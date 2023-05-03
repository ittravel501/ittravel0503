
            
//             function widenlist(){

//                 $(".schlist").toggle();

//             }



            function addlist(name){

                var plusUl = document.createElement("ul");
                var newLi =          "<li>" 
                    + "<div class='listtitlewrap'>"
                    +"    <div class='listtitle' id='hoianresort'>"                      
                    +    name
                    +    "</div>"
                    +    "<div class='listremove' onclick='removeListItem(this)'>"
                    +    "삭제"
                    +    "</div>"
                    +    "</div>"
                    +    "<div class='details'>"
                    +        "<div class='memos'>"
                    +          "<ul>"
                    +         "</ul>"
                    +        "</div>"
                    +        "<div class='btns'>"
                    +         "<button id='addmemo1' onclick='openModal()'>메모추가</button>"
                    +"<div id='memo-modal' class='modal'>"
                    +"    <div class='modal-content'>"
                    +"                 <label for='memo-textarea' style ='font-size : 15px;'>메모</label>"
                    +"                  <textarea id='memo-textarea' style='margin : 0 10px 10px 10px;'></textarea>"
                    +"                   <div class ='confirmnclose'>"
                    +"                        <div class='close' onclick='addMemo()' style='float : left;'>확인</div>"
                    +"                        <div class='close' onclick='closeModal()' style = 'float:right;'>취소</div>"
                    +"                    </div>"
                    +"              </div>"
                    +"        </div> "
                    +         "<button class = 'addmoney' style ='margin-left : 70px;' id='moneymodal' onclick='openMoneyModal()'>가계부추가</button>"
                    +        "</div>"
                    +    "</div>"
                    +"</li>   "
                plusUl.innerHTML = newLi;
                console.log(plusUl);
                //console.log(document.getElementById("schlist"));
                document.getElementById("schlist").appendChild(plusUl);

          $(document).on('click', '.memo', function() {
                var memo_id = $(this).data('id');
                var memo_title = $(this).find('.memo-title').text();
                var memo_content = $(this).find('.memo-content').text();
  
                 $('#modal-memo-id').val(memo_id);
                 $('#modal-memo-title').val(memo_title);
                 $('#modal-memo-content').val(memo_content);
  
                $('#modal-memos').modal('show');
                    });
            }

            function removedivs(button){
                const divToRemove = button.parentNode;
                const container = document.getElementById("container");
                container.removeChild(divToRemove);
               const removeButton = document.getElementById("remove");
                 removeButton.onclick = function() {


                 }
            }
            




            function removeListItem(el) {
                 var li = el.parentNode.parentNode; // 부모 노드(li)를 찾기 위해 두 번의 parentNode 호출
                    li.parentNode.removeChild(li); // 부모 노드에서 해당 li를 삭제
                }

                 function openModal() {
                var modal = document.getElementById("memo-modal");
                modal.style.display = "block";
                }

                
                 function openMoneyModal() {
                	  var modal = document.getElementById("moneyback");
                	  modal.classList.add("show");
                	}
   
                function addMemo() {
                var memo = document.getElementById("memo-textarea").value;
                var memos = document.querySelectorAll(".memos ul")[0];
                var li = document.createElement("li");
                li.textContent = memo;
                memos.appendChild(li);
                closeModal();
                document.getElementById("memo-textarea").value = ""

                }

                function closeModal() {
                    var memo = document.getElementById("memo-textarea").value;
                    var modal = document.getElementById("memo-modal");
                    var memoInput = document.getElementById("memoInput");
                    memo =""; 
                    modal.style.display = "none";
                     $(".addmemo1").show();
                }


	function addDays(){
		const fromDate = newDate(document.getElementById(""))
	}
                
                
	function show() {
		  document.querySelector(".background").classList.toggle("show");
		}

	function close() { 
		  document.querySelector(".background").classList.remove("show");
		}
	
	
// 	esc를 눌렀을 때 모달창이 닫히게 하는 기능 
    window.addEventListener("keydown", function (event) {
        if (event.key === "Escape" && document.querySelector(".background").classList.contains("show")) {
        	document.querySelector(".background").classList.remove("show");
        }
      });

    window.addEventListener("keydown", function (event) {
        if (event.key === "Escape" && document.getElementById("moneyback").classList.contains("show")) {
        	document.getElementById("moneyback").classList.remove("show");
        }
      });


       
           const addMoneyButtons = document.querySelectorAll('.addmoney');
    for (let i = 0; i < addMoneyButtons.length; i++) {
      addMoneyButtons[i].addEventListener('click', show);
    }

    const closeButtons = document.querySelectorAll('.close');
    for (let i = 0; i < closeButtons.length; i++) {
      closeButtons[i].addEventListener('click', close);
    }
    
    
    const addMemo100Buttons = document.querySelectorAll('.addmemo100');
    for (let i = 0; i < addMoneyButtons.length; i++) {
      addMemo100Buttons[i].addEventListener('click', show);
    }
//    
//    document.getElementById("addmemo1").addEventListener("click", function() {
//        document.getElementById("memo-textarea").focus();
//          });
//    