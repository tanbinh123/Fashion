<%@ include file="/WEB-INF/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codingeek.net/html/roberto-ferracini/cart-tab-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:32 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src='<c:url value="/resources/web/js/jquery-2.2.4.min.js"/>'></script>
    <title>Cart Tab Page</title>
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
    <!-- Themify icon -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/themify-icons.css"/>'>

    <link rel="stylesheet" href='<c:url value="/resources/web/css/jquery.datetimepicker.min.css"/>'>
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href='<c:url value="/resources/web/css/style.css"/>'>
     <!-- responsive Stylesheet -->
     <link rel="stylesheet" href='<c:url value="/resources/web/css/responsive.css"/>'>

</head>

<body class="cart-tab-page common-typography">
  <%@ include file="/WEB-INF/common/web/header.jsp" %>

<!-- Tab Header Starts -->
<header class="container">
    <div class="row">
        <div class="col-lg-12 mt-70 mb-40">
            <div class="tab-accordion cart-tab">
                <div class="tab">
                    <ul class="d-flex justify-content-between">
                        <li class="tab-one active"><h4>Cart</h4></li>
                        <li class="tab-second"><h4>Shipping</h4></li>
                        <li class="tab-three"><h4>Pay</h4></li>
                        <li class="tab-four"><h4>Summary</h4></li>
                    </ul>
                </div>
            </div>
            <div class="tab-accordion-text text-center mt-70">
                <p>The next shipping for<span> 3 Hours 32 Mins</span> </p>
            </div>
        </div>
    </div>
</header>
<!-- Tab Header End -->

