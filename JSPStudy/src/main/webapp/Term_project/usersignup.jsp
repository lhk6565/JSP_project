<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Sign Up </title>
<script type="text/javascript">
	function checkFun(){
		var f = document.user_signup
		var regExpstu_id = /^[0-9]*$/;
		
		if(f.userID.value==""){
			alert("아이디를 입력해 주세요.");
			f.userID.select();
		}
		else if(f.userPW.value==""){
			alert("비밀번호를 입력해 주세요.");
			f.userPW.select();
		}
		else if(f.username.value==""){
			alert("이름을 입력해 주세요.");
			f.username.select();
		}
		else if(f.student_ID.value==""){
			alert("학번을 입력해 주세요.");
			f.student_ID.select();
		}
		else if(f.major.value=="choice"){
			alert("전공을 선택해 주세요.");
			f.major.select();
		}
		else if(f.grade.value=="choice"){
			alert("학년을 선택해 주세요.");
			f.grade.select();
		}
		else if(f.phone.value==""){
			alert("핸드폰번호를 입력해 주세요.");
			f.phone.select();
		}
		else if(f.userMAIL.value==""){
			alert("이메일을 입력해 주세요.");
			f.userMAIL.select();
		}
		else if(!regExpstu_id.test(f.student_ID.value)){
			alert("학번은 숫자만 입력해 주세요.")
			f.student_ID.select();
		}
		else{
			user_signup.submit();
		}
	}
</script>
</head>
<body>
	<form action="usersignup_process.jsp" name="user_signup" method="post">
		<div align="center" style="width:600px;margin:0 auto">
			<table style="border:1px;margin-bottom:15px;border-collapse:collapse;width:100%">
				<tr>
					<td align="center">
						<input type="text" name="userID" placeholder="아이디"
						style="height:20px;padding:2px 0px;width:90%;font-size:14px">
					</td>
					<td align="center">
						<input type="password" name="userPW" placeholder="비밀번호"
						style="height:20px;padding:2px 0px;width:90%;font-size:14px">
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="text" name="username" placeholder="이름"
						style="height:20px;padding:2px 0px;width:90%;font-size:14px">
					</td>
					<td align="center">
						<input type="text" name="student_ID" placeholder="학번"
						style="height:20px;padding:2px 0px;width:90%;font-size:14px">
					</td>
				</tr>
			</table>
			<table style="border:1px;margin-bottom:15px;border-collapse:collapse;width:100%">
				<tr>
					<td>
						<select name = "major" style="margin-left:13px">
							<option value = "choice"> 학과 </option>
								<option value="컴뷰터공학부">컴퓨터공학부</option>
								<option value="게임공학부">게임공학부</option>
								<option value="기계공학과">기계공학과</option>
								<option value="기계설계공학과">기계설계공학과</option>
								<option value="메카트로닉스공학부">메카트로닉스공학부</option>
								<option value="전자공학부">전자공학부</option>
								<option value="신소재공학과">신소재공학과</option>
								<option value="생명화학공학과">생명화학공학과</option>
								<option value="디자인공학부">디자인공학부</option>
								<option value="경영학부">경영학부</option>
								<option value="나노반도체공학과">나노반도체공학과</option>
								<option value="에너지전기공학과">에너지전기공학과</option>
						</select>
					</td>
					<td>
						<select name = "grade" style="margin-left:13px">
							<option value = "choice"> 학년 </option>
								<option value = "1학년"> 1학년 </option>
								<option value = "2학년"> 2학년 </option>
								<option value = "3학년"> 3학년 </option>
								<option value = "4학년"> 4학년 </option>
						</select>
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="text" name="phone" placeholder="000-0000-0000"
						style="height:20px;padding:2px 0px;width:90%;font-size:14px">
					</td>
					<td align="center">
						<input type="email" name="userMAIL" placeholder="이메일"
						style="height:20px;padding:2px 0px;width:90%;font-size:14px">
					</td>
				</tr>
			</table>
			<hr>
			<div align="center">
				<input type="button" value=" 가입하기 " onclick="checkFun()"> &nbsp;&nbsp;
				<input type="reset" value=" 다시작성 ">
			</div>
		</div>
	</form>
</body>
</html>