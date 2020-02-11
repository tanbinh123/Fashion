<%@ include file="/WEB-INF/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.net/html/roberto-ferracini/profile-contact-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:38:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profile Contact Details</title>
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

    <link rel="stylesheet" href='<c:url value="/resources/web/css/jquery.datetimepicker.min.css"/>'>
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/style.css"/>'>
     <!-- responsive Stylesheet -->
     <link rel="stylesheet" href='<c:url value="/resources/web/css/responsive.css"/>'>

</head>

<body class="profile-page profile-contact-details common-typography">
    <!-- preloader area start -->
<%@ include file="/WEB-INF/common/web/header.jsp" %>
<!-- Banner Starts -->
<div class="profile-banner">
</div>
<!-- Banner End -->


<!-- Profile Area Starts -->
<section class="profile-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="profile-image">
                    <div class="image"></div>
                    <div class="name mt-2">
                        <h4>Alicia Ketsia <i class="fa fa-pencil-square-o"></i></h4>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-12">
                <div class="profile-title">
                    <h2>My Account</h2>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-2 pr-0">
                <div class="profile-tab">
                    <div class="">
                        <div class="tab">
                            <ul>
                                <li class="tab-one"><h6><i class="fa fa-user-o"></i> profile</h6></li>
                                <li class="tab-second"><h6><i class="fa fa-heart-o"></i> Saved</h6></li>
                                <li class="tab-three"><h6><i class="fa fa-square-o"></i> Track Order</h6></li>
                                <li class="tab-four"><h6><i class="fa fa-cog"></i> setting</h6></li>
                                <li class="tab-five"><h6><i class="fa fa-sign-out"></i> Log Out</h6></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-10 pl-0">
                <div class="">
                    <div class="">
                        <div class="contact-bg">
                            <div class="form-border">
                                <div class="form-title">
                                    <h4>Contact Details</h4>
                                </div>
                                <form action="#">
                                    <h6>Full Name</h6>
                                    <input class="diffrent" type="text" placeholder="e.i Annastasia Alatore">

                                    <div class="diffrent d-flex justify-content-between">
                                        <div class=""><h6>Email Address</h6>
                                            <input type="email" placeholder="e.i User@gmail.com"></div>
                                        <div class=""><h6>Password</h6>
                                            <input type="password" placeholder="e.i **********"></div>
                                    </div>
                                    
                                    <div class="diffrent d-flex justify-content-between">
                                        <div class=""><h6>Country</h6>
                                            <input type="text" placeholder="e.i London"></div>
                                        <div class=""><h6>Address</h6>
                                            <input type="text" placeholder="e.i St street"></div>
                                    </div>
    
                                    <h6>Zip / Postal Code</h6>
                                    <input class="diffrent" type="text" placeholder="e.i EC1A 1AA">
                    
                                    <div class="form-button">
                                        <button type="button" class="template-btn2 on2">Back To Setting<span class="custom-icon"></span></button>
                                        <button type="submit" class="template-btn2 on1">Save Changes<span class="custom-icon"></span></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Profile Area End -->


<!-- Instagram Starts -->
<section class="instagram-area section-padding-top">
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

<!-- Mirrored from codingeek.net/html/roberto-ferracini/profile-contact-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:38:00 GMT -->
</html>