<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
   request.setCharacterEncoding("UTF-8");
%>  
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
    <head>
      
        <link href="${contextPath}/css/join.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
        
        <!-- image slide -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

        <script>
            $(document).ready(function(){
              $('.slider').bxSlider({
                auto: true
              })
              $('.content-slider').bxSlider({
                  moveSlides:1,
                  minSlides:3,
                  maxSlides:3,
                  slideWidth:300,
                  auto: false
              })
            });
        </script>

        <style>
        .bx-wrapper {border:0;background:#fbfbfb;box-shadow:none;}
        </style>
        <!--은빈 시작-->
        
    </head>
        <body>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.min.js"></script>
      <link rel="stylesheet" href="sweetalert2.min.css">
       <section class="page-section ">
       <div class="page-wrap">
                <!-- 시작-->
       <form method="post"   action="${contextPath}/job/job_search.do"> 
    <div class =".join_eun_body">
    <div class="jon_eun_container">
             </div>   
             <ul class="join_box">
                <br>
                <h2 style="text-align: center">잡스루에 오신걸 환영합니다!</h2>
                <br>
                <li class="eun_checkBox">
                        <ul class="eun_box_inside">
                        <li><p>이름</p></li>
                        <input type="text" name ="member_name">
                    </ul>    
                </li>       
                <li class="eun_checkBox">
                    <ul class="eun_box_inside">
                        <li><p>아이디</p></li>
                        <input type="text" class="idChk" name ="member_id">
                        <!-- 대겸 수정 부분 시작-->
                        	<br>
                        	<li id="alert-id-success" style="display: none;  color:#888; text-align:left;">* 사용할 수 있는 아이디입니다. </li>
    						<li id="alert-id-danger" style="display: none; color: #d92742; font-weight: bold; text-align:left; ">* 이미 존재하는 아이디 입니다. </li>
    					
    					<!-- 대겸 수정 부분 끝-->
                        </ul>
                </li>
               	<script>
               	//회원가입 아이디 중복체크 부분 
            	$('.idChk').focusout(function () {
            		$.ajax({
                		type:"post",
                		url:"${contextPath}/idChk.do", //${contextParh} 조심!!
                		data: { "member_id":$(".idChk").val()}, //예제랑 조금 다르게 ajax 데이터를 넘기도록 한다 -> 이 방법이 더 확실히 넘어감
                		success:function(data){
                					
                					if(data == '1'){
                						
                						$("#alert-id-success").css('display', 'none');
                		                $("#alert-id-danger").css('display', 'inline-block');
                					} else if(data == '0'){
                					
                						$("#alert-id-success").css('display', 'inline-block');
                		                $("#alert-id-danger").css('display', 'none');
                					}
                					
                				},
                		error:function(){
                			alert("오류입니다.");
                		}
                	})
               	});
               	</script>
               
               
                <li class="eun_checkBox">
                    <ul class="eun_box_inside">
                        <li><p>비밀번호</p></li>
                        <input type="password" name ="member_password" class="pw" id='password_1' >
                        </ul>
                </li>
                <li class="eun_checkBox">
                    <ul class="eun_box_inside">
                        <li><p>비밀번호 확인</p></li>
                        <input type="password" class="pw" id='password_2'>
                        <!-- 대겸 수정 부분 시작-->
                        	<br>
                        	<li id="alert-success" style="display: none;  color:#888; text-align:left;">* 비밀번호가 일치합니다.</li>
    						<li id="alert-danger" style="display: none; color: #d92742; font-weight: bold; text-align:left; ">* 비밀번호가 일치하지 않습니다.</li>
    					
    					<!-- 대겸 수정 부분 끝-->
                        </ul>
                </li>
                <!-- 대겸 기능 추가 부분 -->
                <script>
    $('.pw').focusout(function () {
        var pwd1 = $("#password_1").val();
        var pwd2 = $("#password_2").val();
  
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }
        }
    });
