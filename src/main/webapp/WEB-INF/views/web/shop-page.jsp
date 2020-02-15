<%@ include file="/WEB-INF/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.net/html/roberto-ferracini/shop-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:26 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shop Page</title>
    <!-- favicon -->
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

<body class="shop-page common-typography">
   <%@ include file="/WEB-INF/common/web/header.jsp" %>

<!-- Banner Starts -->
<section class="shop-banner section-padding-bottom2">
    <div class="container-fluid pr-0">
        <div class="row">
            <div class="col-lg-4 align-self-center">
                <div class="shop-title">
                    <h1>Shop by our collection</h1>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="shop-right">
                    <div class="fashion-shop-slider">
                        <div class="single-slide">
                            <div class="slide-image">
                                <div class="image-bg image-1">
                                    <div class="hover-state">
                                        <a href="cart-page.html">Select</a>
                                        <span>Winter Men</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="single-slide">
                            <div class="slide-image">
                                <div class="image-bg image-2">
                                    <div class="hover-state">
                                        <a href="cart-page.html">Select</a>
                                        <span>Latest Ladies Collection</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="single-slide">
                            <div class="slide-image">
                                <div class="image-bg image-3">
                                    <div class="hover-state">
                                        <a href="cart-page.html">Select</a>
                                        <span>Summer Outfit</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="single-slide">
                            <div class="slide-image">
                                <div class="image-bg image-4">
                                    <div class="hover-state">
                                        <a href="cart-page.html">Select</a>
                                        <span>Winter Men</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="controler-wrapper">
                        <div class="active-controler">01</div>
                        <div class="progressbar">
                            <span class="home-slider-progress"></span>
                            <span class="home-slider-progress-active"></span> 
                            <span class="devider">/</span>
                        </div>
                        <div class="total-controler">04</div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner End -->

<!-- Shop Content Starts -->
<section class="shop-content">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop-sidebar">
                    <form action="#">
                        <input type="email" class="search-input" placeholder="Search" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search'" required>
                        <button type="submit" class="search-button"><i class="fa fa-search"></i></button>
                    </form>

					<!--load catgory  -->
                    <div class="categories">
                        <div class="title">
                            <h4>CATEGORIES</h4>
                        </div>
                        <ul>
                        <c:forEach var="listcate" items="${listcategory}">
                        	  <li><a href="#">${listcate.getTendanhmuc()}</a></li>
                        </c:forEach>
                        </ul>
                    </div>
                    
                    <!-- load color  -->
                    <div class="colors">
                        <div class="title">
                            <h4>COLORS</h4>
                        </div>
                        <ul>
                        <c:forEach var="list" items="${listcolor }">
                        	<li><span class="circle ${fn:toLowerCase(list.getTenmau())}"></span>${list.getTenmau()}</li>
                        </c:forEach>
                        </ul>
                    </div>
                    
                    <!--load size  -->
                    <div class="size">
                        <div class="title">
                            <h4>SIZE</h4>
                        </div>
                        <ul>
                        	<c:forEach var="list" items="${listsize }">
                        		 <li>${list.getSize() }</li>
                        	</c:forEach>
                        </ul>
                    </div>
                    
                    <div class="price">
                        <div class="title">
                            <h4>PRICE</h4>
                        </div>
                        <ul>
                            <li>All</li>
                            <li>$0 - $20</li>
                            <li>$20 - $60</li>
                            <li>$60 - $100</li>
                            <li>$100 - $150</li>
                            <li>$150 - $200</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-9">
                <div class="shop-items-top d-flex justify-content-between">
                    <div class="left"><span>${fn:length(listboss)} Items</span></div>
                    <div class="dropdown">
                        <button class="drop-btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Sort by
                        </button>                  
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" >
                            <a class="dropdown-item" href="/Fashion/shoppage/">Title</a>
                            <a class="dropdown-item" href="/Fashion/shoppage/">Price</a>
                        </div> 
                    </div>
                </div>

                <div class="shop-items">
                    <div class="row">
                     <!-- procduct start  -->
                        <c:forEach var="sanpham" items="${listproduct}">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-cart-item">
                                <div class="single-cart-image">
                                    <img class="image-item-01 item-active" src='<c:url value="/resources/web/img/shop-page/${sanpham.getHinhsanpham()}"/>' alt="">
                                </div>
                                <span class="love-icon"><i class="fa fa-heart"></i></span>
    
                                <div class="single-cart-content">
                                    <div class="cart-content-left">
                                        <ul class="cart-rating">
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li><i class="fa fa-star"></i></li>
                                            <li class="diff-color"><i class="fa fa-star"></i></li>
                                        </ul>
                                        <h5>${sanpham.getTensanpham()}</h5>
                                      
                                        <!-- Size product start-->
                                         <ul class="cart-size">
                                        
                                        	<c:forEach var="chitietsanpham" items="${sanpham.getChiTietSanPhams()}">
							
												
														<li class="size"data-size="${chitietsanpham.getSizeSanPham().getMasize()}"><span> ${chitietsanpham.getSizeSanPham().getSize()} </span></li>											
												
											</c:forEach>
										</ul>
										<!--Size product end  -->
                                    </div>
    
                                    <div class="cart-content-right">
                                        <span class="current-price">$${sanpham.getGiatien()}</span>
                                       <!--  <span class="old-price">$99.10</span> -->
                                    </div>
                                </div>
    
                                <div class="row justify-content-center">
                                    <a href="#" class="cart-button floating-icon-1 btn btn-secondary">Add to cart</a>
                                </div>
                            </div>
                        </div>
						</c:forEach>
						
                     <!-- product end  -->    
					
					

                                     
                    </div>
                    <!-- end row  -->
                </div>
                <!-- pagging start  -->
                <!-- load ajax  -->
          				 <nav aria-label="...">
						  <ul class="pagination pagination-sm justify-content-center">
						  <c:forEach var="i" begin="1" end="${num}">
							<c:choose>
		                                <c:when test="${i == 1}">
		                                    <li class="page-item active">
		                                        <a class="page-link" href="#">${i}</a>
		                                    </li>
		                                </c:when>
		                                <c:otherwise>
		                                    <li class="page-item">
		                                        <a class="page-link" href="#">${i}</a>
		                                    </li>
		                                </c:otherwise>
		                       </c:choose>
			
						</c:forEach>
						  </ul>
						</nav>
				<!-- pagging end  -->
            </div>
        </div>
     
    </div>
</section>
<!-- Shop Content End -->

<!-- Instagram Starts -->
<section class="instagram-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title text-center">
                    <h2>Follow Our Instagram</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 px-0">
                <div class="instagram-slider owl-carousel">
                    <div class="single-slide slide-1">
                    </div>
                    <div class="single-slide slide-2">
                    </div>
                    <div class="single-slide slide-3">
                    </div>
                    <div class="single-slide slide-4">
                    </div>
                    <div class="single-slide slide-5">
                    </div>
                    <div class="single-slide slide-6">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Instagram End -->

<%@ include file="/WEB-INF/common/web/footer.jsp" %>

<!-- back to top area start -->
<div class="back-to-top">
    <span>Back to top</span>
</div>
<!-- back to top area end -->



    <!-- jquery -->
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

<!-- Mirrored from codingeek.net/html/roberto-ferracini/shop-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:27 GMT -->
</html>