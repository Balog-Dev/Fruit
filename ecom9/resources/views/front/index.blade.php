<?php use App\Models\Product; ?>
@extends('front.layout.layout')
@section('content')

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <!-- <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li>
                        </ul>
                    </div> -->
                </div>
                <div class="col-lg-9">
                    <!-- <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div> -->
                    <div class="hero__item set-bg" style="background-image: url(front/images/banner_images/banner.jpg)">
                        <div class="hero__text">
                            <span>FRUIT FRESH</span>
                            <h2>Vegetable <br />100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="#" class="btn btn-success">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->





        <!-- Categories Section Begin -->
        <section class="categories mb-5">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-1.jpg" style="background-image: url(front/images/banner_images/cat-1.jpg)">
                            <h5><a href="#">Orange Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-2.jpg"  style="background-image: url(front/images/banner_images/cat-2.jpg)">
                            <h5><a href="#">Dried Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-3.jpg"  style="background-image: url(front/images/banner_images/cat-3.jpg)">
                            <h5><a href="#">Vegetables</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-4.jpg" style="background-image: url(front/images/banner_images/cat-4.jpg)">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg"  style="background-image: url(front/images/banner_images/cat-5.jpg)">
                            <h5><a href="#">Cow Meat</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

<!-- Main-Slider -->
<!-- <div class="default-height ph-item">
    <div class="slider-main owl-carousel">
        @foreach($sliderBanners as $banner)
        <div class="bg-image">
            <div class="slide-content">
               <h1><a @if(!empty($banner['link'])) href="{{ url($banner['link']) }}" @else href="javascript:;" @endif><img title="{{ $banner['title'] }}" alt="{{ $banner['title'] }}" src="{{ asset('front/images/banner_images'.$banner['image']) }}"></a></h1>
                <h2>{{ $banner['title'] }}</h2> 
            </div>
        </div>
        @endforeach
    </div>
</div>  -->
<!-- Main-Slider /- -->
@if(isset($fixBanners[0]['image']))
<!-- Banner-Layer -->
<!-- <div class="banner-layer">
    <div class="container-fluid">
        <div class="image-banner">
            <a target="_blank" rel="nofollow" href="{{ url($fixBanners[0]['link']) }}" class="mx-auto banner-hover effect-dark-opacity">
                <img class="img-fluid" src="{{ asset('front/images/banner_images'.$fixBanners[0]['image']) }}" alt="{{ $fixBanners[0]['alt'] }}" title="{{ $fixBanners[0]['title'] }}">
            </a>
        </div>
    </div>
</div>  -->
 
<!-- Banner-Layer /- -->
 <header>
@endif



<!-- Top Collection -->

