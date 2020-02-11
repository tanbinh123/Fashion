<%@ include file="/WEB-INF/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.net/html/roberto-ferracini/profile-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:43 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profile Page</title>
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

<body class="profile-page common-typography">
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
                    <div class="tab-accordion">
                        <div class="tab">
                            <ul>
                                <li class="tab-one active"><h6><i class="fa fa-user-o"></i> profile</h6></li>
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
                <div class="tab-content">
                    <div class="tab-one-content lost active">
                        <div class="contact-bg">
                            <div class="form-border">
                                <div class="form-title">
                                    <h4>Password</h4>
                                </div>
                                <form action="#">
                                    <div class="diffrent d-flex justify-content-between">
                                        <div class=""><h6>Email Address</h6>
                                            <input type="email" placeholder="e.i User@gmail.com"></div>
                                        <div class=""><h6>Password</h6>
                                            <input type="password" placeholder="e.i **********"></div>
                                    </div>
    
                                    <h6>Confirm Password</h6>
                                    <input type="password" placeholder="e.i **********">
                    
                                    <div class="form-button">
                                        <button type="button" class="template-btn2 on2">Back To Setting<span class="custom-icon"></span></button>
                                        <button type="submit" class="template-btn2 on1">Save Changes<span class="custom-icon"></span></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    
                    <div class="tab-second-content lost">
                        <div class="contact-bg2">
                            <div class="form-border">
                                <div class="form-title">
                                    <h4>Saved Items</h4>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="single-item">
                                            <span class="cross-icon"><i class="fa fa-times"></i></span>
                                            <div class="item-bg item1"></div>
                                            <span class="plus"><a href="#"><span>+</span></a></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="single-item">
                                            <span class="cross-icon"><i class="fa fa-times"></i></span>
                                            <div class="item-bg item2"></div>
                                            <span class="plus"><a href="#"><span>+</span></a></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="single-item">
                                            <span class="cross-icon"><i class="fa fa-times"></i></span>
                                            <div class="item-bg item3"></div>
                                            <span class="plus"><a href="#"><span>+</span></a></span>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="single-item">
                                            <span class="cross-icon"><i class="fa fa-times"></i></span>
                                            <div class="item-bg item4"></div>
                                            <span class="plus"><a href="#"><span>+</span></a></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="single-item">
                                            <span class="cross-icon"><i class="fa fa-times"></i></span>
                                            <div class="item-bg item5"></div>
                                            <span class="plus"><a href="#"><span>+</span></a></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-three-content lost">
                        <div class="contact-bg3">
                            <div class="form-border">
                                <div class="form-title">
                                    <h4>My Profile</h4>
                                </div>
                                <div class="content-bottom  content-padding">
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In amet, odit itaque sint soluta molestias ullam consequatur nihil unde impedit laborum corporis aut, ducimus commodi. Sunt sint quod, placeat quisquam aut repellendus nobis expedita.</p>
                                </div>

                                <div class="form-title">
                                    <h4>Latest Order</h4>
                                </div>
                                <div class="content-bottom content-padding">
                                    <ul>
                                        <li><i class="ti-file"></i></li>
                                        <li><i class="ti-package"></i></li>
                                        <li><i class="ti-truck"></i></li>
                                        <li><i class="ti-home"></i></li>
                                    </ul>
                                </div>
                                
                                <div class="form-title title-diff">
                                    <h4>Recent Purchases</h4>
                                </div>
                                <div class="content-bottom bottom-diff">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="single-item">
                                                <span class="cross-icon"><i class="fa fa-check-circle"></i></span>
                                                <div class="item-bg item1"></div>
                                                <div class="plus">
                                                    <h6>Brown Bag</h6>
                                                    <h6>$34</h6>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="single-item">
                                                <span class="cross-icon"><i class="fa fa-check-circle"></i></span>
                                                <div class="item-bg item2"></div>
                                                <div class="plus">
                                                    <h6>Apple Watch</h6>
                                                    <h6>$34</h6>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-4">
                                            <div class="single-item">
                                                <span class="cross-icon"><i class="fa fa-check-circle"></i></span>
                                                <div class="item-bg item3"></div>
                                                <div class="plus">
                                                    <h6>Red Heels</h6>
                                                    <h6>$34</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="tab-four-content lost">
                        <div class="contact-bg4">
                            <div class="form-border">
                                <div class="form-title">
                                    <h4>Setting</h4>
                                </div>
                                <ul>
                                    <li><a href="profile-contact-details.html" target="_blank"><i class="fa fa-pencil-square-o"></i> Contact Details</a></li>
                                    <li><a href="profile-social-accounts.html" target="_blank"><i class="fa fa-user-o"></i> Social accounts</a></li>
                                    <li><a href="#"><i class="fa fa-lock"></i> Change Password</a></li>
                                    <li><a href="profile-notifications.html"  target="_blank"><i class="fa fa-bell-o"></i> Notification</a></li>
                                    <li><a href="#"><i class="fa fa-exclamation-circle"></i> Need Help?</a></li>
                                </ul>
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

<!-- Mirrored from codingeek.net/html/roberto-ferracini/profile-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:49 GMT -->
</html>