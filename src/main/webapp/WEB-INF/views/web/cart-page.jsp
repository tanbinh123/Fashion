<%@ include file="/WEB-INF/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.net/html/roberto-ferracini/cart-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:28 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cart Page</title>
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
    <!-- Themify icon -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/themify-icons.css"/>'>

    <link rel="stylesheet" href='<c:url value="/resources/web/css/jquery.datetimepicker.min.css"/>'>
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/style.css"/>'>
     <!-- responsive Stylesheet -->
     <link rel="stylesheet" href='<c:url value="/resources/web/css/responsive.css"/>'>

</head>

<body class="cart-page common-typography">
    <!-- preloader area start -->
<%@ include file="/WEB-INF/common/web/header.jsp" %>

<!-- Banner Starts -->
<section class="cart-banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 align-self-end order-2 order-lg-1">
                <div class="cart-banner-left">
                    <div class="left-title mb-5">
                        <h3>Summer Collection</h3>
                        <h4 id="nameproduct" data-idproduct="${product.getMasanpham()}">${product.getTensanpham()}</h4>
                    </div>
                    <div class="price mb-5">
                        <h2 id="priceproduct">$ ${product.getGiatien()}</h2>
                    </div>
                    <div class="color mb-5">
                        <h4>Color and Size</h4>
                        <ul class="mt-3">
                         <c:forEach var="list" items="${product.getChiTietSanPhams()}">
							 <label class="radio-inline ">
							  <li>
							  <input type="radio" name="rd" value="${list.getMauSanPham().getMamau()}" 
							  class="color${fn:toLowerCase(list.getMauSanPham().getMamau())}" 
							  data-name="${list.getMauSanPham().getTenmau()}" 
							  data-size="${list.getSizeSanPham().getSize()}" 
							  data-idsize="${list.getSizeSanPham().getMasize()}"
							  data-iddetail="${list.getMachitietsanpham()}">
							  ${list.getMauSanPham().getTenmau()}  -Size-  ${list.getSizeSanPham().getSize()} 
							  </li >				
							</label>
                        </c:forEach>
                        </ul>
                    </div> 
              
                    <div class="quantity mb-5">
                        <h4>Quantity</h4>
                        <ul>
                            <li><span><i class="ti-minus"></i></span></li>
                            <li><span class="val">1</span></li>
                            <li><span><i class="ti-plus"></i></span></li>
                        </ul>
                    </div>
                  
                </div>
            </div>
            <div class="col-lg-4 order-1 order-lg-2">
                <div class="banner-image big-slider" >
                    <div class="cart-page-banner-bg" data-img="${product.getHinhsanpham()}" style="background-image:url('<c:url value="/resources/web/img/shop-page/${product.getHinhsanpham()}"/>'); "></div>
                </div>
            </div>
            <div class="col-lg-5 align-self-center order-3">
                <div class="banner-right mb-5">
                    <div class="right-top">
                        <h6>Velvet Red Dress</h6>
                        <p class="mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus<br> augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt ege nullam non nisi est.<br> Pharetra et ultrices neque ornare. Ac felis donec<br> et odio pellentesque diam volutpat commodo sed.</p>
                    </div>
                    <div class="right-button mt-40">
                        <a href="#" class="template-btn2 on2">Add To Cart <span>&rharu;</span></a>
                    </div>

                    <div class="tab-accordion picks-tab mt-70">
                        <div class="tab">
                            <ul>
                                <li class="tab-one">Product Reviews</li>
                                <li class="tab-second active">Product Details</li>
                                <li class="tab-three">Size Chart</li>
                            </ul>
                        </div>
                    </div>

                    <div class="tab-content">
                        <div class="tab-one-content lost">
                            <div class="review-top d-flex justify-content-between mb-5">
                                <div class="name"><h6>Cloth Materials</h6></div>
                                <div class="ratings">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star diff-star"></i>
                                    <i class="fa fa-star diff-star"></i>
                                </div>
                                <div class="time"><span>7 minutes ago</span></div>
                            </div>
                            <div class="review-bottom d-flex justify-content-between">
                                <div class="paragraph">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.</p>
                                </div>
                                <div class="by"><span>By Nicole</span></div>
                            </div>
                        </div>
                        <div class="tab-second-content lost active">
                            <ul>
                                <li>${product.getMota()}</li>
                            </ul>
                        </div>
                        <div class="tab-three-content lost">
                            <table>
                                <tr>
                                    <th>Size</th>
                                    <th colspan="2">Small</th>
                                    <th>Medium</th>
                                    <th>Large</th>
                                </tr>
                                <tr>
                                    <td>To fit burst</td>
                                    <td>33 / 84 cm</td>
                                    <td>33 / 84 cm</td>
                                    <td>33 / 84 cm</td>
                                    <td>33 / 84 cm</td>
                                </tr>
                                <tr>
                                    <td>To fit waist</td>
                                    <td>33 / 84 cm</td>
                                    <td>33 / 84 cm</td>
                                    <td>33 / 84 cm</td>
                                    <td>33 / 84 cm</td>
                                </tr>
                                <tr>
                                    <td>To fit hips</td>
                                    <td>33 / 84 cm</td>
                                    <td>33 / 84 cm</td>
                                    <td>33 / 84 cm</td>
                                    <td>33 / 84 cm</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner End -->
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

<!-- Mirrored from codingeek.net/html/roberto-ferracini/cart-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:32 GMT -->
</html>