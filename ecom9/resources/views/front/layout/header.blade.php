<?php
use App\Models\Section;
$sections = Section::sections();
/*echo "<pre>"; print_r($sections); die;*/
$totalCartItems = totalCartItems();
?>
<!-- Header -->
<header>
    <!-- Top-Header -->
    <div class="full-layer-outer-header">
        <div class="container clearfix">
            <nav>
                <ul class="primary-nav g-nav">
                    <li>
                        <a href="tel:+111222333">
                            <i class="fas fa-phone u-c-brand u-s-m-r-9"></i>
                            Telephone:+111-222-333</a>
                    </li>
                    <li>
                        <a href="mailto:info@sitemakers.in">
                            <i class="fas fa-envelope u-c-brand u-s-m-r-9"></i>
                            E-mail: info@fruitage.com
                        </a>
                    </li>
                </ul>
            </nav>
            <nav>
                <ul class="secondary-nav g-nav">
                    <li>
                        <a>@if(Auth::check()) My Account @else Login/Register @endif
                            <i class="fas fa-chevron-down u-s-m-l-9"></i>
                        </a>
                        <ul class="g-dropdown" style="width:200px">
                            <li>
                                <a href="cart.html">
                                    <i class="fas fa-cog u-s-m-r-9"></i>
                                    My Cart</a>
                            </li>
                            <li>
                                <a href="wishlist.html">
                                    <i class="far fa-heart u-s-m-r-9"></i>
                                    My Wishlist</a>
                            </li>
                            <!-- <li>
                                <a href="checkout.html">
                                    <i class="far fa-check-circle u-s-m-r-9"></i>
                                    Checkout</a>
                            </li> -->
                            @if(Auth::check())
                                <li>
                                    <a href="{{ url('user/account') }}">
                                        <i class="fas fa-sign-in-alt u-s-m-r-9"></i>
                                        My Account</a>
                                </li>
                                <li>
                                    <a href="{{ url('user/orders') }}">
                                        <i class="fas fa-sign-in-alt u-s-m-r-9"></i>
                                        My Orders</a>
                                </li>
                                <li>
                                    <a href="{{ url('user/logout') }}">
                                        <i class="fas fa-sign-in-alt u-s-m-r-9"></i>
                                        Logout</a>
                                </li>
                            @else
                                <li>
                                    <a href="{{ url('user/login-register') }}">
                                        <i class="fas fa-sign-in-alt u-s-m-r-9"></i>
                                        Customer Login</a>
                                </li>
                                <li>
                                    <a href="{{ url('vendor/login-register') }}">
                                        <i class="fas fa-sign-in-alt u-s-m-r-9"></i>
                                        Vendor Login</a>
                                </li>
                            @endif
                        </ul>
                    </li>
                    <li>
                        <a>USD
                            <i class="fas fa-chevron-down u-s-m-l-9"></i>
                        </a>
                        <ul class="g-dropdown" style="width:90px">
                            <li>
                                <a href="#" class="u-c-brand">($) USD</a>
                            </li>
                            <li>
                                <a href="#">(£) GBP</a>
                            </li>
                        </ul>
                    </li>
                    
                    <!-- <li>
                        <a>ENG
                            <i class="fas fa-chevron-down u-s-m-l-9"></i>
                        </a>
                        <ul  class="g-dropdown" style="width:70px">
                            <li>
                                <a href="#" class="u-c-brand">ENG</a>
                            </li>
                            <li>
                                <a href="#">ARB</a>
                            </li>
                        </ul>
                  </li>     -->
                  <li>
                     <select onchange="changeLanguage(this.value)">
                    <option {{session()->has('lang_code')?(session()->get('lang_code')=='en'?
                        'selected': ''):''}} value="en">English</option>
                    <option {{session()->has('lang_code')?(session()->get('lang_code')=='yor'?
                        'selected': ''):''}} value="Yor">Yoruba</option>
                    <option {{session()->has('lang_code')?(session()->get('lang_code')=='igb'?
                        'selected': ''):''}} value="Igb">Igbo</option>
                    <option {{session()->has('lang_code')?(session()->get('lang_code')=='hus'?
                        'selected': ''):''}} value="Hus">Hausa</option>

                    </select>

                 
                  </li>
                </ul>
            </nav>
        </div>
    </div>

