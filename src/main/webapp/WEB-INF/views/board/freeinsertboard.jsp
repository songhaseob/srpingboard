<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <link href="/css/dashboard.css" rel="stylesheet">

    <script src="/css/ie-emulation-modes-warning.js"></script>
    <!-- include summernote css/js -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

    <title>자유게시판 게시글 등록</title>
    <style>
    	label{
    		display: inline-block;
    		width: 80px;
    	}
    	input{
    		width: 430px;
    	}
    </style>
   
  

  </head>
  

  <body>
	
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/board/boardmake">HS-Board</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="${cp }/boardmain.jsp">Home</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Help</a></li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

   
     
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li ><a href="/board/boardmake">게시판생성 <span class="sr-only">(current)</span></a></li>
            <li class="active"></li>
            <c:forEach var="list" items="${list}">
            <c:if test="${list.bor_act == 1 }">
                       <li><a onclick="url('${list.bor_no}');">${list.bor_name}</a></li>
            </c:if>
	        </c:forEach>
          </ul>
          
        </div>
        <form action="/board/insertboardpost" method="post" >
        <input type="hidden" name ="borno" value="${borno}">
        <input type="hidden" name="userid" value="${S_USER.userid}">	
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	          <h1 class="page-header">게시판등록</h1>
	          <label>제&nbsp;&nbsp;&nbsp;&nbsp;목 : </label><input type="text" name="title"><br>
	          <br>
	           <textarea id="summernote" name="editordata"></textarea>
	          <input type="submit" id="insertbtn" value="등록">
        </div>
     </form>
    

    <script>
  $(document).ready(function() {
	  /* $('#board_content').summernote('editor.insertText', "${board_data.BOARD_CONTENT}") */
	  $('#summernote').summernote({
		  height: 500
	  });
	});
  </script> 
  </body>
</html>