<!-- Tab Content Starts -->
<div class="tab-content-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="tab-content">
                    <div class="tab-one-content lost active current">

                        <!-- Cart Section Starts -->
                        <div class="cart-section">
                           <div class="cart-title">
                               <h2>Cart</h2>
                           </div>
                           <div class="qty-price text-center mb-4">
                               <ul>
                                   <li class="right-margin"><h4>Qty</h4> </li>
                                   <li><h4>Price</h4></li>
                               </ul>
                           </div>
                           <c:forEach var="value" items="${carts }">
                            <div class="cart-box" data-machitiet="${value.getMachitiet()}">
                               <div class="single-cart d-flex justify-content-between mb-5">
                                    <div class="cart-left d-flex">
                                        <div class="cart-image image1">
                                        </div>
                                        <div class="cart-text">
                                            <h4 class="idpro"data-masp="${value.getMasp()}">${value.getTensp() }</h4>
                                            <p class="idcolor"data-mamau="${value.getMamau()}">${value.getTenmau()}</p>
                                            <p class="idsize"data-size="${value.getMasize()}">${value.getTensize()}</p>
                                        </div>
                                    </div>
                                    <div class="cart-center align-self-center">
                                        <div class="cart-quantity">
                                            <ul>
                                                <li><span><i class="ti-minus"></i></span></li>
                                                <li class="pricew1"  data-value="${value.getGiatien() }">${value.getSoluong()}</li>
                                                <li><span><i class="ti-plus"></i></span></li>
                                              
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="item-right d-flex align-items-center">
                                        <div class="cart-price">
                                              <h4 >${value.getGiatien() }</h4>
                                        </div>
                                       <div class="item-icon trash-icon">
				                            <i class="fa fa-trash-o"></i>
				                        </div>
                                    </div>
                               </div>
                               </div>
                               </c:forEach>
                               
                     

                        <!-- Cart Section End -->

                        <!-- Also Like Starts -->
                        <div class="also-like section-padding-top3">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="also-like-title text-center">
                                            <h3>You May Also Like</h3>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="also-like-slider owl-carousel mt-40">
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
                                                            <img class="image-item-01 item-active" src='<c:url value="/resources/web/img/home-1/pick/pick-4.png"/>'>
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
                        </div>
                        <!-- Also Like End -->

                        

                    </div>

                    <div class="tab-second-content lost">
                        <!-- Shipping Section Starts -->
                        <div class="shipping-section">
                            <div class="shipping-title">
                                <h2>Shipping</h2>
                            </div>

                            <div class="shipping-box cart-box mt-70">
                                <div class="delivery-section d-md-flex justify-content-between mb-120">
                                    <div class="delivery-left">
                                        <h4>Delivery</h4>
                                    </div>
                                    <div class="delivery-center">
                                        <ul>
                                            <li class="active"><h4>Standard delivery 3-5 business days</h4></li>
                                            <li><h4>Next day & evening delivery</h4><h6>Order before 8 pm for delivery tomorrow</h6></li>
                                            <li><h4>Nomited day delivery</h4><h6>Pick date from the calendar</h6></li>
                                        </ul>
                                    </div>
                                    <div class="delivery-right">
                                        <ul>
                                            <li>$ 7,00</li>
                                            <li>$ 19,00</li>
                                            <li class="pt-40">$ 29,00</li>
                                        </ul>
                                    </div>
                                </div>
                                
                                <div class="address-section delivery-section d-md-flex">
                                    <div class="address-left">
                                        <h4>Address</h4>
                                    </div>
                                    <div class="address-right">
                                        <div class="d-flex form-title">
                                            <span><i class="fa fa-check-circle"></i></span>
                                            <h6>Billing address is the same as delivery address</h6>
                                        </div>

                                        <form action="#" class="mt-70">
                                            <div class="common-input2 mb-5">
                                                <h6>Full Name*</h6>
                                                <input type="text" placeholder="e.i Annastasia Alatore">
                                            </div>
                                            
                                            <div class="common-input2 mb-5">
                                                <h6>Zip / Postal Code*</h6>
                                                <input type="text" placeholder="e.i EC1A 1AA">
                                            </div>

                                            <div class="diffrent-input d-md-flex mb-5">
                                                <div class="common-input2">
                                                    <h6>House Number*</h6>
                                                    <input type="text" class="input-small" placeholder="e.i 221B">
                                                </div>
                                                <div class="common-input2">
                                                    <h6>Street*</h6>
                                                    <input type="text" class="input-large" placeholder="e.i Dorset">
                                                </div>
                                                <div class="common-input2 input-small2">
                                                    <h6>Appartment*</h6>
                                                    <input type="text" class="input-small" placeholder="e.i 14">
                                                </div>
                                            </div>

                                            <div class="common-input2 mb-5">
                                                <h6>Town / City*</h6>
                                                <input type="text" placeholder="e.i London">
                                            </div>

                                            <div class="common-input2 mb-5">
                                                <h6>Country*</h6>
                                                <input type="text" placeholder="e.i UK">
                                            </div>

                                            <div class="common-input2 mb-5">
                                                <h6>Phone Number*</h6>
                                                <input type="text" placeholder="e.i +230 544 65768*">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>



                        </div>
                        <!-- Shipping Section End -->

                    </div>

                    <div class="tab-three-content lost">
                        <!-- Payment Section Starts -->
                        <div class="payment-section">
                            <div class="payment-title">
                                <h2>Payment</h2>
                            </div>

                            <div class="payment-box cart-box mt-70">                              
                                <div class="payment-content">
                                    <div class="prompt-section d-md-flex mb-100">
                                        <div class="payment-left">
                                            <h4>Prompt Payment</h4>
                                        </div>
                                        <div class="payment-right">
                                            <div class="right-top d-flex">
                                                <span><i class="fa fa-dot-circle-o"></i></span>
                                                <h6>Pay using your PayPal account. You will be redirected to the <br>System respectively to complete the payment.</h6>
                                            </div>
                                            <div class="right-image mt-5 ml-100">
                                                <img src='<c:url value="/resources/web/img/cart-tab-page/payment/paypal.png" />'>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="credit-section d-md-flex">
                                        <div class="payment-left">
                                            <h4>Credit / Debit Card Payment</h4>
                                        </div>
                                        <div class="payment-right"> 
                                            <div class="d-flex">
                                                <div class="right-circle">
                                                    <span><i class="fa fa-circle-o"></i></span> 
                                                </div> 
                                                <div class="right-image">
                                                    <img src='<c:url value="/resources/web/img/cart-tab-page/payment/master-card.png"  />' class="mr-5">
                                                    <img src='<c:url value="/resources/web/img/cart-tab-page/payment/visa.png" />'>
                                                </div>
                                            </div>

                                            <form action="#" class="mt-70">
                                                <div class="common-input2 mb-5">
                                                    <h6 class="mt-5 mt-lg-0">Name On Card</h6>
                                                    <input type="text" placeholder="e.i Annastasia Alatore">
                                                </div>
                                                
                                                <div class="common-input2 mb-5">
                                                    <h6>Card Number</h6>
                                                    <input type="text" placeholder="e.i">
                                                </div>
    
                                                <div class="diffrent-input d-flex mb-5">
                                                    <div class="common-input2">
                                                        <h6>Expiry Date</h6>
                                                        <input type="text" class="input-small" placeholder="e.i 221B">
                                                    </div>
                                                    <div class="common-input2">
                                                        <h6>Security Code</h6>
                                                        <input type="text" class="input-large" placeholder="e.i Dorset">
                                                    </div>
                                                </div>
    
                                                <div class="common-input2 mb-5">
                                                    <h6>Zip / Postal Code</h6>
                                                    <input type="text" placeholder="e.i EC1A 1AA">
                                                </div>

                                                <h6>By clicking Pay Now Securely you agree to our <a href="#">Terms and Conditions.</a></h6>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                          


                        </div>
                        <!-- Payment Section End -->
                    </div>

                    <div class="tab-four-content lost">
                        <div class="summary-section">
                            <div class="summary-header text-center">
                                <img src='<c:url value="/resources/web/img/cart-tab-page/thanks.png"  />'class="mb-3">
                                <h3>Thank You, John !</h3>
                                <p class="mt-4">Huraaay! You order has been placed successfully. <br>We received your payment and wrapping up your stuff for shipping</p>
                            </div>

                            <div class="summary-box cart-box mt-100">                              
                                <div class="summary-content">
                                    <div class="order-part">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="common-left">
                                                    <h4>Order Details</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="common-right pt-80 d-flex justify-content-between mb-70">
                                                    <div class="slub-shirt">
                                                        <h5>Slub shirt</h5>
                                                        <ul class="mt-4">
                                                            <li>#71839734342234</li>
                                                            <li>Size:M</li>
                                                            <li>Color:Pink</li>
                                                            <li>Qty: 1 Item(shipping)</li>
                                                        </ul>
                                                    </div>
                                                    <div class="price">
                                                        <h5>$26</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-8 offset-lg-4">
                                                <div class="common-right d-flex justify-content-between mb-70">
                                                    <div class="slub-shirt">
                                                        <h5>Denim Jacket</h5>
                                                        <ul class="mt-4">
                                                            <li>#71839734342234</li>
                                                            <li>Size:M</li>
                                                            <li>Color:Blue</li>
                                                            <li>Qty: 2 Item(shipping)</li>
                                                        </ul>
                                                    </div>
                                                    <div class="price">
                                                        <h5>$32</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-lg-8 offset-lg-4">
                                                <div class="common-right d-flex justify-content-between">
                                                    <div class="slub-shirt">
                                                        <h5>SweatShirt</h5>
                                                        <ul class="mt-4">
                                                            <li>#71839734342234</li>
                                                            <li>Size:M</li>
                                                            <li>Color:Grey</li>
                                                            <li>Qty: 4 Item(shipping)</li>
                                                        </ul>
                                                    </div>
                                                    <div class="price">
                                                        <h5>$100</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="estimation-part mt-70">
                                        <div class="row">
                                            <div class="col-lg-3">
                                                <div class="common-left">
                                                    <h4>Estimation</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 offset-lg-1">
                                                <div class="common-right pt-80 d-flex justify-content-between mb-70">
                                                    <div>
                                                        <ul>
                                                            <li>#Order</li>
                                                            <li>Bonus / Discount</li>
                                                            <li>Taxes</li>
                                                            <li class="mt-4">Total</li>
                                                        </ul>
                                                    </div>
                                                    <div class="price">
                                                        <ul>
                                                            <li>$ 158</li>
                                                            <li>$ -10</li>
                                                            <li>$ 0</li>
                                                            <li class="mt-4 final">$ 158,00</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="information-part mt-70">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="common-left">
                                                    <h4>Customer Information</h4>
                                                </div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="common-right pt-80 d-flex justify-content-between mb-70">
                                                    <div class="address">
                                                        <h5>Shipping Address</h5>
                                                        <ul class="mt-4">
                                                            <li>Anastasia Alatore</li>
                                                            <li>EC1A 1AA</li>
                                                            <li>221B Dorset</li>
                                                            <li>London</li>
                                                            <li>Uk</li>
                                                            <li>+230 544 65 768</li>
                                                        </ul>
                                                    </div>
                                                    <div class="billing">
                                                        <h5>Billing Address</h5>
                                                        <ul class="mt-4">
                                                            <li>Anastasia Alatore</li>
                                                            <li>EC1A 1AA</li>
                                                            <li>221B Dorset</li>
                                                            <li>London</li>
                                                            <li>Uk</li>
                                                            <li>+230 544 65 768</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-8 offset-lg-4">
                                                <div class="common-right d-flex justify-content-between mb-70">
                                                    <div class="method">
                                                        <h5>Shipping Method</h5>
                                                        <ul class="mt-4">
                                                            <li>Standard 3-5 Business days</li>
                                                        </ul>
                                                    </div>
                                                    <div class="payment">
                                                        <h5>Payment Method</h5>
                                                        <ul class="mt-4">
                                                            <li>Credit Card 123456789101</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Tab Content End -->

<!-- Estimation Section Starts -->
<section class="estimation-section-main section-padding-top4">
        <div class="container">
            <div class="row estimation-section">
                <div class="col-lg-6">
                    <div class="estimation-left">
                        <div class="left-title">
                            <h4>Estimation</h4>
                        </div>
                        
                        <div class="left-text d-md-flex">
                            <div class="name">
                                <ul>
                                    <li>Order</li>
                                    <li>Bonus / Discount</li>
                                    <li>Taxes</li>
                                </ul>
                            </div>
                            <div class="price">
                                <ul>
                                    <li>$ 158</li>
                                    <li>$ -10</li>
                                    <li>$ 0</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="estimation-right text-right">
                        <div class="right-title">
                            <h4>Total</h4>
                            <h3 class="final">$ 158,00</h3>
                            <a href="#" class="template-btn2 off1">Checkout <span>&rharu;</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>
<!-- Estimation Section End -->


<!-- Instagram Starts -->
<section class="instagram-area section-padding-top3">
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

<!-- Mirrored from codingeek.net/html/roberto-ferracini/cart-tab-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Jan 2020 14:36:34 GMT -->
</html>