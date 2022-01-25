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
	
	<h3>트랜잭션템플릿 사용한 구매 결과 보기</h3>
	
	<span style="color:red; font-size:1.5em;">
		${successOrFail }		
	</span>	
	<ul>
		<li>고객아이디 : ${ticketInfo.customerId }</li>
		<li>티켓구매수 : ${ticketInfo.amount }</li>
	</ul>
	<p>
		<a href="./buyTicketTpl.do">
			티켓구매페이지 바로가기
		</a>
	</p>
</div>

</body>
</html>