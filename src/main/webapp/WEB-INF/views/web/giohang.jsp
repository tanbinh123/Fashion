<%@page import="com.manhnguyen.entity.NhanVien"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Giỏ hàng</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src='<c:url value="/resources/web/js/jquery-2.2.4.min.js"/>'></script>
    <link rel=icon href=favicon.png sizes="20x20" type="image/png">
    <!-- animate -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/animate.css"/>'>
    <!-- bootstrap -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/bootstrap.min.css"/>'>
    <!-- magnific popup -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/magnific-popup.css"/>'>
    <!-- owl carousel -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/owl.carousel.min.css"/>'>
    <!-- fontawesome -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/font-awesome.min.css"/>'>
    <!-- flaticon -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/linearicons.css"/>'>
    <link rel="stylesheet" href='<c:url value="/resources/web/css/slick.css"/>'>
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/style.css"/>'>
     <!-- responsive Stylesheet -->
     <link rel="stylesheet" href='<c:url value="/resources/web/css/responsive.css"/>'>
  
</head>
 
<body>

	<div id="header-ct" class="container-fluid ">
	<%@ include file="/WEB-INF/common/web/header.jsp" %>
				<nav class="navbar navbar-default none_nav">
			  <div class="container-fluid">
			    <!-- Brand and toggle get grouped for better mobile display -->
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			      </button>
			      <a class="navbar-brand" href="#"><img src='<c:url value="/resources/image/yame.png"/>' width="24px" height="24px"></a>
			    </div>
			
			    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			      <ul class="nav navbar-nav navbar-center">
			         <li class ="active"><a  href="#">TRANG CHỦ</a></li>
			         <li class="dropdown open">
			         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SẢN PHẨM <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <c:forEach var="value" items="${danhmuc }">
						<li><a href="/mini-shop/sanpham/${value.getMadanhmuc() }/${value.getTendanhmuc()}">${value.getTendanhmuc()}</a></li>
						</c:forEach>
			          </ul>
			        </li>
			        <li><a href="#">DỊCH VỤ</a></li>
			        <li><a href="#">LIÊN HỆ</a></li>
			       
			      </ul>
			  
			      <ul class="nav navbar-nav navbar-right">
			      
			       <c:choose>
			       	<c:when test="${dangnhap !=null}">
			       		  <li><a id="user" href="dangnhap/">${dangnhap}</a></li>
			       	</c:when>
			       	<c:otherwise>
			       		 <li><a href="/mini-shop/dangnhap/">ĐĂNG NHẬP</a></li>
			       	</c:otherwise>
			       </c:choose>
			        <li id="giohang"><a href="#"><img style="width: 24px; height: 24px;" src="<c:url value="/resources/image/shopping-cart.png" /> "/>
					       	<c:if test="${soluongsanphamgiohang >0}">
					        	 <div class="circle-giohang"><span >${soluongsanphamgiohang}</span></div>
					        </c:if>
					         <c:if test="${soluongsanphamgiohang <=0||soluongsanphamgiohang==null}">
					        	 <div><span >${soluongsanphamgiohang}</span></div>
					        </c:if>
			       </a></li>
			        
			      </ul>
			    </div><!-- /.navbar-collapse -->
			  </div><!-- /.container-fluid -->
			</nav>
			
	</div>
	
	<div class="container">
		<br>
		<br>
		<div class="row">
		
			<div class="col-md-6 col-sm-12">
			
			<table class="table">
				<thead>
					<tr>
						<td><h5>Tên sản phẩm</h5></td>
						<td><h5>Màu sản phẩm </h5></td>
						<td><h5>Size sản phẩm</h5></td>
						<td><h5>Số lượng</h5></td>	
						<td><h5>Giá tiền</h5></td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="value" items="${carts}">
					
								<tr data-machitiet="${value.getMachitiet()}">
										<td class="tensp"data-masp="${value.getMasp()}">${value.getTensp() }</td>
										<td class="mau" data-mamau="${value.getMamau()}">${value.getTenmau()} </td>
										<td class="size"data-size="${value.getMasize()}"> ${value.getTensize()} </td>
										<td class="soluong"><input class="soluong-giohang"type="number"min="1" value="${value.getSoluong()}"/></td>
										<td class="giatien" data-value="${value.getGiatien() }">${value.getGiatien() }</td>
										<td class="btn btn-danger xoa-giohang">Xóa</td>	
								</tr>

					</c:forEach>
				</tbody>
			</table>
			<h4 >Tổng tiền:<span style="color: red; text-align: center" id="tongtien">0 VND</span></h4>
		</div>
			<div class="col-md-6 col-sm-12">
				<h3>Thông tin đặt hàng</h3>
				
				<div class="form-group">
					<form action="" method="post">
					<label for="tenguoimua">Tên người mua
					</label>
					<input id="tennguoimua" name="tenkhachhang"class="form-control"/>
					<label for="sdt">Số điện thoại liên lạc
					</label>
					<input id="sdt" name="sodt" class="form-control"/>
					<div class="radio">
                            <label ></label><input checked="" type="radio" name="hinhthucgiaohang" checked value="Giao Hàng tận nơi">Giao Hàng tận nơi</label>
                        </div>
                    <div class="radio">
                            <label><input type="radio" name="hinhthucgiaohang" value="Giao Hàng cửa hàng">Nhận hàng tại cửa hàng</label>
                        </div> 
    
					<label for="diachi">Địa chỉ nhận hàng
					</label>
					<input id="diachi"   name="diachigiaohang"class="form-control"/>
					<label for="ghichu">Ghi chú
					</label>
					
					<textarea id="ghichu" row="5" class="form-control" name="ghichu"></textarea><br/>
					<input type="submit" class="btn btn-primary" value="Đặt hàng"/>
					</form>
				</div>
			
			
			</div>
		</div>
		

	</div>
	
	
	

	
	<%@ include file="/WEB-INF/common/web/footer.jsp" %>
	<script src='<c:url value="/resources/web/js/customs.js"/>'></script>
	  <script src='<c:url value="/resources/web/js/jquery-2.2.4.min.js"/>'></script>
    <!-- popper -->
    <script src='<c:url value="/resources/web/js/popper.min.js"/>'></script>
    <!-- bootstrap -->
    <script src='<c:url value="/resources/web/js/bootstrap.min.js"/>'></script>
    <!-- magnific popup -->
    <script src='<c:url value="/resources/web/js/jquery.magnific-popup.js"/>'></script>
    <!-- wow -->
    <script src='<c:url value="/resources/web/js/wow.min.js"/>'></script>
    <!-- owl carousel -->
    <script src='<c:url value="/resources/web/js/owl.carousel.min.js"/>'></script>
    <!-- waypoint -->
    <script src='<c:url value="/resources/web/js/waypoints.min.js"/>'></script>
    <!-- counterup -->
    <script src='<c:url value="/resources/web/js/jquery.counterup.min.js"/>'></script>
    <!-- imageloaded -->
    <script src='<c:url value="/resources/web/js/imagesloaded.pkgd.min.js"/>'></script>
    <!-- isotope -->
    <script src='<c:url value="/resources/web/js/isotope.pkgd.min.js"/>'></script>

    <script src='<c:url value="/resources/web/js/jquery.datetimepicker.full.min.js"/>'></script>

    <script src='<c:url value="/resources/web/js/countdown.js"/>'></script>
    <!-- slick -->
    <script src='<c:url value="/resources/web/js/slick.min.js"/>'></script>
     <!-- main js -->
    <!-- Datepicker -->
    <script src='<c:url value="/resources/web/js/datepicker.min.js"/>'></script>
    <script src='<c:url value="/resources/web/js/datepicker-en.js"/>'></script>
    <script src='<c:url value="/resources/web/js/main.js"/>'></script>
    <script src='<c:url value="/resources/web/js/customs.js"/>'></script>
    
</body>

</html>