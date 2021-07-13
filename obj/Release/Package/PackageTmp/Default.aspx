<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FlowerShopFinal_v._02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

		<!-- slider-area start -->
		<section class="slider-area">
			<!-- slider start -->
			<div class="slider">
				<div id="mainSlider" class="nivoSlider nevo-slider">
					<img src="/Content/img/slider/slider-1.jpg" alt="main slider" title="#htmlcaption1"/>
					<img src="/Content/img/slider/slider-2.jpg" alt="main slider" title="#htmlcaption2"/>
				</div>		
				<div id="htmlcaption1" class="nivo-html-caption slider-caption">
					<div class="slider-progress"></div>
					<div class="slider-text">
						<div class="middle-text">
							<div class="width-cap">
								<h3 class="slider-tiile-top top-ani-1" style="font-size: 60px;"><span>Flower For your</span></h3>
								<h2 class="slider-tiile-middle middle-ani-1"><span>Special</span></h2>
								<div class="slider-readmore">
									<a runat="server" href="~/ContactUs">Contact</a>
								</div>
								<div class="slider-shopping">
									<a href="/404">Shopping Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="htmlcaption2" class="nivo-html-caption slider-caption">
					<div class="slider-progress"></div>
					<div class="slider-text">
						<div class="middle-text">
							<div class="width-cap">
								<h3 class="slider2-tiile-top top-ani-2"><span>The Bigest Selection Of Fresh Flowers</span></h3>
								<h2 class="slider2-tiile-middle middle-ani-2"><span>Fresh Tulips</span></h2>
								<div class="slider2-readmore">
									<a href="/404">Contact</a>
								</div>	
								<div class="slider2-shop">
									<a href="/404">Shopping Now</a>
								</div>								
							</div>
						</div>
					</div>					
				</div>
			</div>
			<!-- slider end -->
		</section>
		<!-- slider-area end -->
<!-- slider-area end -->
<!--Start Lateast Collection Top area -->
<div class="body_top_area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="single_image">
                    <a href="/404"><img class="banner_home1" src="/Content/img/collection-image/banner-1.jpg" alt="" /></a>
                    <div class="banner_text">
                        <h2><a href="/404">Birthday Bouguets</a></h2>
                    </div>
                    <div class="shop_collection">
                        <a href="/404">Shop the Collection <span><img src="/Content/img/arrow/bkg_newsletter.png" alt="" /></span></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="single_image">
                    <a href="/404"><img class="banner_home1" src="/Content/img/collection-image/banner-2.jpg" alt="" /></a>
                    <div class="banner_text">
                        <h2><a href="/404">Wedding Flower</a></h2>
                    </div>
                    <div class="shop_collection">
                        <a href="/404">Shop the Collection <span><img src="/Content/img/arrow/bkg_newsletter.png" alt="" /></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Lateast Collection Top area -->
<!--Start Lateast Collection bottom area -->
<div class="banner_area">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="single_image">
                    <a href="/404"><img class="banner_home1" src="/Content/img/collection-image/banner-11.jpg" alt="" /></a>
                    <div class="banner_text">
                        <h3><a href="/404">Love & Romance</a></h3>
                    </div>
                    <div class="shop_collection">
                        <a href="/404">Shop the Collection <span><img src="/Content/img/arrow/bkg_newsletter.png" alt="" /></span></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="single_image">
                    <a href="/404"><img class="banner_home1" src="/Content/img/collection-image/banner-12.jpg" alt="" /></a>
                    <div class="banner_text">
                        <h3><a href="/404">Valentine Day Flower</a></h3>
                    </div>
                    <div class="shop_collection">
                        <a href="/404">Shop the Collection <span><img src="/Content/img/arrow/bkg_newsletter.png" alt="" /></span></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="single_image">
                    <a href="/404"><img class="banner_home1" src="/Content/img/collection-image/banner-13.jpg" alt="" /></a>
                    <div class="banner_text">
                        <h3><a href="/404">Sale up to 20% off</a></h3>
                    </div>
                    <div class="shop_collection">
                        <a href="/404">Shop the Collection <span><img src="/Content/img/arrow/bkg_newsletter.png" alt="" /></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Lateast Collection bottom area -->
