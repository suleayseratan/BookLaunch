<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="SingleBook.aspx.cs" Inherits="BookLaunch.ObjectProject.SingleBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
    <div class="ht__bradcaump__area bg-image--4">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Shop Single</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="Default.aspx">Home</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Shop Single</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    <div class="box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="#">
            <div class="field__search">
                <input type="text" placeholder="Search entire store here...">
                <div class="action">
                    <a href="#"><i class="zmdi zmdi-search"></i></a>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>close</span>
        </div>
    </div>
   
    <div class="maincontent bg--white pt--80 pb--55">
        	<div class="container">
        		<div class="row">
                
        			<div class="col-lg-9 col-12">
                        <asp:Repeater ID="rptBookDetails" runat="server">
                            <ItemTemplate>
        				            <div class="wn__single__product">
        					            <div class="row">
        						            <div class="col-lg-6 col-12">
        							            <div class="wn__fotorama__wrapper">
	        							            <div class="fotorama wn__fotorama__action" data-nav="thumbs">
		        							              <a><img src="<%#Eval("Image") %>" alt=""></a>
	        							            </div>
        							            </div>
        						            </div>
        						            <div class="col-lg-6 col-12">
        							            <div class="product__info__main">
        								            <h1><%#Eval("BookName") %></h1>

										            <div class="product__overview">
        									            <p><%#Eval("Explain") %></p>
        								            </div>

        								            <div class="box-tocart d-flex">
											            <div class="product-addto-links clearfix">
												            <a class="wishlist" href="#"></a>
												            <%--<a class="compare" href="#"></a>--%>
											            </div>
        								            </div>
										            <div class="product_meta">
											            <span class="posted_in">Categories: 
												            <a href="#"><%#Eval("CategoryName") %></a>
                                                        </span>
										            </div>
        							            </div>
        						            </div>
        					            </div>
        				            </div>
        				            <div class="product__info__detailed">
							            <div class="pro_details_nav nav justify-content-start" role="tablist">
	                                        <a class="nav-item nav-link active" data-toggle="tab" href="#nav-details" role="tab">Details</a>
	                                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-review" role="tab">Reviews</a>
	                                    </div>
	                                    <div class="tab__container">
	                        	            <!-- Start Single Tab Content -->
	                        	            <div class="pro__tab_label tab-pane fade show active" id="nav-details" role="tabpanel">
									            <div class="description__attribute">
										            <ul>
											            <li><strong>• Publisher:</strong>  <%#Eval("PublishingHouse") %></li>
											            <li><strong>• Released Year:</strong>  <%#Eval("YearReleased") %> </li>
											            <li><strong>• Language:</strong>  <%#Eval("Language") %></li>
                                                        <li><strong>• Page Number:</strong>  <%#Eval("PageNumber") %></li>
                                                    </ul>
									            </div>
	                        	            </div>
								            <form action="/" id="label" method="post">
                                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                            </form>
                                    </ItemTemplate>
                        </asp:Repeater>
	                        	<!-- End Single Tab Content -->
	                        	<!-- Start Single Tab Content -->
	                        	<div class="pro__tab_label tab-pane fade" id="nav-review" role="tabpanel">
                                    <div class="blog-details content">
                                        <div class="comments_area">
                                            <h3 class="comment__title">Comments</h3>
                                            <asp:Repeater ID="rptComment" runat="server">
                                                <ItemTemplate>
											        <ul class="comment__list">
												        <li>
													        <div class="wn__comment">
                                                                <div class="content">
															        <div class="comnt__author d-block d-sm-flex">
																        <span><a href="#"><%#Eval("NameSurname") %></a> <%#Eval("Title") %></span>
																        <span><%#Eval("Date") %></span>
                                                                    </div>
															        <p><%#Eval("Content") %></p>
														        </div>
													        </div>
												        </li>
											        </ul>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>
                                        <div class="comment_respond">
											<h3 class="reply_title">Leave a Reply <small><a href="#">Cancel reply</a></small></h3>
											<span class="comment__form" action="#">
												<p>Your email address will not be published.Required fields are marked</p>
												<div class="input__box">
                                                    <asp:TextBox ID="tbxComment" runat="server" Height="202px" Width="827px"></asp:TextBox>
												</div>
												<div class="input__wrapper clearfix">
													<div class="input__box name one--third">
                                                        <asp:TextBox ID="tbxName" runat="server"></asp:TextBox>
													</div>
													<div class="input__box email one--third">
                                                        <asp:TextBox ID="tbxEmail" runat="server" ></asp:TextBox>
													</div>
													<div class="input__box website one--third">
                                                        <asp:TextBox ID="tbxTitle" runat="server"></asp:TextBox>
                                                    </div>
												</div>
												<div class="submite__btn">
													<asp:Button ID="btnComment" Text="POST COMMENT" runat="server" OnClick="btnComment_Click"  />
												</div>
											</span>
										</div>
									</div>
	                        	</div>
	                        	<!-- End Single Tab Content -->
	                        </div>
        				</div>
                        <div class="wn__related__product pt--80 pb--50">
							<div class="section__title text-center">
								<h2 class="title__be--2">Related Products</h2>
							</div>
							<div class="row mt--60">
								<div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
                                    <!-- Start Single Product -->
								<asp:Repeater ID="rptSameBook" runat="server">
										<ItemTemplate>
                                        <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
										<div class="product__thumb">
											<a class="first__img" href="SingleBook.aspx"><img src="<%#Eval("Image") %>" alt="product image"></a>
                                        </div>
										<div class="product__content content--center">
											<h4><a href="SingleBook.aspx"><%#Eval("BookName") %></a></h4>
											<div class="action">
												<div class="actions_inner">
													<ul class="add_to_links">
														<li><a class="compare" href="#"><i class="bi bi-heart-beat"></i></a></li>
														<li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
                                        </ItemTemplate>
                                    </asp:Repeater>
									<!-- End Single Product -->
								
                                </div>
							</div>
						</div>
                    </div>
               
        			<div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
        				<div class="shop__sidebar">
							<aside class="wedget__categories poroduct--cat">
								<h3 class="wedget__title">Book Categories</h3>
								<ul>
									<asp:Repeater ID="rptSingleBookCategory" runat="server">
                                        <ItemTemplate>
									        <li><a href="Books.aspx?categoryId=<%#Eval("CategoryId") %>"><%#Eval("CategoryName") %> <span></span></a></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
								</ul>
							</aside>
                        </div>
        			</div>
        		</div>
        	</div>
        </div>
    

    
<div class="box-search-content search_active block-bg close__top">
    <form id="search_mini_form--2" class="minisearch" action="#">
        <div class="field__search">
            <input type="text" placeholder="Search entire store here...">
            <div class="action">
                <a href="#"><i class="zmdi zmdi-search"></i></a>
            </div>
        </div>
    </form>
    <div class="close__wrap">
        <span>close</span>
    </div>
</div>

    <div id="quickview-wrapper">
		    <!-- Modal -->
		    <div class="modal fade" id="productmodal" tabindex="-1" role="dialog">
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
		                                <img alt="big images" src="Sule's Web Project/images/product/big-img/1.jpg">
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
		                        </div><!-- .product-info -->
		                    </div><!-- .modal-product -->
		                </div><!-- .modal-body -->
		            </div><!-- .modal-content -->
		        </div><!-- .modal-dialog -->
		    </div>
		    <!-- END Modal -->
		</div>
</asp:Content>
