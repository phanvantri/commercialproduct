<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="sidebar-menu">
	<header class="logo1">
		<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span>
		</a>
	</header>
	<div style="border-top: 1px ridge rgba(255, 255, 255, 0.15)"></div>
	<div class="menu">
		<ul id="menu">
			<li><a href="#"><i class="fa fa-tachometer"></i> <span>Dashboard</span>
				<div class="clearfix"></div></a></li>


			<li id="menu-academico"><a href="#"><i
					class="fa fa-envelope nav_icon"></i><span>Inbox</span>
				<div class="clearfix"></div></a></li>
			<li><a href="${pageContext.request.contextPath}/trang-quan-ly/danh-muc"><i class="fa fa-list-ul"
					aria-hidden="true"></i><span>Danh mục</span>
				<div class="clearfix"></div></a></li>
			<li id="menu-academico"><a href="${pageContext.request.contextPath}/trang-quan-ly/danh-sach-nguoi-dung"><i
					class="fa fa-bar-chart"></i><span>Danh sách người dùng</span>
				<div class="clearfix"></div></a></li>

			
			<li id="menu-academico"><a href="${pageContext.request.contextPath}/trang-quan-ly/danh-sach-san-pham"><i class="fa fa-cogs"
					aria-hidden="true"></i><span> Sản phẩm</span> <span
					class="fa fa-angle-right" style="float: right"></span>
				<div class="clearfix"></div></a></li>
			
			<li><a href="${pageContext.request.contextPath}/trang-quan-ly/danh-sach-cac-don-hang"><i class="fa fa-table"></i> <span>Chi
						tiết hóa đơn</span>
				<div class="clearfix"></div></a></li>
			<li><a href="#"><i class="fa fa-map-marker"
					aria-hidden="true"></i> <span>Maps</span>
				<div class="clearfix"></div></a></li>
		</ul>
	</div>
</div>