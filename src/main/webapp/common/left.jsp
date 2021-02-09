<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

   <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   
   <script>
   
		function test(){
			$('#frm').attr("method","get");
			$('#frm').attr("action","/board/boardmake");
			$('#frm').submit();
		}
	 	function url(no){
			$("#no").val(no);
			$('#frm').attr("method","get");
			$('#frm').attr("action","/board/boardpaging");
			$('#frm').submit();
		} 
	</script>

<form id="frm">
 <input type="hidden" name="no" id="no">
</form>

	<div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li><a onclick="test();">게시판생성 <span class="sr-only">(current)</span></a></li>
            
            <c:forEach var="list" items="${list}">
            <c:if test="${list.bor_act == 1 }">
                       <li><a onclick="url('${list.bor_no}');">${list.bor_name}</a></li>
            </c:if>
	        </c:forEach>
          </ul>
          
        </div>
        </div>
        </div>    