<%@ include file="/WEB-INF/common/taglib.jsp" %>
<div class="preloader" id="preloader">
    <div class="preloader-inner">
        <div class="spinner">
            <div class="dot1"></div>
            <div class="dot2"></div>
        </div>
    </div>
</div>
<!-- preloader area end -->

<!-- search Popup -->
<div class="body-overlay" id="body-overlay"></div>
<div class="search-popup" id="search-popup">
    <form action="/Fashion/shoppage/search" class="search-form">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Here'" name="search">
        </div>
        <button type="submit" class="submit-btn"><i class="fa fa-search"></i></button>
    </form>
</div>
<!-- //. search Popup -->

<!-- cart-popup-starts -->
<div class="cart-popup" id="cart-popup">
    <div class="cart-content">
        <span class="cross-icon"><i class="lnr lnr-cross"></i></span>
        <div class="cart-title text-center">
            <h2>Cart</h2>
            <h6 class="text-right numItem">${fn:length(carts)} Items</h6>
        </div>
        
        <div class="cart-items">
        <c:forEach var="item" items="${carts}">
        
        	  <div class="single-item-function-1" >
                <div class="single-item d-flex justify-content-between mb-4">
                    <div class="item-left d-flex">
                        <div class="item-image" style="background-image:url('<c:url value="/resources/web/img/shop-page/${item.getImg()}"/>');"></div>
                        <div class="item-name align-self-center">
                            <h6>${item.getTensp() }</h6>
                            <h6>${item.getTenmau() }</h6>
                            <h6>${item.getTensize()}</h6>
                            <h6>${item.getSoluong()}</h6>
                        </div>
                    </div>
                    <div class="item-right d-flex align-items-center">
                        <div class="item-price">
                            <h6 class="pricex">${item.getGiatien() }</h6>
                        </div>
                        <div class="item-icon trash-icon-1">
                            <i class="fa fa-trash-o"></i>
                        </div>
                    </div>
                </div>
         
           </div>
        </c:forEach>
         </div>
         
        <div class="total-price text-right">
            <h4>Total</h4>
            <h3 id="totalx">$ 0</h3>
        </div>

        <div class="cart-buttons mt-4 mt-xl-5">
            <a href="#" class="template-btn2 off2 mb-4">View Cart <span>&rharu;</span></a>
            <a href="#" class="template-btn2 off1">Checkout <span>&rharu;</span></a>
        </div>
    </div>
</div>
<!-- cart-popup-end -->

    
<!-- live-chat-popup-starts -->
<div class="live-chat-popup" id="live-chat-popup">

    <div class="live-chat-content live-chat-part-1">
        <span class="cross-icon"><i class="lnr lnr-cross"></i></span>
        <div class="cart-title text-center">
            <h2>Live Chat</h2>
        </div>

        <div class="all-chat">
            <div class="single-chat mb-4 when-click-change-live-chat">
                <div class="overlay-image image-1">
                    <div class="hover-state">
                        <p>Customer Care, <span>Alan Yve Laurent</span> <i class="fa fa-comment-o ml-3"></i></p>
                    </div>
                </div>
            </div>
            
            <div class="single-chat mb-4 when-click-change-live-chat">
                <div class="overlay-image image-2">
                    <div class="hover-state">
                        <p>Customer Care, <span>Alan Yve Laurent</span> <i class="fa fa-comment-o ml-3"></i></p>
                    </div>
                </div>
            </div>
            
            <div class="single-chat when-click-change-live-chat">
                <div class="overlay-image image-3">
                    <div class="hover-state">
                        <p>Customer Care, <span>Alan Yve Laurent</span> <i class="fa fa-comment-o ml-3"></i></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="live-chat-content-2 live-chat-part-2">
        <div class="live-chat-content-2-top">
            <span class="cross-icon"><i class="lnr lnr-cross"></i></span>
            <div class="cart-title text-center">
                <h2>Live Chat</h2>
            </div>
            <div class="all-chat d-flex justify-content-between">
                <div class="single-chat">
                    <div class="overlay-image image-1">
                        <div class="hover-state">
                        </div>
                    </div>
                </div>
                
                <div class="single-chat">
                    <div class="overlay-image image-2">
                        <div class="hover-state">
                        </div>
                    </div>
                </div>
                
                <div class="single-chat">
                    <div class="overlay-image image-3">
                        <div class="hover-state">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="live-chat-box">
            <p class="text-center p-white pb-4">Sunday 23, 11:20am</p>
            <div class="message-1">
                <p class="message-name ml-4">Laurent</p>
                <input type="text" placeholder="Are you ready?">
                <p class="message-date ml-4">Sunday 23, 11:20am</p>
            </div>
    
            <div class="message-2 text-right mt-3">
                <p class="message-name mr-4">You</p>
                <input type="text" placeholder="Yes Sure, Let’s start">
                <p class="message-date mr-4">Sunday 23, 11:20am</p>
            </div>
    
            <div class="message-submit pl-5 mt-3">
                <p class="submit-text ml-4">Laurent is typing</p>
                <form action="#">
                    <input type="email" placeholder="Type something">
                    <button type="submit" class="search-button"><i class="fa fa-paper-plane"></i></button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- live-chat-popup-end -->

