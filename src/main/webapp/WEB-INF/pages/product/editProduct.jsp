<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="u"%>
<div class="page-container">
	<!--/content-inner-->
	<div class="left-content">
		<div class="mother-grid-inner">
			<!--header start here-->

			<!--heder end here-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.html">Home</a><i
					class="fa fa-angle-right"></i>Sửa sản phẩm</li>
			</ol>
			<!--four-grids here-->
			<div class="four-grids">
				<div class="col-md-12 agile-info-stat">
					<div class="stats-info stats-last widget-shadow">
						<u:form class="row" method="post" action="${pageContext.request.contextPath}/trang-quan-ly/sua-san-pham"
							modelAttribute="Product">
							<div class="row">
								<div class="col-md-4 col-sm-4">
									<label>Chọn danh mục</label> 
									<u:select class="form-control" name="nameCategory"  path="category.idCategory">
										<c:forEach items="${lstCategory}" var="lst">
											<option value="${lst.idCategory }">${lst.nameCategory}</option>

										</c:forEach>
										
									</u:select>
								</div>

							</div>
							<div class="row">
							
									
									 <u:input type="hidden"
								path="idProduct" value="${product.idProduct }"/> 
										<br>
								<div class="col-md-4 col-sm-4">
									<br> <label>Tên sản phẩm</label>
									 <u:input
										class="form-control" placeholder="Tên sản phẩm"
										path="nameProduct" value="${product.nameProduct }"/> 
										<br> 
										<label>Hình ảnh</label><br>
										<u:input
										class="form-control" placeholder="Link hình ảnh"
										path="image" value="${product.image }"/> 
										<br>
										 
									

								</div>
								<div class="col-md-4 col-sm-4">

									<br> <label>Giá bán</label> <u:input class="form-control"
										placeholder="Giá bán" path="price" type="number" value="${product.price }"/>
										<br><label>Số lượng</label> <u:input class="form-control"
										placeholder="Số lượng" path="count" type="number" value="${product.count }"/>
										<br><label>Người bán</label> <u:input class="form-control"
										placeholder="username" path="user.username" type="text" value="${product.user.username }"/>
								</div>

							</div>

							<div class="row" style="margin-top: 20px">
								<div class="col-md-8 col-sm-8">
									<label>Tiêu đề</label> <u:input class="form-control"
										placeholder="Tiêu để sản phẩm" path="title" value="${product.title }"/>
								</div>
								<div class="col-md-4 col-sm-4">
									<br> <br> <br> <br>

									<button type="submit"
										class="btn btn-danger btn-block btn-lg btn-fill">Lưu
										thông tin</button>

								</div>
							</div>

						</u:form>
					</div>
				</div>

			</div>

			<div class="clearfix"></div>
		</div>


		<!--//w3-agileits-pane-->
		<!-- script-for sticky-nav -->
		<script>
			$(document).ready(function() {
				var navoffeset = $(".header-main").offset().top;
				$(window).scroll(function() {
					var scrollpos = $(window).scrollTop();
					if (scrollpos >= navoffeset) {
						$(".header-main").addClass("fixed");
					} else {
						$(".header-main").removeClass("fixed");
					}
				});

			});
		</script>
		<!-- /script-for sticky-nav -->
		<!--inner block start here-->
		<div class="inner-block"></div>
		<!--inner block end here-->
		<!--copy rights start here-->

	</div>
</div>
<!--//content-inner-->
<!--/sidebar-menu-->

<div class="clearfix"></div>
</div>
<script>
	var toggle = true;

	$(".sidebar-icon").click(
			function() {
				if (toggle) {
					$(".page-container").addClass("sidebar-collapsed")
							.removeClass("sidebar-collapsed-back");
					$("#menu span").css({
						"position" : "absolute"
					});
				} else {
					$(".page-container").removeClass("sidebar-collapsed")
							.addClass("sidebar-collapsed-back");
					setTimeout(function() {
						$("#menu span").css({
							"position" : "relative"
						});
					}, 400);
				}

				toggle = !toggle;
			});
</script>


<script>
	$(document).ready(
			function() {
				//BOX BUTTON SHOW AND CLOSE
				jQuery('.small-graph-box').hover(function() {
					jQuery(this).find('.box-button').fadeIn('fast');
				}, function() {
					jQuery(this).find('.box-button').fadeOut('fast');
				});
				jQuery('.small-graph-box .box-close').click(function() {
					jQuery(this).closest('.small-graph-box').fadeOut(200);
					return false;
				});

				//CHARTS
				function gd(year, day, month) {
					return new Date(year, month - 1, day).getTime();
				}

				graphArea2 = Morris.Area({
					element : 'hero-area',
					padding : 10,
					behaveLikeLine : true,
					gridEnabled : false,
					gridLineColor : '#dddddd',
					axes : true,
					resize : true,
					smooth : true,
					pointSize : 0,
					lineWidth : 0,
					fillOpacity : 0.85,
					data : [ {
						period : '2014 Q1',
						iphone : 2668,
						ipad : null,
						itouch : 2649
					}, {
						period : '2014 Q2',
						iphone : 15780,
						ipad : 13799,
						itouch : 12051
					}, {
						period : '2014 Q3',
						iphone : 12920,
						ipad : 10975,
						itouch : 9910
					}, {
						period : '2014 Q4',
						iphone : 8770,
						ipad : 6600,
						itouch : 6695
					}, {
						period : '2015 Q1',
						iphone : 10820,
						ipad : 10924,
						itouch : 12300
					}, {
						period : '2015 Q2',
						iphone : 9680,
						ipad : 9010,
						itouch : 7891
					}, {
						period : '2015 Q3',
						iphone : 4830,
						ipad : 3805,
						itouch : 1598
					}, {
						period : '2015 Q4',
						iphone : 15083,
						ipad : 8977,
						itouch : 5185
					}, {
						period : '2016 Q1',
						iphone : 10697,
						ipad : 4470,
						itouch : 2038
					}, {
						period : '2016 Q2',
						iphone : 8442,
						ipad : 5723,
						itouch : 1801
					} ],
					lineColors : [ '#ff4a43', '#a2d200', '#22beef' ],
					xkey : 'period',
					redraw : true,
					ykeys : [ 'iphone', 'ipad', 'itouch' ],
					labels : [ 'All Visitors', 'Returning Visitors',
							'Unique Visitors' ],
					pointSize : 2,
					hideHover : 'auto',
					resize : true
				});

			});
</script>
