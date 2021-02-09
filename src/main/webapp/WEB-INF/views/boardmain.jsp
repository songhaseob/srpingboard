<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
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

    <title>Dashboard Template for Bootstrap</title>
   
   <script>
   
   function printClock() {
       var clock = document.getElementById("clock");            // 출력할 장소 선택
       var currentDate = new Date();                                     // 현재시간
       var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
       var amPm = 'AM'; // 초기값 AM
       var currentHours = addZeros(currentDate.getHours(),2); 
       var currentMinute = addZeros(currentDate.getMinutes() ,2);
       var currentSeconds =  addZeros(currentDate.getSeconds(),2);
       
       if(currentHours >= 12){ // 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
       	amPm = 'PM';
       	currentHours = addZeros(currentHours - 12,2);
       }

       if(currentSeconds >= 50){// 50초 이상일 때 색을 변환해 준다.
          currentSeconds = '<span style="color:#de1951;">'+currentSeconds+'</span>'
       }
       clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +" <span style='font-size:50px;'>"+ amPm+"</span>"; //날짜를 출력해 줌
       
       setTimeout("printClock()",1000);         // 1초마다 printClock() 함수 호출
   }
   function addZeros(num, digit) { // 자릿수 맞춰주기
   	  var zero = '';
   	  num = num.toString();
   	  if (num.length < digit) {
   	    for (i = 0; i < digit - num.length; i++) {
   	      zero += '0';
   	    }
   	  }
   	  return zero + num;
   }
   
</script>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="/css/ie-emulation-modes-warning.js"></script>

   
  </head>

  <body>

   <%@ include file="/common/nav.jsp" %>
   <%@ include file="/common/left.jsp" %>
	
    
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Main Page</h1>
			<body onload="printClock()">
						<div style="width:600px; height:250px; line-height:250px; color:#666;font-size:100px; text-align:center;" id="clock">
						<div onload="printClock()">
						</div>
          <div class="row placeholders">
          	
          </div>
          </div>
         

          
          <div class="table-responsive">
           
          </div>
        </div>
      

  </body>
</html>