<!--Start Feature area -->
<div class="feature_area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="feature_text">
                    <h4>Featured Product</h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="product_list">
                    <div class="single_product">
                        <a href="/404" target="main"><img src="/Content/img/product/pr1.png" alt="" /></a>
                        <div class="product_details">
                            <h2>Beauty Calla Lily Bouquety</h2>
                            <p><span class="regular_price">$10.00</span> <span class="popular_price">$6.00</span></p>
                        </div>
                        <div class="product_detail">
                            <div class="star_icon">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                            <div class="product_button">
                                <div class="cart_details">
                                    <a href="cart.html" target="blank">Add to cart</a>
                                </div>
                                <div class="cart_details">
                                    <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                </div>
                                <div class="cart_details">
                                    <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="sale_product">
                            <h5>Sale</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="product_list">
                    <div class="single_product">
                        <a href="/404" target="main"><img src="/Content/img/product/pr2.png" alt="" /></a>
                        <div class="product_details">
                            <h2>Because You're Special Bouquet</h2>
                            <p><span class="popular_price">$10.00</span></p>
                        </div>
                        <div class="product_detail">
                            <div class="star_icon">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                            <div class="product_button">
                                <div class="cart_details">
                                    <a href="cart.html" target="blank">Add to cart</a>
                                </div>
                                <div class="cart_details">
                                    <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                </div>
                                <div class="cart_details">
                                    <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="product_list">
                    <div class="single_product">
                        <a href="/404" target="main"><img src="/Content/img/product/pr3.png" alt="" /></a>
                        <div class="product_details">
                            <h2>Cheerful Wishes Blooming Basket</h2>
                            <p><span class="popular_price">$11.00</span></p>
                        </div>
                        <div class="product_detail">
                            <div class="star_icon">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                            <div class="product_button">
                                <div class="cart_details">
                                    <a href="cart.html" target="blank">Add to cart</a>
                                </div>
                                <div class="cart_details">
                                    <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                </div>
                                <div class="cart_details">
                                    <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="product_list">
                    <div class="single_product">
                        <a href="/404" target="main"><img src="/Content/img/product/pr4.png" alt="" /></a>
                        <div class="product_details">
                            <h2>Breathtaking Beauty Bouquet</h2>
                            <p><span class="regular_price">$17.00</span> <span class="popular_price">$15.00</span></p>
                        </div>
                        <div class="product_detail">
                            <div class="star_icon">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                            </div>
                            <div class="product_button">
                                <div class="cart_details">
                                    <a href="Cart.html" target="blank">Add to cart</a>
                                </div>
                                <div class="cart_details">
                                    <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                </div>
                                <div class="cart_details">
                                    <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="sale_product">
                            <h5>Sale</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="product_bottom_area">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="product_list">
                        <div class="single_product">
                            <a href="/404" target="main"><img src="/Content/img/product/pr5.png" alt="" /></a>
                            <div class="product_details">
                                <h2>Traditional Sympathy Basket</h2>
                                <p><span class="regular_price">$170.00</span> <span class="popular_price">$150.00</span></p>
                            </div>
                            <div class="product_detail">
                                <div class="star_icon">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="product_button">
                                    <div class="cart_details">
                                        <a href="#" target="blank">Add to cart</a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="sale_product">
                                <h5>Sale</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="product_list">
                        <div class="single_product">
                            <a href="/404" target="main"><img src="/Content/img/product/pr6.png" alt="" /></a>
                            <div class="product_details">
                                <h2>New Baby Boy Bouquet</h2>
                                <p><span class="popular_price">$15.00</span></p>
                            </div>
                            <div class="product_detail">
                                <div class="star_icon">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="product_button">
                                    <div class="cart_details">
                                        <a href="cart.html" target="blank">Add to cart</a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="product_list">
                        <div class="single_product">
                            <a href="/404" target="main"><img src="/Content/img/product/pr7.png" alt="" /></a>
                            <div class="product_details">
                                <h2>Lily Rose Funeral Bouquet</h2>
                                <p> <span class="popular_price">$13.00</span></p>
                            </div>
                            <div class="product_detail">
                                <div class="star_icon">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="product_button">
                                    <div class="cart_details">
                                        <a href="cart.html" target="blank">Add to cart</a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="product_list">
                        <div class="single_product">
                            <a href="/404" target="main"><img src="/Content/img/product/pr8.png" alt="" /></a>
                            <div class="product_details">
                                <h2>Lorem ipsum dolor</h2>
                                <p><span class="regular_price">$170.00</span> <span class="popular_price">$150.00</span></p>
                            </div>
                            <div class="product_detail">
                                <div class="star_icon">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="product_button">
                                    <div class="cart_details">
                                        <a href="#" target="blank">Add to cart</a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="sale_product">
                                <h5>Sale</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="product_bottom_area">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="product_list">
                        <div class="single_product">
                            <a href="/404" target="main"><img src="/Content/img/product/pr9.png" alt="" /></a>
                            <div class="product_details">
                                <h2>Teleflora's Morning Melody</h2>
                                <p><span class="regular_price">$10.00</span> <span class="popular_price">$8.00</span></p>
                            </div>
                            <div class="product_detail">
                                <div class="star_icon">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="product_button">
                                    <div class="cart_details">
                                        <a href="cart.html" target="blank">Add to cart</a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="sale_product">
                                <h5>Sale</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="product_list">
                        <div class="single_product">
                            <a href="/404" target="main"><img src="/Content/img/product/pr10.png" alt="" /></a>
                            <div class="product_details">
                                <h2>Pink Stargazer Lily Bouquet </h2>
                                <p><span class="popular_price">$150.00</span></p>
                            </div>
                            <div class="product_detail">
                                <div class="star_icon">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="product_button">
                                    <div class="cart_details">
                                        <a href="cart.html" target="blank">Add to cart</a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="product_list">
                        <div class="single_product">
                            <a href="/404" target="main"><img src="/Content/img/product/pr11.png" alt="" /></a>
                            <div class="product_details">
                                <h2>Red White And You Bouquet </h2>
                                <p><span class="popular_price">$7.00</span></p>
                            </div>
                            <div class="product_detail">
                                <div class="star_icon">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="product_button">
                                    <div class="cart_details">
                                        <a href="cart.html" target="blank">Add to cart</a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <div class="product_list">
                        <div class="single_product">
                            <a href="/404" target="main"><img src="/Content/img/product/pr12.png" alt="" /></a>
                            <div class="product_details">
                                <h2>Teleflora's Enchanted Cottage</h2>
                                <p><span class="regular_price">$13.00</span> <span class="popular_price">$10.00</span></p>
                            </div>
                            <div class="product_detail">
                                <div class="star_icon">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                </div>
                                <div class="product_button">
                                    <div class="cart_details">
                                        <a href="cart.html" target="blank">Add to cart</a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="expand"><i class="fa fa-expand"></i></a>
                                    </div>
                                    <div class="cart_details">
                                        <a href="#" target="heart"><i class="fa fa-heart-o"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="sale_product">
                                <h5>Sale</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Feature area -->

