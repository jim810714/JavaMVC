<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<script type="text/javascript"  src="<c:url value='/js/jquery-3.5.1.min.js'/>"></script>
<%-- <link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath}/css/styles.css"> --%>
<link rel="stylesheet" type="text/css"	href="<c:url value='/css/styles.css'  />">
<meta charset="UTF-8">
<title>今天是今年的第幾天</title>
</head>
<body>
	<div align="center">
		<h2 style='color: blue;'>算出今天是今年的第幾天</h2>
		<hr>
		<p/>
		<form id='form1' name='form1' action='Home02Servlet' method='POST' onclick='return true'>
			請輸入日期算出今天是今年的第幾天<br>
			  <input type="date" name="number1" id="number1" name="number1">
			<input id='button' type='submit' value='查詢' />
		</form>
		<div id='result' style='position: relative; top: 40px;'></div>
		<a href='../index.jsp'>回首頁</a>
	</div>
	
<script>

</script>
</body>
</html>