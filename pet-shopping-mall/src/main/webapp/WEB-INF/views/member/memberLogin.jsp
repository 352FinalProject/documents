<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/common/header.jsp" />

<style>
.table-bordered {
	display: flex;
	align-items: center;
	text-align: center;
	margin: 20px auto;
	align-content: stretch;
	justify-content: center;
}

.login-form {
	display: flex;
	text-align: center;
	margin: 0 auto;
	font-size: 35px;
	justify-content: center;
	margin-top: 10px;
	margin-bottom: 50px;
}

.form-control {
	display: flex;
	width: 300px;
	text-align: center;
	justify-content: center;
	margin: 20px auto;
	height: 50px;
	border-radius: 35px;
	font-size: 15px;
}

.form-control2 {
	display: flex;
	width: 300px;
	text-align: center;
	justify-content: center;
	margin: 20px auto;
	height: 50px;
	border-radius: 35px;
	font-size: 15px;
}

.save-search {
	margin-top: 15px;
	margin-bottom: 25px;
	display: flex;
	margin-left: -30px;
}

.search-id {
	display: flex;
}

.saveId { /*    ̵      */
	margin-right: 50px;
	font-size: 20px;
	width: 20px;
	height: 20px;
	margin-botom: 10px;
	align-items: center;
	margin-top: -3px;
}

.saveId input {
	margin-left: 50px;
	margin-top: -2px;
}

.saveId p {
	margin-right: 40px;
	padding-right: 500px;
}

.search {
	margin-left: 5px;
	border: none !important;
	background-color: white;
	border: none !important;
}

.login-btnAll {
	display: flex;
	text-align: center;
	border: none !important;
	justify-content: center;
	font-size: 70px;
	margin: 10px auto;
}

.login-btn {
	background-color: #c8c8c8;;
	width: 300px;
	height: 50px;
	border-radius: 35px;
	border: none !important;
	color: white;
	font-size: 20px;
}

.kakao-btn {
	background-color: #ffeb00;
	width: 300px;
	height: 50px;
	border-radius: 35px;
	border: none !important;
	color: white;
	font-size: 20px;
}

.naver-btn {
	background-color: #00c577;
	width: 300px;
	height: 50px;
	border-radius: 35px;
	border: none !important;
	color: white;
	font-size: 20px;
}

.signUp-btn {
	background: #c8c8c8;
	width: 300px;
	height: 50px;
	border-radius: 35px;
	border: none !important;
	color: white;
	font-size: 20px;
}

.login-btn2 {
	display: flex;
	text-align: center;
	background-color: #c8c8c8;
	border: none !important;
	margin: 0 auto;
	justify-content: center;
}

.login-btn.active {
	text-align: center;
	background-color: #5886d3;
	margin: 0 auto;
	justify-content: center;
}

button, input {
	cursor: pointer;
}
/* 모달 스타일 */
.modal {
	display: none; /* 모달 창 숨김 */
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 10% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 70%;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	border-radius: 5px;
}

.modal-content h2 {
	margin-top: 0;
}

.modal-content form {
	margin-top: 20px;
}

.form-group {
	margin-bottom: 15px;
}

