<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="utf-8">
<title>Quản lý nhóm</title>
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
    <div class="container-pro">
    		<table style="width:60%;text-align:center;border:1px solid black;margin-left:auto;margin-right:auto;" class="table table-hover">
    		<thead class="thead-dark">
    		<tr>
    		<th>ID Nhóm sản phẩm</td>
    		<th>Tên nhóm sản phẩm</td>
    		</tr>
    		</thead>
    		<tbody>
        	<c:forEach var="pn" items="${grpr}">
             <tr>
             <td style="border-left: thin solid; border-top: thin solid; border-bottom: thin solid;">${pn.id}</td>
             <td style="border-top: thin solid; border-bottom: thin solid;">${pn.name}</td>
             </tr>           
        	</c:forEach>
        	</tbody>
        	</table>
      </div>
</body>
</html>