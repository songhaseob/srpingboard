<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <title>Dashboard Template for Bootstrap</title>
   
 

    <!-- Bootstrap core CSS -->
    <link href="${cp }/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${cp }/css/dashboard.css" rel="stylesheet">

    <script src="${cp }/css/ie-emulation-modes-warning.js"></script>
	
   
  </head>

  <body>

     <%@ include file="/common/nav.jsp" %>
   	 <%@ include file="/common/left.jsp" %>
          
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">board</h1>
           
           
			<form id="frm" action="/board/boardmake" method="post">
	           <label>게시판 이름</label>&nbsp;<input type="text" name="boardname">
	            <select id="st" name="st">
	            	<option value="true">사용</option>
	            	<option value="false">미사용</option>
	            </select>
	            <button id="boardbtn" type="submit" name="boardbtn">생성</button><br>
          	</form>
			
			<c:forEach  items="${list}" var="bos">
			<form action="/board/boardactive" method="post">
            <label>게시판 이름</label>&nbsp;<input type="text" name="bn" value="${bos.bor_name}">
			<c:choose>
				<c:when test="${bos.bor_act ==1}">
		            <select id="sts" name="sts">
		            	<option value="t" selected>사용</option>
		            	<option value="f">미사용</option>
		            </select>
				</c:when>
				<c:otherwise>
		            <select id="sts" name="sts">
		            	<option value="t" >사용</option>
		            	<option value="f" selected>미사용</option>
		            </select>
				</c:otherwise>
			</c:choose>
            
           <button id="freebtn" type="submit" name="boardname">수정</button><br>
           	</form>
			</c:forEach>
          

          
          <div class="table-responsive">
           
          </div>
        </div>
      </div>

  </body>
</html>