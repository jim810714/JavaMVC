<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"	href="<c:url value='/css/styles.css'  />">
<title>查詢結果</title>
</head>
<body>
	<div align="center">
		<h2 style='color: blue;'>查詢結果</h2>
		<hr>
		<p />
		<h3>輸入日期:${date}</h3>
		<hr>
		<h3>是今年的第 ${dayOfYear} 天</h3>
		<hr>	
		<a href='Homework02.jsp'>再試一次</a>
	</div>
</body>
</html>