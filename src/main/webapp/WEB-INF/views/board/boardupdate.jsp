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

    <script src="/css/ie-emulation-modes-warning.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- include summernote css/js -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	
    <title>Dashboard Template for Bootstrap</title>
    <script>
 		$(function(){
 			$('#updatebtn1').on("click",function(){
 			    $('#frm4').attr("method","get");
 				$('#frm4').attr("action","/board/boardpostupdate");
 				$('#frm4').submit();
 			})
 			
 			$('#deletebtn1').on("click",function(){
 			    $('#frm4').attr("method","get");
 				$('#frm4').attr("action","/board/boardpostdelete");
 				$('#frm4').submit();
 			})
 			
 			$('#replysave').on('click',function(){
 				$('#frm4').attr("method","get");
 				$('#frm4').attr("action","/board/boardreplysave");
 				$('#frm4').submit();
 			})
 			
 		})
 	</script>
   
  </head>

  <body>

     <%@ include file="/common/nav.jsp" %>
<%--    	 <%@ include file="/common/left.jsp" %> --%>
<!--         <form id="frm3" action="/board/boardpostupdate"> -->
<%--         	<input type="hidden" name ="post_no2" value="${postvo.post_no}"> --%>
<%--         	<input type="hidden" name ="bor_no2" value="${postvo.bor_no}"> --%>
<!--         </form>   -->
       
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        	
          <h1 class="page-header">상세조회</h1>
          	<form id="frm4">
	          	<input type="hidden" name ="post_no2" value="${postvo.post_no}">
	        	<input type="hidden" name ="bor_no2" value="${postvo.bor_no}">
	        	<input type="hidden" name="checkYn" value="N"/>
	          	<button id="updatebtn1" class="btn btn-primary">게시글수정</button>
	          	<button id="deletebtn1" class="btn btn-danger">게시글삭제</button><br>
	        	<br>
		           <label>제목</label><input type="text" value="${postvo.title}" name="title2"><br>
		    	   <label>글내용</label> <textarea id="summernote" name="cont2">${postvo.cont}</textarea><br>
		           <label>첨부파일</label><input type="file"/><br>
	           <label>댓글</label><a></a><button>수정</button><button>삭제</button><button>답글</button><br>
	           <input type="text" name="replytx"><button id="replysave">댓글저장</button>
          </form>
          <div class="table-responsive">
           
		</div>
          </div>
          
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