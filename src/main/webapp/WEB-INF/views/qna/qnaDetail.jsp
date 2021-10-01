<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA Detail</title>
<link rel="stylesheet" type="text/css" href="resources/myLib/myStyle.css">
<script src="resources/myLib/jquery-3.2.1.min.js"></script>
</head>
<body>
<h2 class="n">홈페이지 이름</h2>
<table class="table">
<tr height="40">
     <td bgcolor="SkyBlue">작성자</td>  
	 <td>${Apple.id}</td> 
</tr> 
<tr height="40">  	 
     <td bgcolor="SkyBlue">제목</td>
	 <td>${Apple.bqtitle}</td> 
</tr>  	 
<tr height="40">
	 <td bgcolor="SkyBlue">내용</td>
	 <td>${Apple.bqcontent}</td>
</tr>
</table>

<!-- 댓글 -->
<div id="reply">
  
</div>
<c:if test="${message!=null}">
<hr>
=> ${message}
</c:if>

<br><hr>
<!--** 로그인 했는지 ..
 	** 글쓴이(Apple.id) 와 글보는이(loginID) 가 동일인 인지 .. 
 	=> 표시 되는 메뉴가 달라져야 함 
 	=> 답글 달기 추가 -->
<c:if test="${loginID!=null}"> 	
  <c:if test="${loginID==Apple.id || loginID=='admin'}">
	<a href="qdelete?bqno=${Apple.bqno}">글삭제</a>&nbsp;
  </c:if>
  <c:if test="${loginID=='admin'}">
	<a href="qreplyf?bqno=${Apple.bqno}&id=${loginID}&root=${Apple.root}&indent=${Apple.indent}&step=${Apple.step}&bqpw=${Apple.bqpw}">답글등록</a>&nbsp;
  </c:if>
</c:if>  

<c:if test="${loginID!=null}"> 	
	<a href="binsertf">새글등록</a>&nbsp;
	<a href="로그아웃">Logout</a>&nbsp;
	<br><hr>
</c:if>  
<a href="qlist">문의</a>&nbsp;
<a href="home">HOME</a>
</body>
</html>