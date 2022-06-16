<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 자유게시판 </title>
	<script type="text/javascript">
		function checkFun(){
			if(document.free.title.value=="")
			{
				alert("제목을 입력해 주세요");	
				document.free.title.select();
			}
			else if(document.free.expl.value=="")
			{
				alert("설명을 입력해 주세요");	
				document.free.expl.select();
			}
			else
			{
				free.submit();	
			}
		}
	
	</script>
</head>
<body>

	상품 정보 게시 >
	
	<hr>
		
	<form name="free" action="freeAddProcess.jsp" method="post">
		<fieldset style= "width:300px">
			<legend>제목</legend>
				<textarea class= "message_area" cols="40" rows="1" name="title"></textarea>
		</fieldset>
		<fieldset style="width:300px">
			<legend>설명</legend>
				<textarea name= "expl" class= "message_area"  cols="40" rows="5" ></textarea>
		</fieldset><br>
		
		<table border="0">
			<tr>
				<td>
					<form method="post">
						<input type="button" value= "게시" onclick="checkFun()">
					</form>				
				</td>
				<td>
					<form method="post">
						<input type="reset" value= "취소" >
					</form>				
				</td>
				<td>
					<form action = "freeView.jsp" method="post">
						<input type= "submit" value="돌아가기">
					</form>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>