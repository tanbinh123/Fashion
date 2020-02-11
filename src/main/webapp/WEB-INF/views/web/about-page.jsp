<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.net/html/roberto-ferracini/about-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:27 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>About Page</title>
    <!-- favicon -->
    <link rel=icon href=favicon.png sizes="20x20" type="image/png"/>
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

<body class="about-page">
    <!-- preloader area start -->

<%@ include file="/WEB-INF/common/web/header.jsp" %>
<!-- Banner Starts -->
<section class="template-breadcrumb">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="banner-title">
                    <h1>about us</h1>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner End -->

<!-- Story Starts -->
<section class="about-story">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="story-content section-padding-top2">
                    <div class="section-title">
                        <h2>Our Story</h2>
                    </div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor.</p>
                    <p class="mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi celerisque eu ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. rhoncusaugue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesqued diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi scelerisque eu.</p>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="story-image">
                    <div class="image-bg"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Story End -->

<!-- Service Starts -->
<section class="about-service section-padding-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 align-self-center">
                <div class="section-title">
                    <h2>Our Service Content</h2>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi</p>
                <a href="#" class="template-btn3">read more <span>&#8640;</span></a>
            </div>
            <div class="col-lg-5 offset-lg-2">
                <div class="single-item d-flex">
                    <div class="service-icon align-self-center">
                        <img src='<c:url value="/resources/web/img/about-page/service/service-1.png"/>'>
                    </div>
                    <div class="service-content">
                        <h4>Online Customer Service</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.</p>
                    </div>
                </div>
                <div class="single-item d-flex my-5">
                    <div class="service-icon align-self-center">
                        <img src='<c:url value="/resources/web/img/about-page/service/service-2.png" />'>
                    </div>
                    <div class="service-content">
                        <h4>International Delivery</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.</p>
                    </div>
                </div>
                <div class="single-item d-flex">
                    <div class="service-icon align-self-center">
                        <img src='<c:url value="/resources/web/img/about-page/service/service-3.png" />'>
                    </div>
                    <div class="service-content">
                        <h4>Free Gift</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Service End -->

<!-- Team Starts -->
<section class="about-team section-padding-top2">
    <div class="container">
        <div class="team-slider">
            <div class="single-slide">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="slider-image">
                            <div class="image-bg image-1"></div>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="team-content">
                            <div class="section-title">
                                <h2>Meet Our Team</h2>
                            </div>
                            <h4>Alicia Ketsia,</h4>
                            <h6>Director</h6>
                            <p class="mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi scelerisque eu ultrices. Lorem ipsum dolor amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. In nisl nisi scelerisque eu ultrices. Lorem ipsum dolor amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-slide">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="slider-image">
                            <div class="image-bg image-2"></div>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="team-content">
                            <div class="section-title">
                                <h2>Meet Our Team</h2>
                            </div>
                            <h4>John Lewis,</h4>
                            <h5>CEO</h5>
                            <p class="mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi scelerisque eu ultrices. Lorem ipsum dolor amet, consectetur adipiscing elit. In rhoncus augue nibh.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-slide">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="slider-image">
                            <div class="image-bg image-3"></div>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="team-content">
                            <div class="section-title">
                                <h2>Meet Our Team</h2>
                            </div>
                            <h4>Anna Zara,</h4>
                            <h5>Web Developer</h5>
                            <p class="mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi scelerisque eu ultrices. Lorem ipsum dolor amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. In nisl nisi scelerisque eu ultrices. Lorem ipsum dolor amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="single-slide">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="slider-image">
                            <div class="image-bg image-4"></div>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="team-content">
                            <div class="section-title">
                                <h2>Meet Our Team</h2>
                            </div>
                            <h4>James Andy,</h4>
                            <h5>UX/UI Designer</h5>
                            <p class="mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi scelerisque eu ultrices. Lorem ipsum dolor amet, consectetur adipiscing elit. In rhoncus augue nibh.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-7 offset-lg-5">
                <div class="team-nav">
                    <div class="nav-image">
                        <div class="image-bg image-1"></div>
                    </div>
                    <div class="nav-image">
                        <div class="image-bg image-2"></div>
                    </div>
                    <div class="nav-image">
                        <div class="image-bg image-3"></div>
                    </div>
                    <div class="nav-image">
                        <div class="image-bg image-4"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Team End -->

<!-- Ratings Starts -->
<section class="about-ratings section-padding-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 align-self-center">
                <div class="section-title">
                    <h2>Our Ratings</h2>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi</p>
                <a href="#" class="template-btn3">read more <span>&#8640;</span></a>
            </div>
            <div class="col-lg-6 offset-lg-1">
                <div class="row ratings-right d-flex">
                    <div class="col-lg-6 single-item item-1 text-center">
                        <div class="rating-circle">
                            <div class="circle-wave"></div>
                            <span>85%</span>
                        </div>
                        <h5>Rapidity</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at.</p>
                    </div>
                    <div class="col-lg-6 single-item item-2 text-center">
                        <div class="rating-circle">
                            <div class="circle-wave"></div>
                            <span>88%</span>
                        </div>
                        <h5>Professionalism</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at.</p>
                    </div>
                    <div class="col-lg-6 single-item item-3 text-center">
                        <div class="rating-circle">
                            <div class="circle-wave"></div>
                            <span>80%</span>
                        </div>
                        <h5>Customer service</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at.</p>
                    </div>
                    <div class="col-lg-6 single-item item-4 text-center">
                        <div class="rating-circle">
                            <div class="circle-wave"></div>
                            <span>85%</span>
                        </div>
                        <h5>New items</h5>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Ratings End -->

<!-- Video Starts -->
<section class="video-area section-padding-both">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 offset-lg-8">
                <div class="video-content">
                    <div class="section-title">
                        <h2>Embrace The <br>New Generation</h2>
                    </div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed.Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.</p>
                    <a href="#" class="template-btn3">Check It Out <span>&#8640;</span></a>
                </div>
            </div>
            <div class="video-icon">
                <a href="https://www.youtube.com/watch?v=bJ3RJlmGn6k" class="button-video"><i class="fa fa-play"></i></a>
            </div>
        </div>
    </div>
</section>
<!-- Video End -->

<!-- News Starts -->
<section class="news-section section-padding-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 align-self-center">
                <div class="news-left">
                    <h2>Latest News</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, ut. Nisl tincidunt eget nullam non nisi est.</p>
                    <a href="#" class="template-btn2">View Items <span>&rharu;</span></a>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="news-image">
                    <div class="image-bg"></div>
                </div>
            </div>
            <div class="col-lg-4 align-self-center">
                <div class="news-right">
                    <h3>Adriana Lima Dresses Into Our Denim Jacket For Her Birthday</h3>
                    <div class="content-top d-flex my-5">
                        <img src='<c:url value="/resources/web/img/about-page/news/news2.png"/>'>
                        <span class="align-self-center ml-4">Editorial Staff</span>
                    </div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, ut. Nisl tincidunt eget nullam non nisi est. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    <span>7 minutes ago</span>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- News End -->

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

<!-- Mirrored from codingeek.net/html/roberto-ferracini/about-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:28 GMT -->
</html>