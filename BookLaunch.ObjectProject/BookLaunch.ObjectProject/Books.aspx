<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="BookLaunch.ObjectProject.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
    
    <div class="ht__bradcaump__area bg-image--Sule">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Book Grid</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="Default.aspx">Home</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Book Grid</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="searchPlaceholder" runat="server">
    <div class="col-md-6 col-sm-6 col-6 col-lg-3">
        <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
            <li class="shop_search md-form">
                <!-- Search form -->
                <span class="form-inline d-flex justify-content-center md-form form-sm" runat="server">
                               
                    <asp:TextBox runat="server" ID="tbxSearch" class="form-control form-control-sm mr-3 w-75 " OnTextChanged="Search_TextChanged" AutoPostBack="True" />
                    <i class="fas fa-search fa-lg" aria-hidden="true"></i>
                </span>
                <!-- Search form -->
            </li>
            <li class="wishlist"><a href="ReadingList.aspx"></a></li>
            <li class="setting__bar__icon"><a class="setting__active" href="#"></a>
                <div class="searchbar__content setting__block">
                    <div class="content-inner">
                        <div class="switcher-currency">
                            <strong class="label switcher-label">
                                <span>My Account</span>
                            </strong>
                            <div class="switcher-options">
                                <div class="switcher-currency-trigger">
                                    <div class="setting__menu">
                                        <span><a href="#">Sign In</a></span>
                                        <span><a href="my-account.html">My Account</a></span>
                                        <span><a href="#">Compare Product</a></span>
                                        <span><a href="#">My Reading List</a></span>
                                        <span><a href="#">Create An Account</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>

        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
    
    <div class="box-search-content search_active block-bg close__top">
        <span id="search_mini_form" class="minisearch" action="#">
            <div class="field__search">
                <input type="text" placeholder="Search entire store here...">
                <div class="action">
                    <a href="#"><i class="zmdi zmdi-search"></i></a>
                </div>
            </div>
        </span>
        <div class="close__wrap">
            <span>close</span>
        </div>
    </div>
    <span id="form1" runat="server" >
    <div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                        <aside class="wedget__categories poroduct--cat">
                            <h3 class="wedget__title">Book Categories</h3>
                            <ul>
                            <asp:Repeater ID="rptBookCategory" runat="server">
                                <ItemTemplate>
                                        <li><a href="Books.aspx?categoryId=<%# Eval("CategoryId") %>"><%# Eval("CategoryName")%></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                            </ul>
                        </aside>
                    </div>
                </div>
                
                <div class="col-lg-9 col-12 order-1 order-lg-2">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
                                <div class="shop__list nav justify-content-center" role="tablist">
                                    <a class="nav-item nav-link active" data-toggle="tab" href="#nav-grid" role="tab"><i class="fa fa-th"></i></a>
                                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-list" role="tab"><i class="fa fa-list"></i></a>
                                </div>
                                <asp:Button ID="Button1" runat="server" Text="Turkish"  OnClick="Button1_OnClick" Width="82px"/>
                                <asp:Button ID="Button2" runat="server" Text="English" OnClick="Button1_OnClick" CssClass="auto-style1" Width="82px" />
                                <div class="orderby__wrapper">
                                    <span>Sort By</span>
                                    <asp:DropDownList ID="ddlSortBy" runat="server"  AutoPostBack="True"  OnSelectedIndexChanged="ddlSortBy_SelectedIndexChanged" Enabled="True" EnableViewState="True">
                                        <asp:ListItem >Select</asp:ListItem>
                                        <asp:ListItem>Smart List</asp:ListItem>
                                        <asp:ListItem >A to Z</asp:ListItem>
                                        <asp:ListItem>Z to A</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab__container">
                        <div class="shop-grid tab-pane fade show active" id="nav-grid" role="tabpanel">
                            <div class="row">
                                <!-- Start Single Product -->
                                
                                <asp:Repeater ID="rptBook" runat="server">
                                    <ItemTemplate>
                                <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
                                        <div class="product__thumb">
                                            <a class="first__img" href='SingleBook.aspx?bookId=<%#Eval("Id") %>'><img src="<%#Eval("Image") %>" style="width: 270px; height: 340px;"alt="product image"></a>
                                            <div class="hot__box">
                                                <span class="hot-label">BEST SALLER</span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center">
                                            <h4><a href="SingleBook.aspx"><%#Eval("BookName") %></a></h4>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="wishlist" href="ReadingList.aspx"><i class="bi bi-heart-beat"></i></a></li>
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
                            <ul class="wn__pagination">
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
                            </ul>
                        </div>
                        <div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel">
                            <asp:Repeater ID="rptNavList" runat="server">
                                <ItemTemplate>
                                <div class="list__view__wrapper">
                                    <!-- Start Single Product -->
                                    <div class="list__view">
                                        <div class="thumb" style="width: 250px; height: 375px;">
                                            <a class="first__img" href="SingleBook.aspx"><img src="<%#Eval("Image") %>" alt="product images"></a>
                                        </div>

                                        <div class="content">
                                            <h2><a href="SingleBook.aspx"><%#Eval("BookName") %></a></h2>
                                            
                                            <ul class="cart__action d-inline-flex">
                                                <li class="wishlist"><a href="ReadingList.aspx"></a></li>
                                                <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i style="position: absolute; left: 0; top: 30%; width: 100%; text-align: center; font-size: 18px;" class="bi bi-search"></i></a></li>
                                            </ul>
                                        </div>

                                    </div>
                                <!-- End Single Product -->
                                </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</span>
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

                                <div class="review">
                                    <a href="#">4 customer reviews</a>
                                </div>
                            </div>

                            <div class="quick-desc">
                                Designed for simplicity and made from high quality materials. Its sleek geometry and material combinations creates a modern look.
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
</asp:Content>
