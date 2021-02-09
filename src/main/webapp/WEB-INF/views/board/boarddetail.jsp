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
   
 	<script>
 		$(function(){
 			$('#updatebtn').on("click",function(){
 			    $('#frm2').attr("method","get");
 				$('#frm2').attr("action","${cp}/boardpostupdate");
 				$('#frm2').submit();
 			})
 			
 			
 		})
 	</script>

    <!-- Bootstrap core CSS -->
    <link href="${cp }/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${cp }/css/dashboard.css" rel="stylesheet">

    <script src="${cp }/css/ie-emulation-modes-warning.js"></script>
	
   
  </head>

  <body>

     <%@ include file="/common/nav.jsp" %>
   	 <%@ include file="/common/left.jsp" %>
   	 
        <form id="frm2">
			<input type="hidden" name="post_no2" value="${detail.post_no}"/>
			<input type="hidden" name="bor_no2" value="${detail.bor_no}"/>
			<input type="hidden" name="title2" value="${detail.title}"/>
			<input type="hidden" name="cont2" value="${detail.cont}"/>
			<input type="hidden" name="checkYn" value="N"/>
        </form>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        	
          <h1 class="page-header">상세조회</h1>
          	
	          	<button id="updatebtn" class="btn btn-primary">게시글수정</button>
	        	<br>
		           <label>제목</label><p>${detail.title}</p><br>
		    	   <label>글내용</label><p>${detail.cont}</p><br>
		           <label>첨부파일</label><a></a><br>
	           <label>댓글</label><a></a><button>수정</button><button>삭제</button><button>답글</button><br>
	           <input type="text"><button>댓글저장</button>
          <div class="table-responsive">
           
		</div>
          </div>
     

     
  </body>
</html>