<!-- Login PopUp Starts -->
<div class="login-popup">

    <div class="login-content">
        <span class="cross-icon"><i class="lnr lnr-cross"></i></span>
        <div class="cart-title text-center">
            <h2>Login</h2>
        </div>

        <form action="/Fashion/Login/" method="post">
            <div class="input-group mb-40">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon1"><i class="fa fa-envelope-o"></i></span>
                </div>
                <input type="text" class="form-control" placeholder="Ferracini@example.com" aria-label="Username" aria-describedby="basic-addon1" name="username">
            </div>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon2"><i class="fa fa-lock"></i></span>
                </div>
                <input type="password" class="form-control" placeholder="**********" aria-label="password" aria-describedby="basic-addon2" name="password">
            </div>
            <div class="text-right">
                <a href="#" class="when-click-forgot-password">Forgot Password?</a>
            </div>
            <button type="submit" class="template-btn2 mt-5">Login <span>&rharu;</span></button>
        </form>

        <div class="login-bottom text-center">
            <p>You do not have an account? <a href="#" class="when-click-signup">Sign up</a></p>
        </div>
    </div>

    <div class="signup-content">
        <span class="cross-icon"><i class="lnr lnr-cross"></i></span>
        <div class="cart-title text-center">
            <h2>Sign Up</h2>
        </div>

        <form action="/Fashion/Singin/" method="post">
            <div class="input-group mb-4">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fa fa-user-o"></i></span>
                </div>
                <input type="text" class="form-control" placeholder="Enter Username" name="user">
            </div>
            <div class="input-group mb-4">
                <div class="input-group-prepend">
                    <span class="input-group-text" ><i class="fa fa-envelope-o"></i></span>
                </div>
                <input type="email" class="form-control" placeholder="Enter Email" name="email">
            </div>
            <div class="input-group mb-4">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fa fa-lock"></i></span>
                </div>
                <input type="password" class="form-control" placeholder="Create Password" name="pass">
            </div>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fa fa-lock"></i></span>
                </div>
                <input type="password" class="form-control" placeholder="Confirm Password" name="repass">
            </div>

            <div class="check-option mt-5">
                <input type="checkbox" id="checkbox" class="mb-3" name="check">
                <label for="checkbox" class="ml-3">Accept Terms & Conditions</label> <br>
            </div>
            <button type="submit" class="template-btn2 mt-5">Sign Up <span>&rharu;</span></button>
            <button type="submit" class="template-btn2 on2">Login with Gmail <span>&rharu;</span></button>
        </form>

        <div class="login-bottom text-center">
            <p>You have an account? <a href="#" class="when-click-login">Login </a></p>
        </div>
    </div>

    <div class="forgot-password-content">
        <span class="cross-icon"><i class="lnr lnr-cross"></i></span>
        <div class="cart-title text-center">
            <h2>Forgot Password</h2>
        </div>

        <form action="#">
            <div class="input-group mb-4">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="basic-addon3"><i class="fa fa-envelope-o"></i></span>
                </div>
                <input type="email" class="form-control" placeholder="Enter Email Address" aria-label="Username" aria-describedby="basic-addon1">
            </div>
            
            <button type="submit" class="template-btn2">Send <span>&rharu;</span></button>
        </form>

        <div class="forgot-password-bottom text-center mt-4">
            <p>We have send a link to reset your password to the above <br>email address. Please verify.</p>
        </div>
    </div>
</div>
<!-- Login PopUp End -->


<!-- navbar area starts -->
<nav class="navbar navbar-area white navbar-expand-lg nav-style-02 nav-absolute">
    <div class="container-fluid nav-container">
        <div class="responsive-mobile-menu">
            <div class="logo-wrapper">
                <a href="#" class="logo">
                    <img src='<c:url value="/resources/web/img/logo/white-logo.png"/>' alt="logo" style="background:black">
                    <h4>Manh <br>Nguyen</h4>
                </a>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bizcoxx_main_menu" 
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="bizcoxx_main_menu">
            <ul class="navbar-nav">
                <li>
                    <a href="/Fashion/" >Home</a>
                </li>
                <li>
               		 <a href="/Fashion/shoppage/">Shop</a>
                </li>
                <li class="menu-item-has-children mega-menu-list">
                        <a href="#">Pages</a>
                        <div class="mega-menu ">
                            <ul class="mega-menu-inner">
                                <li><a href="about-page.html">About us</a></li>
                                <li><a href="cart-page.html">Cart page</a></li>
                                <li><a href="cart-tab-page.html">Cart Tab</a></li>
                            </ul>
                            <ul class="mega-menu-inner">
                                <li><a href="profile-page.html">Profile page</a></li>
                                <li><a href="returns-page.html">Return page</a></li>            
                            </ul>
                            <ul class="mega-menu-inner">
                                <img src='<c:url value="/resources/web/img/header-page/mega-menu.jpg"/>' alt="">
                                <h5>Extra 10% off</h5>
                            </ul>
                        </div>
                    </li>
                <li>
                    <a href="/Fashion/Contact/">Contact Us</a>
                </li>
            </ul>
        </div>

        <div class="nav-right-content">
            <ul>
                <li class="search" id="search">
                    <span class="lnr lnr-magnifier"></span>
                </li>
                
                <!-- Icon ddang nhap tai day -->
                
                 <c:choose>
			       	<c:when test="${dangnhap !=null}">
			       		  <li class="ml-3">
			       		  	<a>${dangnhap}</a>
			       		  </li>
			       		  <li> <a href="/Fashion/Logout/"><i class="fa fa-sign-out" aria-hidden="true"></i></a>				 
			       		  </li>  
			       		 
			       	</c:when>
			       	<c:otherwise>
			       		<li class="ml-3 floating-icon-3 user">
                    		<span class="lnr lnr-user"></span>    
              			  </li>
			       	</c:otherwise>
			      </c:choose>
			       
			       
                <li class="cart floating-icon-1 ml-4">
                    <div class="cart-sec">
                        <a href="/Fashion/api/total"><span class="lnr lnr-cart"></span></a>
                        <span class="cart-count">${fn:length(carts)}</span>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- navbar area end -->