.modal-form-control {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.btn-primary {
	background-color: #5886d3;
	color: white;
	border: none;
	padding: 10px 20px;
	border-radius: 5px;
	cursor: pointer;
}

/* 닫기 버튼 스타일 */
#closeModalBtn {
	background-color: #ccc;
	color: white;
	border: none;
	padding: 5px 10px;
	border-radius: 5px;
	float: right;
	cursor: pointer;
	margin-bottom: 5px;
}
</style>
<section class="common-section" id="#">
	<div class="common-container">
		<form:form
			action="${pageContext.request.contextPath}/member/memberLogin.do"
			method="post">
			<table class="table-bordered">
				<tr>
					<td>
						<div class="login-form">
							<h2>로그인</h2>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="login-modal">
							<div class="login-input">
								<input type="text" id="inputId" class="form-control"
									name="memberId" required="required" placeholder="아이디" />
							</div>
							<div class="login-input">
								<input type="password" id="inputPassword" class="form-control2"
									name="password" required="required" placeholder="비밀번호">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="save-search">
							<div class="saveId">
								<input class="saveId" type="checkbox" name="saveId">
							</div>
							<div class="search-id">
								<p>아이디저장</p>
								<button type="button" class="search" id="searchId"
									onclick='location.href="${pageContext.request.contextPath}/member/memberSearchId"'>아이디찾기</button>
								<button type="button" class="search" id="searchPassword">비밀번호찾기</button>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="login-btnAll">
							<!-- 로그인 오류 메시지 출력 -->
							<c:if test="${param.error ne null}">
								<script>
					            alert('아이디 또는 비밀번호가 일치하지 않습니다.');
					        </script>
							</c:if>
							<!-- 로그인 버튼 -->
							<button type="submit" name="btn-outline-success" id="loginButton"
								class="login-btn">로그인</button>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="login-btnAll">
							<button type="submit" class="kakao-btn"
								onclick="location.href='${pageContext.request.contextPath}/oauth2/authorization/kakao'">카카오
								로그인</button>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="login-btnAll">
							<button type="submit" class="naver-btn"
								onclick="location.href='${pageContext.request.contextPath}/oauth2/authorization/naver'">네이버
								로그인</button>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="login-btnAll">
							<button type="submit" class="signUp-btn"
								onclick="location.href='${pageContext.request.contextPath}/member/terms.do'">회원가입</button>
						</div>
					</td>
				</tr>
			</table>
		</form:form >
	</div>
	<!-- 모달 창 -->
	<div id="passwordResetModal" class="modal">
		<div class="modal-content">
			<h2>비밀번호 찾기</h2>
			<p>이메일을 입력하여 비밀번호 재설정 링크를 받아보세요.</p>
			<form:form id="passwordResetForm" action="${pageContext.request.contextPath}/email/sendTemporaryPassword.do"
				method="post" name="sendEmail">
				<div class="form-group">
					<label for="email">이메일 주소:</label> <input type="email"
						class="modal-form-control" id="userEmail" name="email" required>
				</div>
				<button type="submit" id="sendEmail" class="btn-primary">이메일
					전송</button>
			</form:form>
			<button type="button" id="closeModalBtn">닫기</button>
		</div>
	</div>
</section>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script>
const checkInputs = () => {
    const id = document.getElementById('inputId').value;
    const password = document.getElementById('inputPassword').value;
    const loginButton = document.getElementById('loginButton');

    if (id && password) {
        loginButton.style.backgroundColor = '#5886d3';
        loginButton.disabled = false; // 버튼 활성화
    } else {
        loginButton.style.backgroundColor = '#c8c8c8';
        loginButton.disabled = true; // 버튼 비활성화
    }
};

document.getElementById('inputId').addEventListener('input', checkInputs);
document.getElementById('inputPassword').addEventListener('input', checkInputs);

checkInputs();

const searchPasswordBtn = document.getElementById("searchPassword");
const closeModalBtn = document.getElementById("closeModalBtn");
const passwordResetModal = document.getElementById("passwordResetModal");

// 비밀번호 찾기 버튼 클릭 시
searchPasswordBtn.addEventListener("click", function() {
    passwordResetModal.style.display = "block";
});

// 모달 닫기 버튼 클릭 시
closeModalBtn.addEventListener("click", function() {
    passwordResetModal.style.display = "none";
});

$(document).ready(function() {
    const csrfToken = document.querySelector('meta[name="_csrf"]').getAttribute('content');
    const csrfHeader = document.querySelector('meta[name="_csrf_header"]').getAttribute('content');
	const sendEmail = document.getElementById("sendEmail");
    $("#sendEmail").click(function() {
        const userEmail = $("#userEmail").val();
        $.ajax({
            type: 'POST',
            url: '${pageContext.request.contextPath}/email/sendTemporaryPassword.do',
            data: {
                'email': userEmail
            },
            dataType: "text",
            beforeSend: function(xhr) {
                xhr.setRequestHeader(csrfHeader, csrfToken); // 헤더에 CSRF 토큰 추가
            },
            success: function(result) {
            	console.log(result);
                if (result === "no") {
                    alert('임시비밀번호를 전송 했습니다.');
                    userEmail.submit();
                } else {
                    alert('임시비밀번호를 전송 했습니다.');
                }
            },
            error: function() {
                console.log('에러 체크!!');
            }
        });
    });
});


</script>

<jsp:include page="/WEB-INF/views/common/sidebar.jsp" />
<jsp:include page="/WEB-INF/views/common/footer.jsp" />