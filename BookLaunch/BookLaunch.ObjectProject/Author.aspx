<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Author.aspx.cs" Inherits="BookLaunch.ObjectProject.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
    <div class="ht__bradcaump__area bg-image--Sule">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Portfolio</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="Default.aspx">Home</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Portfolio</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
<span runat="server" id="span1">
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
    
    <section class="wn__portfolio__area gallery__masonry__activation bg--white mt--40 pb--100">
            
                    <div class="row masonry__wrap">
                            <asp:Repeater runat="server" ID="rptFullCard">
                            <ItemTemplate> 
                                <div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-12 gallery__item" >
                                        <div class="portfolio">
                                            <div class="thumb">
                                                    <a href="AuthorDetails.aspx?authorId=<%#Eval("AuthorId") %>">
                                                        <img src="<%#Eval("Image") %>" alt="portfolio images" style="height: 340px; width: 270px;">
                                                    </a>
                                                    &nbsp;<div class="search">
                                                        <a href="Sule's Web Project/images/portfolio/big-2/1.jpg" data-lightbox="grportimg" data-title="My caption"><i class="zmdi zmdi-search"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                    <h6><a href="AuthorDetails.aspx?authorId=<%#Eval("AuthorId") %>"><%#Eval("AuthorName") %></a></h6>
                                                    <p>road theme</p>
                                                </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                    </div>
    </section>
</span>
</asp:Content>