hhhhhhhhhhhhhhh


        <!-- Humberger Begin -->
        <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->





























    <!-- Top-Header /- -->
    <!-- Mid-Header -->
    <div class="full-layer-mid-header">
        <div class="container">
            <div class="row clearfix align-items-center">
                <div class="col-lg-3 col-md-9 col-sm-6">
                    <div class="brand-logo text-lg-center">
                        <a href="index.html">
                           <h6> Fruitage Foods</h6>
                            <!-- <img src="{{ asset('front/images/main-logo/stack-developers-logo.png') }}" alt="Stack Developers" class="app-brand-logo"> -->
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 u-d-none-lg">
                    <form class="form-searchbox">
                        <label class="sr-only" for="search-landscape">Search</label>
                        <input id="search-landscape" type="text" class="text-field" placeholder="Search everything">
                        <div class="select-box-position">
                            <div class="select-box-wrapper select-hide">
                                <label class="sr-only" for="select-category">Choose category for search</label>
                                <select class="select-box" id="select-category">
                                    <option selected="selected" value="">
                                        All
                                    </option>
                                    @foreach($sections as $section)
                                    <option value="">{{ $section['name'] }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <button id="btn-search" type="submit" class="button button-primary fas fa-search"></button>
                    </form>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <nav>
                        <ul class="mid-nav g-nav">
                            <li class="u-d-none-lg">
                                <a href="index.html">
                                    <i class="ion ion-md-home u-c-brand"></i>
                                </a>
                            </li>
                            <li class="u-d-none-lg">
                                <a href="wishlist.html">
                                    <i class="far fa-heart"></i>
                                </a>
                            </li>
                            <li>
                                <a id="mini-cart-trigger">
                                    <i class="ion ion-md-basket"></i>
                                    <span class="item-counter totalCartItems">{{ $totalCartItems }}</span>
                                    <span class="item-price">$220.00</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Mid-Header /- -->
    <!-- Responsive-Buttons -->
    <div class="fixed-responsive-container">
        <div class="fixed-responsive-wrapper">
            <button type="button" class="button fas fa-search" id="responsive-search"></button>
        </div>
        <div class="fixed-responsive-wrapper">
            <a href="wishlist.html">
                <i class="far fa-heart"></i>
                <span class="fixed-item-counter">4</span>
            </a>
        </div>
    </div>
    <!-- Responsive-Buttons /- -->
    <!-- Mini Cart -->
    <div id="appendHeaderCartItems">
        @include('front.layout.header_cart_items')
    </div>
    <!-- Mini Cart /- -->
    <!-- Bottom-Header -->
    <div class="full-layer-bottom-header">
        <div class="container ">
            <div class="row align-items-center">
                <div class="col-lg-3">
                    <div class="v-menu v-close">
                        <span class="v-title bg-success">
                            <i class="ion ion-md-menu"></i>
                            All Categories
                            <i class="fas fa-angle-down"></i>
                        </span>
                        <nav>
                            <div class="v-wrapper">
                                <ul class="v-list animated fadeIn">
                                    @foreach($sections as $section)
                                    @if(count($section['categories'])>0)
                                    <li class="js-backdrop ">
                                        <a href="javascript:;">
                                            <i class="ion-ios-add-circle"></i>
                                            {{ $section['name'] }}
                                            <i class="ion ion-ios-arrow-forward"></i>
                                        </a>
                                        <button class="v-button ion ion-md-add"></button>
                                        <div class="v-drop-right" style="width: 700px;">
                                            <div class="row">
                                                @foreach($section['categories'] as $category)
                                                <div class="col-lg-4">
                                                    <ul class="v-level-2">
                                                        <li>
                                                            <a href="{{ url($category['url']) }}">{{ $category['category_name'] }}</a>
                                                            <ul>
                                                                @foreach($category['subcategories'] as $subcategory)
                                                                <li>
                                                                    <a href="{{ url($subcategory['url']) }}">{{ $subcategory['category_name'] }}</a>
                                                                </li>
                                                                @endforeach
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </li>
                                    @endif
                                    @endforeach


                                    <li>
                                        <a class="v-more">
                                            <i class="ion ion-md-add"></i>
                                            <span>View More</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
































                 <div class="col-lg-9 " style="backgrou">
                    <ul class="bottom-nav g-nav u-d-none-lg">
                        <li>
                            <a href="listing-without-filters.html" >New Arrivals
                                <span class="superscript-label-new">NEW</span>
                            </a>
                        </li>
                        <li>
                            <a href="listing-without-filters.html" >Best Seller
                                <span class="superscript-label-hot">HOT</span>
                            </a>
                        </li>
                        <li>
                            <a href="listing-without-filters.html" >Featured
                            </a>
                        </li>
                        <li>
                            <a href="listing-without-filters.html" >Discounted
                                <span class="superscript-label-discount">-30%</span>
                            </a>
                        </li>
                        <li class="mega-position">
                            <a >More
                                <i class="fas fa-chevron-down u-s-m-l-9"></i>
                            </a>
                            <div class="mega-menu mega-3-colm">
                                <ul>
                                    <li class="menu-title">COMPANY</li>
                                    <li>
                                        <a href="about.html" class="u-c-brand">About Us</a>
                                    </li>
                                    <li>
                                        <a href="contact.html">Contact Us</a>
                                    </li>
                                    <li>
                                        <a href="faq.html">FAQ</a>
                                    </li>
                                </ul>
                                <ul>
                                    <li class="menu-title">COLLECTION</li>
                                    <li>
                                        <a href="cart.html">Men Clothing</a>
                                    </li>
                                    <li>
                                        <a href="checkout.html">Women Clothing</a>
                                    </li>
                                    <li>
                                        <a href="account.html">Kids Clothing</a>
                                    </li>
                                </ul>
                                <ul>
                                    <li class="menu-title">ACCOUNT</li>
                                    <li>
                                        <a href="shop-v1-root-category.html">My Account</a>
                                    </li>
                                    <li>
                                        <a href="shop-v1-root-category.html">My Profile</a>
                                    </li>
                                    <li>
                                        <a href="listing.html">My Orders</a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div> 

                 <!-- <div class="menu-slider-wrapper col-lg-9">
                  <div class="menu-style-3 menu-hover text-center">
                    <nav>
                        <ul class="bottom-nav g-nav u-d-none-lg">
                            <li><a href="index.html">Home <i class="pe-7s-angle-down"></i> <span class="sticker-new">hot</span></a>
                                <ul class="single-dropdown">
                                    <li><a href="index.html">Fashion</a></li>
                                    <li><a href="index-fashion-2.html">Fashion style 2</a></li>
                                </ul>
                            </li>
                            <li><a href="#">pages </a>
                                <ul class="single-dropdown">
                                    <li><a href="about-us.html">About us</a></li>
                                    <li><a href="contact.html">contact</a></li>
                                </ul>
                            </li>
                            <li><a href="shop.html">shop <i class="pe-7s-angle-down"></i> <span class="sticker-new">hot</span></a>
                                <div class="category-menu-dropdown shop-menu">
                                    <div class="category-dropdown-style category-common2 mb-30">
                                        <h4 class="categories-subtitle"> shop layout</h4>
                                        <ul>
                                            <li><a href="shop-grid-2-col.html"> grid 2 column</a></li>
                                            <li><a href="wishlist.html">wishlist</a></li>
                                        </ul>
                                    </div>
                                    <div class="category-dropdown-style category-common2 mb-30">
                                        <h4 class="categories-subtitle"> product details</h4>
                                        <ul>
                                            <li><a href="product-details-8.html">fixed image style</a></li>
                                            <li><a href="product-details-9.html">fixed image style 2</a></li>
                                        </ul>
                                    </div>
                                    <div class="mega-banner-img">
                                        <a href="single-product.html">
                                            <img src="assets/img/banner/18.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                            </li>
                            <li><a href="blog.html">blog <i class="pe-7s-angle-down"></i> <span class="sticker-new">hot</span></a>
                                <ul class="single-dropdown">
                                    <li><a href="blog-details-sidebar.html">blog details 2</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.html">contact</a></li>
                        </ul>
                    </nav>
                </div> -->

                <!-- <div class="slider-area">
                    <div class="slider-active owl-carousel">
                        <div class="single-slider single-slider-hm3 bg-img pt-170 pb-173" style="background-image: url(front/images/banner_images/fruitage.png)">
                            <div class="slider-animation slider-content-style-3 fadeinup-animated">
                                 <a class="electro-slider-btn btn-hover" href="product-details.html">buy now</a> 
                            </div>
                        </div>
                        <div class="single-slider single-slider-hm3 bg-img pt-170 pb-173" style="background-image: url(front/images/banner_images/fruitage1.png)">
                            <div class="slider-animation slider-content-style-3 fadeinup-animated">
                                <a class="electro-slider-btn btn-hover" href="product-details.html">buy now</a> -->
                            <!-- </div> -->
                        <!-- </div> -->
                    <!-- </div> -->
                <!-- </div>   --> 
              </div> 

            </div>
        </div>
    </div>
    <!-- Bottom-Header /- -->
</header>
<!-- Header /- -->