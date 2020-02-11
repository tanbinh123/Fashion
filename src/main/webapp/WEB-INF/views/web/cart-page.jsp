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
                        <h4>Velvet Red Dress</h4>
                    </div>
                    <div class="price mb-5">
                        <h2>$90,00</h2>
                    </div>
                    <div class="color mb-5">
                        <h4>Color</h4>
                        <ul class="mt-3">
                            <li class="active"><span class="color1"></span></li>
                            <li><span class="color2"></span></li>
                            <li><span class="color3"></span></li>
                            <li><span class="color4"></span></li>
                        </ul>
                    </div>
                    <div class="size mb-5">
                        <h4>Select your size</h4>
                        <ul>
                            <li><span>xs</span></li>
                            <li><span>s</span></li>
                            <li><span>m</span></li>
                            <li><span>L</span></li>
                        </ul>
                    </div>
                    <div class="quantity mb-5">
                        <h4>Quantity</h4>
                        <ul>
                            <li><span><i class="ti-minus"></i></span></li>
                            <li><span>4</span></li>
                            <li><span><i class="ti-plus"></i></span></li>
                        </ul>
                    </div>
                    <div class="left-image d-flex small-slider">
                        <div class="image image-1 mr-4">
                            <div class="hover-state">
                                <a href='<c:url value="/resources/web/img/cart-page/banner-bg.png"/>'><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="image image-2 mr-4">
                            <div class="hover-state">
                                <a href='<c:url value="/resources/web/img/cart-page/banner-bg2.png"/>'><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <div class="image image-3">
                            <div class="hover-state">
                                <a href='<c:url value="/resources/web/img/cart-page/banner-bg3.png"/>'><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 order-1 order-lg-2">
                <div class="banner-image big-slider">
                    <div class="cart-page-banner-bg"></div>
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
                                <li>V-neck</li>
                                <li>Zip fastening</li>
                                <li>Sleeveless style</li>
                                <li>Functional pockets</li>
                                <li>Regular fit</li>
                                <li>Just select your usual size</li>
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

<!-- Related Section Starts -->
<section class="related-section section-padding-top3">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Related</h2>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-lg-9">
                <div class="related-slider owl-carousel">
                    <div class="single-slide">
                        <div class="single-cart-item active">
                                <div class="single-cart-image">
                                        <img class="image-item-01 item-active" src='<c:url value="/resources/web/img/home-1/pick/pick-1.png" />'>
                                        <img class="image-item-02" src='<c:url value="/resources/web/img/shop-page/item7.png" />'>
                                        <div class="image-dots">
                                        <div class="dot-01"></div>
                                        <div class="dot-02 active"></div>
                                    </div>
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
                                    <h5>Belted Chino Trousers</h5>
                                    <ul class="cart-size">
                                        <li><span>xs</span></li>
                                        <li class="active"><span>s</span></li>
                                        <li><span>m</span></li>
                                        <li><span>l</span></li>
                                        <li><span>xl</span></li>
                                    </ul>
                                </div>

                                <div class="cart-content-right">
                                    <span class="current-price">$45.99</span>
                                    <span class="old-price">$99.10</span>
                                </div>
                            </div>

                            <div class="single-cart-button">
                                <a href="#" class="cart-button floating-icon-1">add to cart</a>
                                <a href="#" class="compare-button">compare</a>
                            </div>
                        </div>
                    </div>

                    <div class="single-slide">
                            <div class="single-cart-item">
                                    <div class="single-cart-image">
                                            <img class="image-item-01 item-active" src='<c:url value="/resources/web/img/home-1/pick/pick-2.jpg" />'>
                                            <img class="image-item-02" src='<c:url value="/resources/web/img/shop-page/item7.png" />'>
                                            <div class="image-dots">
                                        <div class="dot-01"></div>
                                        <div class="dot-02 active"></div>
                                    </div>
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
                                            <h5>Belted Chino Trousers</h5>
                                            <ul class="cart-size">
                                                <li><span>xs</span></li>
                                                <li class="active"><span>s</span></li>
                                                <li><span>m</span></li>
                                                <li><span>l</span></li>
                                                <li><span>xl</span></li>
                                            </ul>
                                        </div>
        
                                        <div class="cart-content-right">
                                            <span class="current-price">$45.99</span>
                                            <span class="old-price">$99.10</span>
                                        </div>
                                    </div>
        
                                    <div class="single-cart-button">
                                        <a href="#" class="cart-button floating-icon-1">add to cart</a>
                                        <a href="#" class="compare-button">compare</a>
                                    </div>
                                </div>
                    </div>

                    <div class="single-slide">
                            <div class="single-cart-item">
                                    <div class="single-cart-image">
                                            <img class="image-item-01 item-active" src='<c:url value="/resources/web/img/home-1/pick/pick-3.jpg" />'>
                                            <img class="image-item-02" src='<c:url value="/resources/web/img/shop-page/item7.png" />'>
                                            <div class="image-dots">
                                        <div class="dot-01"></div>
                                        <div class="dot-02 active"></div>
                                    </div>
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
                                            <h5>Belted Chino Trousers</h5>
                                            <ul class="cart-size">
                                                <li><span>xs</span></li>
                                                <li class="active"><span>s</span></li>
                                                <li><span>m</span></li>
                                                <li><span>l</span></li>
                                                <li><span>xl</span></li>
                                            </ul>
                                        </div>
        
                                        <div class="cart-content-right">
                                            <span class="current-price">$45.99</span>
                                            <span class="old-price">$99.10</span>
                                        </div>
                                    </div>
        
                                    <div class="single-cart-button">
                                        <a href="#" class="cart-button floating-icon-1">add to cart</a>
                                        <a href="#" class="compare-button">compare</a>
                                    </div>
                                </div>
                    </div>

                    <div class="single-slide">
                            <div class="single-cart-item">
                                    <div class="single-cart-image">
                                            <img class="image-item-01 item-active" src='<c:url value="/resources/web/img/home-1/pick/pick-4.png" />'>
                                            <img class="image-item-02" src='<c:url value="/resources/web/img/shop-page/item7.png" />'>
                                            <div class="image-dots">
                                        <div class="dot-01"></div>
                                        <div class="dot-02 active"></div>
                                    </div>
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
                                            <h5>Belted Chino Trousers</h5>
                                            <ul class="cart-size">
                                                <li><span>xs</span></li>
                                                <li class="active"><span>s</span></li>
                                                <li><span>m</span></li>
                                                <li><span>l</span></li>
                                                <li><span>xl</span></li>
                                            </ul>
                                        </div>
        
                                        <div class="cart-content-right">
                                            <span class="current-price">$45.99</span>
                                            <span class="old-price">$99.10</span>
                                        </div>
                                    </div>
        
                                    <div class="single-cart-button">
                                        <a href="#" class="cart-button floating-icon-1">add to cart</a>
                                        <a href="#" class="compare-button">compare</a>
                                    </div>
                                </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Section End -->

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

</body>

<!-- Mirrored from codingeek.net/html/roberto-ferracini/cart-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:32 GMT -->
</html>