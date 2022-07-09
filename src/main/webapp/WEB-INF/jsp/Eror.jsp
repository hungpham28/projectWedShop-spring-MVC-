<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href=<c:url value="/resources/style/assets/css/erorPage.css"/>/>
</head>
<body>
<div class="container">
	
	<div  class="error">
		<p class="p">4</p>
		<span class="dracula">			
			<div class="con">
				<div class="hair"></div>
				<div class="hair-r"></div>
				<div class="head"></div>
    		<div class="eye"></div>
    		<div class="eye eye-r"></div>
  			<div class="mouth"></div>
  			<div class="blod"></div>
  			<div class="blod blod2"></div>
			</div>
		</span>
		<p class="p">4</p>
		
		<form class="page-ms" action="<c:url value="/Trangchu"/>">
			<p class="page-msg"> Oops, the page you're looking for Disappeared </p>
			<button class="go-back">Go Back</button>
		</form>
</div>
	</div>

<iframe style="width:0;height:0;border:0; border:none;" scrolling="no" frameborder="no" allow="autoplay" src="https://instaud.io/_/2Vvu.mp3"></iframe>
</body>
</html>