<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="utf-8">
<title>Thống kê doanh thu</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<base href="${pageContext.servletContext.contextPath }" />
<style>
<%@ include file="/resources/css/reset.css"%>
<%@ include file="/resources/css/manager-pr.css"%>
</style>
</head>
<body>
	    <div class="header">
	        <div class="container-header">
	            <div class="left-header">
	                <img src=" ${pageContext.request.contextPath}/resources/img/logo/HLogo.PNG" alt="">
	            </div>
	            <div class="right-header">
	                <ul>
	                	<li><a href="../anshop-final/admin/donhang.htm">Đơn hàng</a></li>
	                    <li><a href="../anshop-final/admin/product.htm">Sản phẩm</a></li>
	                    <li><a href="../anshop-final/admin/group-product.htm">Nhóm sản phẩm</a></li>
	                    <li><a href="../anshop-final/admin/user.htm">Thành viên</a></li>
	                    <li><a href="../anshop-final/admin/stats.htm">Thống kê</a></li>
	                </ul>
	            </div>
	        </div>
	    </div>
    <div class="main">
    	<div class="main-left"style="width: 0%; margin-right: 0px;">
			<nav class="navbar bg-light">
			
			  <!-- Links -->
			  <ul class="navbar-nav">
			    <li class="nav-item">
			      <a class="nav-link" href="#">Link 1</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="#">Link 2</a>
			    </li>
			    <li class="nav-item">
			      <a class="nav-link" href="#">Link 3</a>
			    </li>
			  </ul>
			
			</nav>
    	</div>
        <div class="main-right" style="width: 100%; margin-left: 15px;">
        	<div class="col-8 offset-2 my-5">
        	<h1 class="text-center text">THỐNG KÊ DOANH THU</h1>
        		<div class="chart">
        			<div class="body-chart">
        				<div class= "main-right-right">
							<canvas id="myStatsChart"></canvas>
						</div>
						<table class="table">
				        	<tr>
				        		<th>Ngày</th>
				        		<th>Doanh thu</th>
				        	</tr>
				        	<c:forEach items="${stats}" var="c">
					        	<tr>
					        		<th>${c.date}</th>
					        		<th>${c.total} vnđ</th>
					        	</tr>
				        	
				        	</c:forEach>
				        </table>
        				
						<script>
							let cateLables=[], cateInfo=[];
							
							<c:forEach items="${stats}" var="c">
								cateLables.push('${c.date}');
								cateInfo.push('${c.total}');
				        	</c:forEach>
				        	
							window.onload = function() {
								cateChart("myStatsChart", cateLables, cateInfo);
							}
						</script>
        			</div>
        		</div>
        		
        	</div>
        </div>
    </div>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="<c:url value="/resources/js/stats.js"/>"></script>
</body>
</html>