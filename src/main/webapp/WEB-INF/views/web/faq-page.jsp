<%@ include file="/WEB-INF/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.net/html/roberto-ferracini/faq-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:42 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FAQ Page</title>
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
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/style.css"/>'>
     <!-- responsive Stylesheet -->
     <link rel="stylesheet" href='<c:url value="/resources/web/css/responsive.css"/>'>

</head>

<body class="faq-page common-typography">
    <!-- preloader area start -->
<%@ include file="/WEB-INF/common/web/header.jsp" %>

<!-- Accordion Starts -->
<section class="accordion-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="help-padding">
                    <div class="text-center">
                        <h1>Frequently Asked Question</h1>
                        <form action="#">
                            <input type="email" class="search-input" placeholder="Search" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search'" required>
                            <button type="submit" class="search-button"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="faq-section">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="accordion-wrapper" id="accordionExample">
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <p class="mb-0">
                                    <a href="#" role="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.
                                    </a>
                                </p>
                            </div>
                            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi.
                                </div>
                            </div>
                        </div>
    
                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <p class="mb-0">
                                    <a href="#" role="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.
                                    </a>
                                </p>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                <div class="card-body">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi.
                                </div>
                            </div>
                        </div>
                        
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <p class="mb-0">
                                    <a href="#" role="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.
                                    </a>
                                </p>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                <div class="card-body">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi.
                                </div>
                            </div>
                        </div>
    
                        <div class="card">
                            <div class="card-header" id="headingFour">
                                <p class="mb-0">
                                    <a href="#" role="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.
                                    </a>
                                </p>
                            </div>
                            <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                                <div class="card-body">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi.
                                </div>
                            </div>
                        </div>
    
                        <div class="card">
                            <div class="card-header" id="headingFive">
                                <p class="mb-0">
                                    <a href="#" role="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.
                                    </a>
                                </p>
                            </div>
                            <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
                                <div class="card-body">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi.
                                </div>
                            </div>
                        </div>
    
                        <div class="card">
                            <div class="card-header" id="headingSix">
                                <p class="mb-0">
                                    <a href="#" role="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut.
                                    </a>
                                </p>
                            </div>
                            <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
                                <div class="card-body">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus augue nibh, at ullamcorper orci ullamcorper ut. Nisl tincidunt eget nullam non nisi est. Pharetra et ultrices neque ornare. Ac felis donec et odio pellentesque diam volutpat commodo sed. Dolor sed viverra ipsum nunc aliquet. Pharetra massa massa ultricies mi quis hendrerit dolor. In nisl nisi.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="template-pagination text-center">
                        <ul class="mt-5">
                            <li class="active"><a href="#">01</a></li>
                            <li><a href="#">02</a></li>
                            <li><a href="#">03</a></li>
                            <li><a href="#">04</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row faq-comment">
                <div class="col-lg-8 offset-lg-2">
                    <div class="comment-title section-title">
                        <h2>Ask A question?</h2>
                    </div>
                    <form action="#">
                        <textarea cols="20" rows="10" placeholder="Write some nice stuff or nothing…"></textarea>
                        <button type="submit" class="template-btn2 mt-5">Add Your Comment <span>&rharu;</span></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Accordion End -->

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

<!-- Mirrored from codingeek.net/html/roberto-ferracini/faq-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:43 GMT -->
</html>