<section class="section-maker">
    <div class="container">
        <div class="sec-maker-header text-center">
            <h3 class="sec-maker-h3">Featured Product</h3>
            <ul class="nav tab-nav-style-1-a justify-content-center">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#product1-latest-products">New Arrivals</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#product2-best-selling-products">Best Sellers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#discounted-products">Discounted Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#product3-featured-products">Featured Products</a>
                </li>
            </ul>
        </div> 



        <div class="wrapper-content">
            <div class="outer-area-tab">
                <div class="tab-content">
                    <div class="tab-pane active show fade" id="product1-latest-products">
                        <div class="slider-fouc">
                            <div class="products-slider owl-carousel" data-item="7">
                                @foreach($newProducts as $product)
                                <?php // echo "<pre>"; print_r($product); die; ?>
                                <?php $product_image_path = 'front/images/product_images/small/'.$product['product_image']; ?>
                                <div class="item bg-light ">
                                    <div class="image-container p-2 bg-light">
                                        <a class="item-img-wrapper-link" href="{{ url('product/'.$product['id']) }}">
                                            @if(!empty($product['product_image']) && file_exists($product_image_path))
                                            <img class="img-fluid" src="{{ asset($product_image_path) }}" alt="Product">
                                            @else
                                            <img class="img-fluid" src="{{ asset('front/images/product_images/small/no-image.png') }}" alt="Product">
                                            @endif
                                        </a>
                                        <div class="item-action-behaviors">
                                            <a class="item-quick-look" data-toggle="modal" href="#quick-view">Quick Look
                                            </a>
                                            <a class="item-mail" href="javascript:void(0)">Mail</a>
                                            <a class="item-addwishlist" href="javascript:void(0)">Add to Wishlist</a>
                                            <a class="item-addCart" href="javascript:void(0)">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="item-content">
                                        <div class="what-product-is">
                                            <ul class="bread-crumb">
                                                <li>
                                                    <a href="{{ url('product/'.$product['id']) }}">{{ $product['product_code'] }}</a>
                                                </li>
                                            </ul>
                                            <h6 class="item-title">
                                                <a href="{{ url('product/'.$product['id']) }}">{{ $product['product_name'] }}</a>
                                            </h6>
                                            <div class="item-stars">
                                                <div class='star' title="0 out of 5 - based on 0 Reviews">
                                                    <span style='width:0'></span>
                                                </div>
                                                <span>(0)</span>
                                            </div>
                                        </div>
                                        <?php $getDiscountPrice = Product::getDiscountPrice($product['id']); ?>
                                        @if($getDiscountPrice>0)
                                        <div class="price-template">
                                            <div class="item-new-price">
                                                #.{{ $getDiscountPrice }}
                                            </div>
                                            <div class="item-old-price">
                                                #.{{ $product['product_price'] }}
                                            </div>
                                        </div>
                                        @else
                                        <div class="price-template">
                                            <div class="item-new-price">
                                                #.{{ $product['product_price'] }}
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                    <div class="tag new">
                                        <span>NEW</span>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane show fade" id="product2-best-selling-products">
                        <div class="slider-fouc">
                            <div class="products-slider owl-carousel" data-item="7">
                                @foreach($bestSellers as $product)
                                <?php // echo "<pre>"; print_r($product); die; ?>
                                <?php $product_image_path = 'front/images/product_images/small/'.$product['product_image']; ?>
                                <div class="item bg-light">
                                    <div class="image-container p-2 bg-light">
                                        <a class="item-img-wrapper-link" href="{{ url('product/'.$product['id']) }}">
                                            @if(!empty($product['product_image']) && file_exists($product_image_path))
                                            <img class="img-fluid" src="{{ asset($product_image_path) }}" alt="Product">
                                            @else
                                            <img class="img-fluid" src="{{ asset('front/images/product_images/small/no-image.png') }}" alt="Product">
                                            @endif
                                        </a>
                                        <div class="item-action-behaviors">
                                            <a class="item-quick-look" data-toggle="modal" href="#quick-view">Quick Look
                                            </a>
                                            <a class="item-mail" href="javascript:void(0)">Mail</a>
                                            <a class="item-addwishlist" href="javascript:void(0)">Add to Wishlist</a>
                                            <a class="item-addCart" href="javascript:void(0)">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="item-content">
                                        <div class="what-product-is">
                                            <ul class="bread-crumb">
                                                <li>
                                                    <a href="{{ url('product/'.$product['id']) }}">{{ $product['product_code'] }}</a>
                                                </li>
                                            </ul>
                                            <h6 class="item-title">
                                                <a href="{{ url('product/'.$product['id']) }}">{{ $product['product_name'] }}</a>
                                            </h6>
                                            <div class="item-stars">
                                                <div class='star' title="0 out of 5 - based on 0 Reviews">
                                                    <span style='width:0'></span>
                                                </div>
                                                <span>(0)</span>
                                            </div>
                                        </div>
                                        <?php $getDiscountPrice = Product::getDiscountPrice($product['id']); ?>
                                        @if($getDiscountPrice>0)
                                        <div class="price-template">
                                            <div class="item-new-price">
                                                #.{{ $getDiscountPrice }}
                                            </div>
                                            <div class="item-old-price">
                                                #.{{ $product['product_price'] }}
                                            </div>
                                        </div>
                                        @else
                                        <div class="price-template">
                                            <div class="item-new-price">
                                                #.{{ $product['product_price'] }}
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                    <div class="tag new">
                                        <span>NEW</span>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="discounted-products">
                        <div class="slider-fouc">
                            <div class="products-slider owl-carousel" data-item="7">
                                @foreach($discountedProducts as $product)
                                <?php // echo "<pre>"; print_r($product); die; ?>
                                <?php $product_image_path = 'front/images/product_images/small/'.$product['product_image']; ?>
                                <div class="item bg-light">
                                    <div class="image-container p-2 bg-light">
                                        <a class="item-img-wrapper-link" href="{{ url('product/'.$product['id']) }}">
                                            @if(!empty($product['product_image']) && file_exists($product_image_path))
                                            <img class="img-fluid" src="{{ asset($product_image_path) }}" alt="Product">
                                            @else
                                            <img class="img-fluid" src="{{ asset('front/images/product_images/small/no-image.png') }}" alt="Product">
                                            @endif
                                        </a>
                                        <div class="item-action-behaviors">
                                            <a class="item-quick-look" data-toggle="modal" href="#quick-view">Quick Look
                                            </a>
                                            <a class="item-mail" href="javascript:void(0)">Mail</a>
                                            <a class="item-addwishlist" href="javascript:void(0)">Add to Wishlist</a>
                                            <a class="item-addCart" href="javascript:void(0)">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="item-content">
                                        <div class="what-product-is">
                                            <ul class="bread-crumb">
                                                <li>
                                                    <a href="{{ url('product/'.$product['id']) }}">{{ $product['product_code'] }}</a>
                                                </li>
                                            </ul>
                                            <h6 class="item-title">
                                                <a href="{{ url('product/'.$product['id']) }}">{{ $product['product_name'] }}</a>
                                            </h6>
                                            <div class="item-stars">
                                                <div class='star' title="0 out of 5 - based on 0 Reviews">
                                                    <span style='width:0'></span>
                                                </div>
                                                <span>(0)</span>
                                            </div>
                                        </div>
                                        <?php $getDiscountPrice = Product::getDiscountPrice($product['id']); ?>
                                        @if($getDiscountPrice>0)
                                        <div class="price-template">
                                            <div class="item-new-price">
                                               #.{{ $getDiscountPrice }}
                                            </div>
                                            <div class="item-old-price">
                                               #.{{ $product['product_price'] }}
                                            </div>
                                        </div>
                                        @else
                                        <div class="price-template">
                                            <div class="item-new-price">
                                               #.{{ $product['product_price'] }}
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                    <div class="tag new">
                                        <span>NEW</span>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="product3-featured-products">
                        <div class="slider-fouc">
                            <div class="products-slider owl-carousel" data-item="7">
                            @foreach($featuredProducts as $product)
                                <?php // echo "<pre>"; print_r($product); die; ?>
                                <?php $product_image_path = 'front/images/product_images/small/'.$product['product_image']; ?>
                                <div class="item bg-light">
                                    <div class="image-container p-2 bg-light">
                                        <a class="item-img-wrapper-link" href="{{ url('product/'.$product['id']) }}">
                                            @if(!empty($product['product_image']) && file_exists($product_image_path))
                                            <img class="img-fluid" src="{{ asset($product_image_path) }}" alt="Product">
                                            @else
                                            <img class="img-fluid" src="{{ asset('front/images/product_images/small/no-image.png') }}" alt="Product">
                                            @endif
                                        </a>
                                        <div class="item-action-behaviors">
                                            <a class="item-quick-look" data-toggle="modal" href="#quick-view">Quick Look
                                            </a>
                                            <a class="item-mail" href="javascript:void(0)">Mail</a>
                                            <a class="item-addwishlist" href="javascript:void(0)">Add to Wishlist</a>
                                            <a class="item-addCart" href="javascript:void(0)">Add to Cart</a>
                                        </div>
                                    </div>
                                    <div class="item-content">
                                        <div class="what-product-is">
                                            <ul class="bread-crumb">
                                                <li>
                                                    <a href="{{ url('product/'.$product['id']) }}">{{ $product['product_code'] }}</a>
                                                </li>
                                            </ul>
                                            <h6 class="item-title">
                                                <a href="{{ url('product/'.$product['id']) }}">{{ $product['product_name'] }}</a>
                                            </h6>
                                            <div class="item-stars">
                                                <div class='star' title="0 out of 5 - based on 0 Reviews">
                                                    <span style='width:0'></span>
                                                </div>
                                                <span>(0)</span>
                                            </div>
                                        </div>
                                        <?php $getDiscountPrice = Product::getDiscountPrice($product['id']); ?>
                                        @if($getDiscountPrice>0)
                                        <div class="price-template">
                                            <div class="item-new-price">
                                                #.{{ $getDiscountPrice }}
                                            </div>
                                            <div class="item-old-price">
                                                #.{{ $product['product_price'] }}
                                            </div>
                                        </div>
                                        @else
                                        <div class="price-template">
                                            <div class="item-new-price">
                                                #.{{ $product['product_price'] }}
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                    <div class="tag new">
                                        <span>NEW</span>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Top Collection /- -->
