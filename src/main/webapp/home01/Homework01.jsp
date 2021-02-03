<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<script type="text/javascript"  src="<c:url value='/js/jquery-3.5.1.min.js'/>"></script>
<%-- <link rel="stylesheet" type="text/css"	href="${pageContext.request.contextPath}/css/styles.css"> --%>
<link rel="stylesheet" type="text/css"	href="<c:url value='/css/styles.css'  />">
<meta charset="UTF-8">
<title>最大公因數與最小公倍數</title>
</head>
<body>
	<div align="center">
		<h2 style='color: blue;'>查詢最大公因數與最小公倍數</h2>
		<hr>
		<p/>
		<form id='form1' name='form1' action='Home01Servlet' method='POST' onclick='return false'>
			*<input id="number1" name="number1" value="請輸入數字求最大公因數" onkeyup="value=value.replace(/[^\d]/g,'')"/><br>
			*<input id="number2" name="number2" value="請輸入數字求最大公因數" onkeyup="value=value.replace(/[^\d]/g,'')"/><br>
			*為必填欄位<br>
			
			<input id='button' type='submit' value='查詢' />
		</form>
		<div id='result' style='position: relative; top: 40px;'></div>
		<a href='../index.jsp'>回首頁</a>
	</div>
	
<script>
	$(document).ready(function(){
	    $("#button").click(function(){
	        if($("#number1").val()==""){
	            alert("請填寫數字");
	            eval("document.form1['number1'].focus()");   
	        }else if($("#number2").val()==""){
	            alert("請填寫數字");
	            eval("document.form1['number2'].focus()");   
	     	 }else{
	            document.form1.submit();
	        }
	    })
	 })
</script>
</body>
</html>