<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 판매글 올리기 </title>
	<script type="text/javascript">
		function checkFun(){
			if(document.boardForm.title.value=="")
			{
				alert("제목을 입력해 주세요");	
				document.boardForm.title.select();
			}
			else if(document.boardForm.major.value=="")
			{
				alert("학부를 선택해 주세요");	
				document.boardForm.major.select();
			}
			else if(document.boardForm.price.value=="")
			{
				alert("가격을 입력해 주세요");	
				document.boardForm.price.select();
			}
			else if(document.boardForm.expl.value=="")
			{
				alert("설명을 입력해 주세요");	
				document.boardForm.expl.select();
			}
			else
			{
				boardForm.submit();	
			}
		}
	
	</script>
</head>
<body>

	상품 정보 게시 >
	
	<hr>
	<form name="boardForm" action="addProcess.jsp" method="post">
		<div>
		<fieldset style= "width:300px">
			<legend>제목</legend>
				<textarea class= "message_area" cols="40" rows="1" name="title"></textarea>
		</fieldset>
		<fieldset style= "width:300px">
			<legend>학부</legend>
				<select name="major">
					<option value="">=== 선택===</option>
					<option value="컴퓨터공학부">컴퓨터공학부</option>
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
					<option value="기타">기타</option>
				</select>	
		</fieldset>
		<fieldset style="width:300px">
			<legend>가격 (원)</legend>
				<input type="number" name="price">
		</fieldset>
		<fieldset style="width:300px">
			<legend>설명</legend>
				<textarea name= "expl" class= "message_area"  cols="40" rows="5" ></textarea>
		</fieldset>
		
		<table border="0">
			<tr>
				<td>
					<form method="post">
						<input type="button" value= "게시" onclick="checkFun()">
					</form>				
				</td>
				<td>
					<form action = "view.jsp" method="post">
						<input type= "submit" value="판매목록으로 가기">
					</form>
				</td>
				<td>
					<form action = "main2.jsp" method="post">
						<input type= "submit" value="메인화면 가기">
					</form>
				</td>
			</tr>
		</table>
		</div>
	</form>

</body>
</html>