@if(isset($fixBanners[1]['image']))
<!-- Banner-Layer -->
<div class="banner-layer">
    <div class="container">
        <div class="image-banner">
            <a target="_blank" rel="nofollow" href="{{ url($fixBanners[1]['link']) }}" class="mx-auto banner-hover effect-dark-opacity">
                <img class="img-fluid" src="{{ asset('front/images/banner_images/'.$fixBanners[1]['image']) }}" alt="{{ $fixBanners[1]['alt'] }}" title="{{ $fixBanners[1]['title'] }}">
            </a>
        </div>
    </div>
</div>
<!-- Banner-Layer /- -->
@endif
<!-- Site-Priorities -->

<section class="app-priority">
    <div class="container">
        <div class="priority-wrapper u-s-p-b-80">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="single-item-wrapper">
                        <div class="single-item-icon">
                            <i class="ion ion-md-star"></i>
                        </div>
                        <h2>
                            Great Value
                        </h2>
                        <p>We offer competitive prices on our 100 million plus product range</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="single-item-wrapper">
                        <div class="single-item-icon">
                            <i class="ion ion-md-cash"></i>
                        </div>
                        <h2>
                            Shop with Confidence
                        </h2>
                        <p>Our Protection covers your purchase from click to delivery</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="single-item-wrapper">
                        <div class="single-item-icon">
                            <i class="ion ion-ios-card"></i>
                        </div>
                        <h2>
                            Safe Payment
                        </h2>
                        <p>Pay with the world’s most popular and secure payment methods</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <div class="single-item-wrapper">
                        <div class="single-item-icon">
                            <i class="ion ion-md-contacts"></i>
                        </div>
                        <h2>
                            24/7 Help Center
                        </h2>
                        <p>Round-the-clock assistance for a smooth shopping experience</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Site-Priorities /- -->
@endsection