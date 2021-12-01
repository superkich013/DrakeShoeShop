<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="utf-8">
<title>Quản lý đơn hàng</title>
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
                <img src=" ${pageContext.request.contextPath}/resources/img/logo/logo-sub.png" alt="">
            </div>
            <div class="right-header">
                <ul>
                    <li><a href="../anshop-final/admin/product.htm">Quản lý sản phẩm</a></li>
                    <li><a href="../anshop-final/admin/donhang.htm">Quản lý đơn hàng</a></li>
                    <li><a href="../anshop-final/admin/group-product.htm">Quản lý nhóm</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="main-right" style="width: 100%; padding-left: 60px;">
            <table class="table table-light table-hover">
                <tr class="bg-info">
                	<th>Mã đơn hàng</th>
                	<th>Ngày</th>
                    <th>Tên KH</th>
                    <th>SĐT</th>
                    <th>Email</th>
                    <th>Sản phẩm</th>
                    <th>Tổng tiền</th>
                    <th>Trạng thái</th>
                    <th></th>
                </tr>
            	
				<c:forEach var="a" items="${listdh}">
                		<tr>              	
                		<td>${a.order.id}</td>
                		<td>${a.order.date}</td>
                		<td>${a.order.customer.name}</td>
                		<td>0${a.order.customer.phone}</td>
                		<td>${a.order.customer.email}</td>
                		<td>
                			<ul>
                				<c:forEach var="b" items="${listdh}">
                					<c:if test="${a.order.id == b.order.id}">
                						<li>- ${b.product.name} -Size: ${b.size} -SL: ${b.quanlity}</li>
                					</c:if>
                				</c:forEach>
                			</ul>
                		</td>
                		<td>${a.order.total}</td>
                		<c:if test="${a.order.status==0}">
                			<td><span style="color: white; background-color: green; border-radius: 10px;">Đã xác nhận</span></td>
                		</c:if>
                		<c:if test="${a.order.status==1}">
                			<td><span style="color: white; background-color: red; border-radius: 10px;">Chưa xác nhận</span></td>
                		</c:if>
                		<td>
                			<c:if test="${a.order.status==0}">
                				<a href="${pageContext.request.contextPath}/admin/deleteod.htm?id=${a.order.id}">Xóa</a></td>
	                		</c:if>
	                		<c:if test="${a.order.status==1}">
	                			<a href="${pageContext.request.contextPath}/admin/xacnhan.htm?id=${a.order.id}" style="color: blue;">Xác nhận</a> 
                				<a href="${pageContext.request.contextPath}/admin/deleteod.htm?id=${a.order.id}">Xóa</a></td>
	                		</c:if>
                		</td>	
                		</tr>
                </c:forEach>
            </table>
        </div>
    </div>
</body>
</html>