<!--Start Blog area -->
<div class="blog_post_area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="feature_text">
                    <h4>Blog Post</h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="carousel_blog_list">
                <div class="col-lg-3">
                    <div class="single_blog">
                        <a href="/404"><img src="/Content/img/blog-post-image/cl-1.jpg" alt="" /></a>
                        <div class="blog_details">
                            <a href="/404">Aliquam Erat Volutpat</a>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam...</p>
                            <h3>18 Aug 2015</h3>
                            <a href="/404">
                                <div class="read_more">
                                    <i class="fa fa-angle-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="single_blog">
                        <a href="/404"><img src="/Content/img/blog-post-image/cl-2.jpg" alt="" /></a>
                        <div class="blog_details">
                            <a href="/404">Mauris Posuere</a>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam...</p>
                            <h3>18 Aug 2015</h3>
                            <a href="/404">
                                <div class="read_more">
                                    <i class="fa fa-angle-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="single_blog">
                        <a href="/404"><img src="/Content/img/blog-post-image/cl-3.jpg" alt="" /></a>
                        <div class="blog_details">
                            <a href="/404">Donec Tempor Libero</a>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam...</p>
                            <h3>18 Aug 2015</h3>
                            <a href="/404">
                                <div class="read_more">
                                    <i class="fa fa-angle-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="single_blog">
                        <a href="/404"><img src="/Content/img/blog-post-image/cl-4.jpg" alt="" /></a>
                        <div class="blog_details">
                            <a href="/404">Etiam Dictum Egestas</a>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam...</p>
                            <h3>18 Aug 2015</h3>
                            <a href="/404">
                                <div class="read_more">
                                    <i class="fa fa-angle-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="single_blog">
                        <a href="/404"><img src="/Content/img/blog-post-image/cl-3.jpg" alt="" /></a>
                        <div class="blog_details">
                            <a href="/404">Phasellus Fringilla</a>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam...</p>
                            <h3>18 Aug 2015</h3>
                            <a href="/404">
                                <div class="read_more">
                                    <i class="fa fa-angle-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="single_blog">
                        <a href="/404"><img src="/Content/img/blog-post-image/cl-1.jpg" alt="" /></a>
                        <div class="blog_details">
                            <a href="/404">William Eto</a>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam...</p>
                            <h3>18 Aug 2015</h3>
                            <a href="/404">
                                <div class="read_more">
                                    <i class="fa fa-angle-right"></i>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End blog area -->
<!--Start Contact info area -->
<div class="service_info_area">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="service_list">
                    <h2><i class="fa fa-envelope-o"></i> info@yourcompany.com</h2>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="service_list">
                    <h3><i class="fa fa-phone"></i> (+1223) 334 3434</h3>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="Social_list">
                    <h2>Connect us: </h2>
                    <div class="social_icon my-class uk-scrollspy-init-inview uk-invisible">
                        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Like 6k" class="red-tooltip" href="/404"><i class="fa fa-facebook"></i></a>
                        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Followers 61k" class="red-tooltip" href="/404"><i class="fa fa-twitter"></i></a>
                        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Followers 16k" class="red-tooltip" href="/404"><i class="fa fa-linkedin"></i></a>
                        <a data-toggle="tooltip" data-placement="top" title="" data-original-title="Followers 10k" class="red-tooltip" href="/404"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Contact info area -->
<!--Start Branding area -->
<div class="branding_area">
    <div class="container">
        <div class="row">
            <div class="carousel_branding">
                <div class="col-lg-2">
                    <div class="single_branding">
                        <a href="/404"><img src="/Content/img/branding-image/brand1.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="single_branding">
                        <a href="/404"><img src="/Content/img/branding-image/brand2.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="single_branding">
                        <a href="/404"><img src="/Content/img/branding-image/brand3.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="single_branding">
                        <a href="/404"><img src="/Content/img/branding-image/brand4.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="single_branding">
                        <a href="/404"><img src="/Content/img/branding-image/brand1.jpg" alt="" /></a>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="single_branding">
                        <a href="/404"><img src="/Content/img/branding-image/brand2.jpg" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Branding area -->

</asp:Content>