</script>
 <!-- 대겸 기능 추가 부분 끝  -->
                
               <!-- 대겸 이메일 인증 부분 시작  -->
                <li class="eun_checkBox">
                    <ul class="eun_box_inside">
                        <li><p>이메일</p></li>
                        <input type="email" name ="member_email" id="emailText" class="mail_input" >
                        </ul>
                </li>
                
                
                <li class="eun_checkBox">
                    <ul class="eun_box_inside">
                    	<input type="button" id ="mail_check_button" VALUE="인증번호 받기">
                    </ul>
                </li>
               
                
                <li class="eun_checkBox">
                    <ul class="eun_box_inside">
                        <li><p>인증번호</p></li>
                       
                        <input type="text" id="mail_check_input_false" disabled="disabled" class="mail_check_input">
                       	
                        <br>
                        <input type="button"  id ="mail_check_input_button_false" class="mail_check_input_button" disavled="disabled" VALUE="인증하기">  
                        <br>
                        <span id = "mail_check_input_box_warn"></span>  <!-- 인증번호 확인 알림창  -->                  
                        </ul>
                </li>
                
                <script>
                var code = "" //인증번호를 입력받기 위한 변수선언 
                
                /* 인증번호 이메일 전송  */
                $("#mail_check_button").click(function(){
                	var email = $(".mail_input").val(); //입력한 이메일을 email로 할당
                	var checkInput = $(".mail_check_input"); //인증번호 입력란 
                	var checkButton = $(".mail_check_input_button"); //인증번호 입력 확인 버튼 
                	
                	$.ajax({
                		method:"GET",
                		url:"${contextPath}/mailCheck.do", //${contextParh} 조심!!
                		data: { "email":email}, //예제랑 조금 다르게 ajax 데이터를 넘기도록 한다 -> 이 방법이 더 확실히 넘어감 
                		success:function(data){
                			Swal.fire({
                                icon: 'success',
                                title: '발송 완료',
                                text: '[메일함]에서 인증번호를 확인해주세요.',
                              })
                					console.log("data : " + data ) //데이터가 컨트롤러로 잘 들어왔는지 확인
                					checkInput.attr("disabled", false);
                					checkButton.attr("disabled", false);
                					checkInput.attr("id", "mail_check_input_true");
                					checkButton.attr("id", "mail_check_input_button_true");
                					code = data;
                					
                					
                					
                					
                					
                				},
                		error:function(){
                			Swal.fire({
                                icon: 'error',
                                title: '발송 실패',
                                text: '다시 시도해주세요.',
                              })
                		}
                	});
                });
                
                /* 인증번호 비교 */
                $(".mail_check_input").blur(function(){
                	var inputCode = $(".mail_check_input").val();        // 입력코드    
                    var checkResult = $("#mail_check_input_box_warn");    // 비교 결과 알림창 
                    
                    if(inputCode == code){                            // 일치할 경우
                        checkResult.html("인증번호가 일치합니다.");
                        checkResult.attr("class", "correct");        
                    } else {                                            // 일치하지 않을 경우
                        checkResult.html("인증번호를 다시 확인해주세요.");
                        checkResult.attr("class", "incorrect");
                    }    
                    
                });
                
                
                </script>
                <!-- 대겸 이메일 인증 부분 끝   -->
                
                
                <li class="eun_checkBox">
                    <ul class="eun_box_inside">
                        <li><p>전화번호</p></li>
                        <input type="text" name ="member_phone" placeholder="  - 제외하고 입력하세요">
                        </ul>
                <br>
                </li>
                   <!--  <li class="eun_checkBox">
                        <ul class="eun_box_inside">
                            <li><p>약관에 대해 모두 동의합니다.</p></li>
                            <li class="checkAllBtn">
                                <input type="checkbox" name="chk1" class="chkAll" >
                            </li>
                        </ul>
                    </li> -->
                    <li class="eun_checkBox">
                        <ul class="eun_box_inside">
                            <li><p>개인회원 이용약관 동의(필수)</p></li>
                            <li class="checkBtn">
                                <input type="checkbox" name="chk2"> 
                            </li>
                        </ul>
                        <textarea name="" id="">제1조 (목적) 본 약관은 ㈜잡스루(이하 "회사"라 합니다)이 운영하는 웹사이트(이하 “사이트”라 합니다)사이트를 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요한 사항의 규정을 목적으로 합니다. ① 회사는 본 약관의 내용과 상호, 영업소 소재지, 사업자등록번호, 연락처 등을 이용자가 알 수 있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지합니다. 약관의 내용은 이용자가 사이트 등의 링크를 통한 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
                            ② 회사는 약관의 규제 등에 관한법률, 전기통신기본법, 전기통신사업법, 정보통신망이용촉진등에관한법률 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다. ③ 회사가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일전(약관의 변경이 개인회원에게 불리하거나 기업회원의 권리•의무의 중요한 변경의 경우에는 30일전)부터 웹사이트 초기화면 공지사항 또는 이메일을 통해 사전 공지합니다. ④ 개인회원은 변경된 약관에 대해 거부할 권리가 있으며, 개인회원은 변경된 약관이 공지된 지 15일 이내에 변경 약관에 대한 거부 의사를 표시할 수 있습니다. 만약, 개인회원이 거부 의사를 표시하지 않고 서비스를 계속 이용하는 경우, 회사는 개인회원이 변경 약관 적용에 동의하는 것으로 봅니다. ⑤ 개인회원이 제4항에 따라 변경 약관 적용을 거부할 의사를 표시한 경우, 회사는 개인회원에게 15일의 기간을 정하여 사전 통지 후 해당 개인회원과의 서비스 이용계약 또는/및 별도로 체결된 계약을 해지할 수 있습니다.
            </textarea>
                    </li>
                    <li class="eun_checkBox">
                        <ul class="eun_box_inside">
                            <li><p>개인정보 수집 및 이용에 대한 안내(필수)</p></li>
                            <li class="checkBtn">
                                <input type="checkbox" name="chk3">
                            </li>
                        </ul>
            
                        <textarea  id="">주식회사 잡스루(이하 “회사”)는 「개인정보보호법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」(이하 “정보통신망법”) 등 관련 법령상의 개인정보 보호규정을 준수하며, 개인정보보호법에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다. 본 개인정보처리방침은 회사가 제공하는 사람인 서비스(오투잡 서비스 별도)에 적용되며 다음과 같은 내용을 포함하고 있습니다.
            </textarea>
                    </li>
                    <li class="eun_checkBox">
                        <ul class="eun_box_inside">
                            <li><p>위치정보 이용약관 동의(선택)</p></li>
                            <li class="checkBtn">
                                <input type="checkbox" name="chk4">
                            </li>
                        </ul>
            
                        <textarea name="" id="eun_p">제 1 조 (목적):이 약관은 네이버 주식회사 (이하 잡스루)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다. 제 2 조 (약관 외 준칙): 이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다. 제 3 조 (서비스 내용 및 요금):①회사는 직접 위치정보를 수집하거나 위치정보사업자로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.
                            
            </textarea>
                    </li>
                    <li class="eun_checkBox">
                        <ul class="eun_box_inside">
                            <li><p>마케팅 정보 수신 동의 - 이메일 (선택)</p></li>
                            <li class="checkBtn">
                                <input type="checkbox" name="chk5">
                            </li>
                        </ul>
                        <ul class="eun_box_inside">
                            <li><p>마케팅 정보 수신 동의 - SMS/MMS(선택)</p></li>
                            <li class="checkBtn">
                                <input type="checkbox" name="chk6" class="chkbox">
                            </li>
                        </ul>
                        <ul class="eun_box_inside">
                            <li><p>정보 보유 기간</p></li>
                            <li class="checkBtn">
                                <input type="radio" name = "infoHold" value="1year"><label>1년</label>
                                <input type="radio" name = "infoHold" value="3year"><label>3년</label>
                                <input type="radio" name = "infoHold" value="forever"><label>회원 탈퇴시</label>
        
                            </li>
                        </ul>
                       
                         <li><button type="submit"class="eun_fpmgBt"> 다음 단계로</button>
                    </li>
                </ul>
        </form>                    
        </div>
        </section>
	<script type="text/javascript" src="${contextPath }/js/join.js"></script>
    </body>