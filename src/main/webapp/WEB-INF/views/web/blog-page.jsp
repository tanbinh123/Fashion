<%@ include file="/WEB-INF/common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.net/html/roberto-ferracini/blog-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:40 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
	 <script src='<c:url value="/resources/web/js/jquery-2.2.4.min.js"/>'></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blog Style</title>
    <!-- favicon -->
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

<body class="blog-page common-typography">
    <!-- preloader area start -->
<%@ include file="/WEB-INF/common/web/header.jsp" %>
<!-- Banner Starts -->
<section class="blog-banner">
    <div class="container-fluid pr-0">
        <div class="row">
            <div class="col-lg-10 offset-lg-2">
                <div class="fashion-blog-title">
                    <h1>blog</h1>
                </div>
                <form action="#">
                    <input type="email" class="search-input" placeholder="Search" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search'" required>
                    <button type="submit" class="search-button"><i class="fa fa-search"></i></button>
                </form>

                <div class="fashion-blog-slider">
                    <div class="single-slide d-lg-flex">
                        <div class="slide-image">
                            <div class="image-bg image-1"></div>
                            <div class="hover-state">
                                <a href="blog-single-page.html">Explore Article <span>&rharu;</span></a>
                            </div>
                        </div>
                        <div class="slide-content align-self-center">
                            <h2><a href="blog-single-page.html">Adriana Lima Dresses Into Our Denim Jacket For Her Birthday</a></h2>
                            <p class="my-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, atque. Dicta officiis, veritatis accusantium velit fuga non odio harum quidem debitis dolor laudantium atque. Tenetur ipsa beatae fugiat magni expedita?</p>
                            <a href="blog-single-page.html" class="template-btn tb-2">Read More</a>

                            <div class="content-bottom d-flex mt-70">
                                <img src='<c:url value="/resources/web/img/single-blog/blog-repeat.png" />'>
                                <span class="align-self-center ml-4">Editorial Staff</span>
                            </div>
                            <span class="mt-4 d-inline-block">7 minutes ago</span>
                        </div>
                        <!-- <span class="slide-number">01</span> -->
                    </div>
                    
                    <div class="single-slide d-lg-flex">
                        <div class="slide-image">
                            <div class="image-bg image-2"></div>
                            <div class="hover-state">
                                <a href="blog-single-page.html">Explore Article <span>&rharu;</span></a>
                            </div>
                        </div>
                        <div class="slide-content align-self-center">
                            <h2><a href="blog-single-page.html">Adriana Lima Dresses Into Our Denim Jacket For Her Birthday</a></h2>
                            <p class="my-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus unde debitis numquam aspernatur saepe suscipit ab doloribus velit error cupiditate. Et corporis omnis deleniti accusamus quo minima quasi delectus saepe?</p>
                            <a href="blog-single-page.html" class="template-btn tb-2">Read More</a>

                            <div class="content-bottom d-flex mt-70">
                                <img src='<c:url value="/resources/web/img/single-blog/blog-repeat.png" />'>
                                <span class="align-self-center ml-4">Editorial Staff</span>
                            </div>
                            <span class="mt-4 d-inline-block">7 minutes ago</span>
                        </div>
                        <!-- <span class="slide-number">02</span> -->
                    </div>
                    
                    <div class="single-slide d-lg-flex">
                        <div class="slide-image">
                            <div class="image-bg image-1"></div>
                            <div class="hover-state">
                                <a href="blog-single-page.html">Explore Article <span>&rharu;</span></a>
                            </div>
                        </div>
                        <div class="slide-content align-self-center">
                            <h2><a href="blog-single-page.html">Adriana Lima Dresses Into Our Denim Jacket For Her Birthday</a></h2>
                            <p class="my-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatem, atque. Dicta officiis, veritatis accusantium velit fuga non odio harum quidem debitis dolor laudantium atque. Tenetur ipsa beatae fugiat magni expedita?</p>
                            <a href="blog-single-page.html" class="template-btn tb-2">Read More</a>

                            <div class="content-bottom d-flex mt-70">
                                <img src='<c:url value="/resources/web/img/single-blog/blog-repeat.png" />'>
                                <span class="align-self-center ml-4">Editorial Staff</span>
                            </div>
                            <span class="mt-4 d-inline-block">7 minutes ago</span>
                        </div>
                        <!-- <span class="slide-number">01</span> -->
                    </div>
                    
                    <div class="single-slide d-lg-flex">
                        <div class="slide-image">
                            <div class="image-bg image-2"></div>
                            <div class="hover-state">
                                <a href="blog-single-page.html">Explore Article <span>&rharu;</span></a>
                            </div>
                        </div>
                        <div class="slide-content align-self-center">
                            <h2><a href="blog-single-page.html">Adriana Lima Dresses Into Our Denim Jacket For Her Birthday</a></h2>
                            <p class="my-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus unde debitis numquam aspernatur saepe suscipit ab doloribus velit error cupiditate. Et corporis omnis deleniti accusamus quo minima quasi delectus saepe?</p>
                            <a href="blog-single-page.html" class="template-btn tb-2">Read More</a>

                            <div class="content-bottom d-flex mt-70">
                                <img src='<c:url value="/resources/web/img/single-blog/blog-repeat.png" />'>
                                <span class="align-self-center ml-4">Editorial Staff</span>
                            </div>
                            <span class="mt-4 d-inline-block">7 minutes ago</span>
                        </div>
                        <!-- <span class="slide-number">02</span> -->
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
    <div class="banner-icon">
        <ul>
            <li><a href="#"><i class="fa fa-facebook-official"></i></a></li>
            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        </ul>
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

</body>

</html>