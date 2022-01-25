<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">

	<h2>트랜잭션(Transaction)</h2>
	
	<h3>트랜잭션 템플릿 사용하여 티켓 구매하기</h3>
	
	<h4>제약조건 : check(countNum<=5) : 티켓구매는
    	5장까지만 가능함. 6장이상은 오류발생됨 </h4>

	<form action="buyTicketTplAction.do" method="post" 
		name="ticketFrm">
	<!-- table>tr*3>td*2 -->
	<table class="table table-bordered" 
		style="width:500px;">
		<tr>
			<td>고객아이디</td>
			<td>
				<input type="text" name="customerId" />
			</td>
		</tr>
		<tr>
			<td>티켓구매수</td>
			<td>
				<select name="amount">
				<%
				for(int i=1 ; i<=10 ; i++){
				%>
					<option value="<%=i%>"><%=i%>장</option>
				<%} %>
				</select>				
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit" class="btn 
					btn-warning">구매하기</button>
			</td>
		</tr>
	</table>
	</form>
</div>

</body>
</html>