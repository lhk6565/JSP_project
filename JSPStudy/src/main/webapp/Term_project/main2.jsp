<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리학교 헌책방</title>
<script type="text/javascript">
	function alertevent(){
		alert("아직 이벤트 기간이 아닙니다!! 이벤트 기간 : 6월 30일")
	}
	function alertmembership(){
		alert("이미 회원이십니다!!")
	}
</script>
</head>
<body> 
<div align = "center" style = "width : 70%; margin:0 auto">
	<table style = "width:100%; text-align:center; border:1">
		<tr>
			<td colspan = "2" style = "width:100%; height: 200px">
				<jsp:include page = "header2.jsp"/>
			</td>
		</tr>
		<tr>
			<td style = "width:70%; height: 1000px">
				<div style="height:500px;border:1">
					<input type = "image" src = "image/banner_collabo.jpg" alt = "배너이미지" onclick = "return alertevent()" style = "margin-top: 50px;width: 800px; height:300px"> <br><br>
				</div>
				<div style="height:500px;border:1">
					<input type = "image" src = "image/banner_membership.jpg" alt = "배너이미지" onclick = "return alertmembership()" style = "margin-top: 50px;width: 800px; height:300px">
				</div>
			</td>
			<td style = "width:30%; height: 600px">
				<div align ="center" style = "width:100%; height:20%;">
					<jsp:include page = "usermain.jsp"/>
				</div>
				<div align = "center" style = "height:80%;">
				<table style = "align:center; text-align:center; height:100%; border:1">
					<tr>
						<td>
							<form name = "sell" action = "add.jsp" method = "post">
								<input type = "image" src = "image/banner_sell.jpg" alt = "배너이미지" style = "width: 300px; height:150px">
							</form>
						</td>
					</tr>
					<tr>
						<td>
							<form name = "dept" action = "major_menu.jsp" method = "post">
								<input type = "image" src = "image/banner_dept.jpg" alt = "배너이미지" style = "width: 300px; height:150px">
							</form>
						</td>
					</tr>
					<tr>
						<td>
							<form name = "list" action = "view.jsp" method = "post">
								<input type = "image" src = "image/banner_list.jpg" alt = "배너이미지" style = "width: 300px; height:150px">
							</form>
						</td>
					</tr>
					<tr>
					<td>
						<form name = "board" action = "freeView.jsp" method = "post">
								<input type = "image" src = "image/banner_board.jpg" alt = "배너이미지" style = "width: 300px; height:150px">
							</form>
					</td>
				</tr>
				</table>
				</div>
			</td>
		</tr>
		<tr>
		
		</tr>
		<tr>
			<td colspan = "2" style = "width:100%; height: 50px; background-color:gray">
				<jsp:include page = "footer.jsp"/>
			</td>
		</tr>
	</table>
	</div>
</body>
</html>