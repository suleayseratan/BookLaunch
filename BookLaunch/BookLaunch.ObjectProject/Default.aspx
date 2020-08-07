<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BookLaunch.ObjectProject.Default" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Sule's Web Project/css/mystyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="slider" runat="server">
    <div class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
        <!-- Start Single Slide -->
        <div class="slide animation__style10 bg-image--Sule fullscreen align__center--left">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="slider__content">
                            <div class="contentbox">
                                <h2>Look <span>your </span></h2>
                                <h2>favourite <span>book </span></h2>
                                <h2>from <span>here </span></h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Single Slide -->
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
<!-- Start Best Seller Area -->
		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2">Newly <span class="color--theme">Added</span> Books</h2>
                        </div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<!-- Start Single Product -->
					<asp:Repeater ID="rptNewlyAdded" runat="server">
                        <ItemTemplate>
					        <div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="SingleBook.aspx?bookId=<%#Eval("Id") %>"><img src="<%#Eval("Image") %>" alt="product image"></a>
                            </div>
							<div class="product__content content--center">
								<h4><a href="SingleBook.aspx?bookId=<%#Eval("Id") %>"><%#Eval("BookName") %></a></h4>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="compare" href="ReadingList.aspx"><i class="bi bi-heart-beat"></i></a></li>
											<li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
                        </ItemTemplate>
                    </asp:Repeater>
				</div>
            </div>
		</section>
		<!-- Start BEst Seller Area -->
		<!-- Start NEwsletter Area -->
		<section class="wn__newsletter__area bg-image--2">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 offset-lg-5 col-md-12 col-12 ptb--150">
						<div class="section__title text-center">
							<h2>Alıntılar</h2>
						</div>
						<div class="newsletter__block text-center">
							Buraya alıntılar gelicek
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End NEwsletter Area -->
		<!-- Start Best Seller Area -->
		<section class="wn__bestseller__area bg--white pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center">
							<h2 class="title__be--2">Chosen <span class="color--theme">For</span> You</h2>
                        </div>
					</div>
				</div>
				<div class="row mt--50">
					<div class="col-md-12 col-lg-12 col-sm-12">
						<div class="product__nav nav justify-content-center" role="tablist">
							
						</div>
					</div>
				</div>

				<div class="tab__container mt--60">
					<!-- Start Single Tab Content -->
					<div class="row single__tab tab-pane fade show active" id="nav-all" role="tabpanel">
                        
						<div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                            <asp:Repeater runat="server" ID="rptRandomBook">
                                <ItemTemplate>
							        <div class="single__product">
								        <!-- Start Single Product -->
                                        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
									                <div class="product product__style--3">
										                <div class="product__thumb">
											                <a class="first__img" href="SingleBook.aspx?bookId=<%#Eval("Id") %>"><img src="<%#Eval("Image") %>" alt="product image"></a>
                                                        </div>
										                <div class="product__content content--center content--center">
											                <h4><a href="SingleBook.aspx?bookId=<%#Eval("Id") %>"><%#Eval("BookName") %></a></h4>
											                <div class="action">
												                <div class="actions_inner">
													                <ul class="add_to_links">
														                <li><a class="compare" href="ReadingList.aspx"><i class="bi bi-heart-beat"></i></a></li>
														                <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
													                </ul>
												                </div>
											                </div>
										                </div>
									                </div>
								                </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                            
					<!-- End Single Tab Content -->

                </div>
			</div>
		</section>
		<!-- Start BEst Seller Area -->
		<!-- Start Recent Post Area -->
		<!-- End Recent Post Area -->
		<!-- Best Sale Area -->
		<section class="best-seel-area pt--80 pb--60">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title text-center pb--50">
							<h2 class="title__be--2">Favourite <span class="color--theme">Authors </span></h2>
                        </div>
					</div>
				</div>
			</div>
			<div class="slider center">
				<!-- Single product start -->
				<asp:Repeater ID="rptFavouriteAuthors" runat="server">
					<ItemTemplate>
				<div class="product product__style--3">
					<div class="product__thumb">
                        <a class="first__img" href="AuthorDetails.aspx?authorId=<%#Eval("AuthorId") %>"><img src="<%#Eval("Image") %>" 
                                                                                                             alt="product image" style="width: 250px; height: 300px; "></a>
                    </div>
					<div class="product__content content--center">
                        <div class="product__hover--content">
                            <h6><a href="AuthorDetails.aspx?authorId=<%#Eval("AuthorId") %>"> <%#Eval("AuthorName") %></a></h6>
                        </div>
                    </div>
				</div>
                    </ItemTemplate>
                </asp:Repeater>
                <!-- Single product end -->
            </div>
		</section>
		<!-- Best Sale Area Area -->
	<!-- QUICKVIEW PRODUCT -->

		<div id="quickview-wrapper">
			<!-- Modal -->
			
            <asp:Repeater ID="rptQuickview" runat="server">
            <ItemTemplate>
                <div class="modal fade" id="productmodal?id=1018" tabindex="-1" role="dialog">
				<div class="modal-dialog modal__container" role="document">
					<div class="modal-content">
						<div class="modal-header modal__header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<div class="modal-product">
								<!-- Start product images -->
								<div class="product-images">
									<div class="main-image images">
										<img alt="big images" src="<%#Eval("Image") %>">
									</div>
								</div>
								<!-- end product images -->
								<div class="product-info">
									<h1>Simple Fabric Bags</h1>
									<div class="rating__and__review">
										<ul class="rating">
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
										</ul>
										<div class="review">
											<a href="#">4 customer reviews</a>
										</div>
									</div>
									<div class="price-box-3">
										<div class="s-price-box">
											<span class="new-price">$17.20</span>
											<span class="old-price">$45.00</span>
										</div>
									</div>
									<div class="quick-desc">
										Designed for simplicity and made from high quality materials. Its sleek geometry and material combinations creates a modern look.
									</div>
									<div class="select__color">
										<h2>Select color</h2>
										<ul class="color__list">
											<li class="red"><a title="Red" href="#">Red</a></li>
											<li class="gold"><a title="Gold" href="#">Gold</a></li>
											<li class="orange"><a title="Orange" href="#">Orange</a></li>
											<li class="orange"><a title="Orange" href="#">Orange</a></li>
										</ul>
									</div>
									<div class="select__size">
										<h2>Select size</h2>
										<ul class="color__list">
											<li class="l__size"><a title="L" href="#">L</a></li>
											<li class="m__size"><a title="M" href="#">M</a></li>
											<li class="s__size"><a title="S" href="#">S</a></li>
											<li class="xl__size"><a title="XL" href="#">XL</a></li>
											<li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
										</ul>
									</div>
									<div class="social-sharing">
										<div class="widget widget_socialsharing_widget">
											<h3 class="widget-title-modal">Share this product</h3>
											<ul class="social__net social__net--2 d-flex justify-content-start">
												<li class="facebook"><a href="#" class="rss social-icon"><i class="zmdi zmdi-rss"></i></a></li>
												<li class="linkedin"><a href="#" class="linkedin social-icon"><i class="zmdi zmdi-linkedin"></i></a></li>
												<li class="pinterest"><a href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
												<li class="tumblr"><a href="#" class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="addtocart-btn">
										<a href="#">Add to cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
                </div>
                </ItemTemplate>
            </asp:Repeater>
			
		</div>
    
		<!-- END QUICKVIEW PRODUCT -->
</asp:Content>
