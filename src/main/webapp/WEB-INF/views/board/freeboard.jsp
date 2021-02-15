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
    <link rel="icon" href="/resources/favicon.ico">

    <title>Dashboard Template for Bootstrap</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
   
    	$(function(){
    		$('.board').on("click",function(){
    			
    			var post_no = $(this).data("post_no");
    			var bor_no = $(this).data("bor_no");
    			var user_id = $(this).data("user_id");
    			$('#post_no').val(post_no);
    			$('#bor_no').val(bor_no);
    			$('#user_id').val(user_id);
    			$('#frm').attr("action","/board/detailview");
    			$('#frm').submit();
    		});
    })
    </script>
    <style>
    	th{
    		text-align: center;
    	}
    </style>
   

    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <link href="/css/dashboard.css" rel="stylesheet">
    
	<link rel="stylesheet" href="/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
	

    <script src="/css/ie-emulation-modes-warning.js"></script>

   
  </head>
	
  <body>
  
  <form id = "frm" action="/board/boardpaging" method="get">
		<input type="hidden" id="no" name="no" value="">
		<input type="hidden" id="post_no" name="post_no" value="">
		<input type="hidden" id="bor_no" name="bor_no" value="">
		<input type="hidden" id="user_id" name="user_id" value="">
	</form>
     <%@ include file="/common/nav.jsp" %>
   	 <%@ include file="/common/left.jsp" %>
          
        	
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        	
          <h1 class="page-header">게시판</h1>
          <a class="btn btn-primary" href="/board/insertboardpostview?borno=${borno}">게시글등록</a><br>
          <br>
          <div class="row placeholders">
          	<table class="table table-bordered">
          		<tr>
          			<th>게시글번호</th>
          			<th>작성자</th>
          			<th>제목</th>
          			<th>작성일시</th>
          		</tr>
<%--           		${borno} --%>
<%--         		${S_USER.userid} --%>
          			<c:forEach items="${pagingList}" var="i" varStatus="c">
          		<tr class="board" data-post_no="${i.post_no }" data-bor_no="${i.bor_no }" data-user_id="${i.user_id }">
          			<td>${c.count }</td>
          			<td>${i.user_id }</td>
          			<td>${i.title }</td>
          			<td><fmt:formatDate value="${i.reg_dt}" pattern="yyyy-MM-dd"/></td>
          		</tr>
          			</c:forEach>
          	</table>
			
          
          <div class="table-responsive">
           <ul class="pagination justify-content-center m-0">
				<li class="page-item"><a class="page-link" href="/board/boardpaging?page=1&pageSize=${pageVo.getPageSize()}&no=${borno}"><i class="fas fa-angle-double-left"></i></a></li>
				<c:choose>
					<c:when test="${pageVo.getPage()-1 <= 1 }">
				<li class="page-item"><a class="page-link" href="/board/boardpaging?page=1&pageSize=${pageVo.getPageSize()}&no=${borno}"><i class="fas fa-angle-left"></i></a></li>
					</c:when>
					<c:otherwise>
				<li class="page-item"><a class="page-link" href="$/board/boardpaging?page=${pageVo.getPage()-1}&pageSize=${pageVo.getPageSize()}"><i class="fas fa-angle-left"></i></a></li>
					</c:otherwise>
				</c:choose>
				<c:forEach begin="1" end="${pagination}" var="i">
				<c:choose>
					<c:when test="${pageVo.getPage() == i }">
				<li class="page-item active"><a class="page-link" href="/board/boardpaging?page=${i }&pageSize=${pageVo.getPageSize()}&no=${borno}">${i}</a></li>
				</c:when>
					<c:otherwise>
				<li class="page-item"><a class="page-link" href="/board/boardpaging?page=${i }&pageSize=${pageVo.getPageSize()}&no=${borno}">${i}</a></li>
				</c:otherwise>
				</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${pageVo.getPage() == pagination }">
						<li class="page-item"><a class="page-link" href="/board/boardpaging?page=${pagination}&pageSize=${pageVo.getPageSize()}&no=${borno}"><i class="fas fa-angle-right"></i></a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="/board/boardpaging?page=${pageVo.getPage()+1}&pageSize=${pageVo.getPageSize()}&no=${borno}"><i class="fas fa-angle-right"></i></a></li>
					</c:otherwise>
					
				</c:choose>
				<li class="page-item"><a class="page-link" href="/board/boardpaging?page=${pagination}&pageSize=${pageVo.getPageSize()}&no=${borno}"><i class="fas fa-angle-double-right"></i></a></li>
					</ul>
								</div>
          </div>
        </div>
     

   
  </body>
</html>