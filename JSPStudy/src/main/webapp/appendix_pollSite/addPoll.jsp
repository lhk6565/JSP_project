<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문 조사 사이트</title>
<script type="text/javascript">
	function viewPollList(){
		document.location.href="viewPollList.jsp";
	}
	function checkFun(){
		var f = document.inputForm
		if(f.question.value==""){
			alert("문항을 입력해 주세요.");
			f.question.select();
		}
		else if(f.answer1.value==""){
			alert("답변1을 입력해 주세요.");
			f.answer1.select();
		}
		else if(f.answer2.value==""){
			alert("답변2을 입력해 주세요.");
			f.answer2.select();
		}
		else if(f.answer3.value==""){
			alert("답변3을 입력해 주세요.");
			f.answer3.select();
		}
		else if(f.answer4.value==""){
			alert("답변4을 입력해 주세요.");
			f.answer4.select();
		}
		else if(f.answer5.value==""){
			alert("답변5을 입력해 주세요.");
			f.answer5.select();
		}
		else{
			inputForm.submit();
		}
	}
</script>
</head>
<body>
	설문 추가 하기
	<hr>
	<form action="addPollProcess.jsp" name="inputForm" method="get">
		<fieldset style="width:300px">
			문 항 : 
			<input type="text" name="question"><br>
			답변1 : 
			<input type="text" name="answer1"><br>
			답변2 : 
			<input type="text" name="answer2"><br>
			답변3 : 
			<input type="text" name="answer3"><br>
			답변4 : 
			<input type="text" name="answer4"><br>
			답변5 : 
			<input type="text" name="answer5"><br>
			<hr>
			<div align="center">
				<input type="reset" value=" 다시 입력 ">&nbsp;
				<input type="button" value=" 추가 하기 " onclick="checkFun()">&nbsp;
				<input type="button" value=" 리스트 보기 " onclick="viewPollList()">
			</div>
		</fieldset>
	</form>
</body>
</html>