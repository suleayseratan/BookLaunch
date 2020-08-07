<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="AuthorDetails.aspx.cs" Inherits="BookLaunch.ObjectProject.AuthorDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
    <div class="ht__bradcaump__area bg-image--6">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Author Details</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="Default.aspx">Home</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Author-Details</span>
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

    <div class="page-blog-details section-padding--lg bg--white">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-10">
                    
                    <div class="blog-details content">
                    
                        <article class="blog-post-details">
                        <asp:DataList ID="rptSingleAuthor" runat="server">
                        <ItemTemplate>
                            <div class="post-thumbnail">
                                <img src="<%#Eval("BigImage") %>" alt="blog images" style="width: 880px; height: 460px;">
                            </div>
                            <div class="post_wrapper">
                                <div class="post_header">
                                    <h2><%#Eval("AuthorName") %></h2>
                                </div>
                                <div class="post_content">
                                    <p><%#Eval("About") %></p>
                                    <blockquote>Lorem ipsum dolor sit amet, consecte adipisicing elit, sed do eiusmod tempor deo incididunt labo dolor magna aliqua. Ut enim ad minim veniam quis nostrud geolans work.</blockquote>
                                </div>
                            </div>
                            </div>
                        </div> 
                        </ItemTemplate>
                    </asp:DataList>
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

                </article> 
                        <div class="comment_respond">
											<h3 class="reply_title">Leave a Reply <small><a href="#">Cancel reply</a></small></h3>
											<span class="comment__form" action="#">
												<p>Your email address will not be published.Required fields are marked</p>
												<div class="input__box" runat="server">
                                                    <asp:TextBox ID="tbxComment" runat="server"  Height="175px" Width="831px" CssClass="auto-style1"></asp:TextBox>
                                                </div>
                                                <br/><br/>
												<div class="input__wrapper clearfix" runat="server">
													<div class="input__box name one--third">
                                                        <asp:TextBox ID="tbxName" runat="server"></asp:TextBox>
													</div>
													<div class="input__box email one--third">
                                                        <asp:TextBox ID="tbxEmail" runat="server" ></asp:TextBox>
													</div>
													<div class="input__box website one--third">
                                                        <asp:TextBox ID="tbxTitle"  runat="server"></asp:TextBox>
                                                    </div>
												</div>
												<div class="submite__btn">
													<asp:Button ID="Button1" Text="POST COMMENT" runat="server" OnClick="btnComment_OnClick"  />
												</div>
											</span>
										</div>
                    </div>
                </div>
                <div class="col-lg-3 col-12 md-mt-40 sm-mt-30">
                    <div class="wn__sidebar">
                        <!-- Start Single Widget -->
                        <aside class="widget search_widget">
                            <h3 class="widget-title">Search</h3>
                            <div action="#" runat="server">
                                <div class="form-input">
                                    <asp:TextBox ID="tbxSearch" OnTextChanged="tbxSearch_OnTextChanged" runat="server" AutoPostBack="True"></asp:TextBox>
                                                    <button><i class="fa fa-search"></i></button>
                                                </div>
                                            </div>
                                        </aside>
                        <!-- End Single Widget -->
                                        <!-- Start Single Widget -->
                                        <aside class="widget recent_widget">
                                            <h3 class="widget-title">Author's Books</h3>
                                            <div class="recent-posts">
                                                <ul>
                                                    <asp:Repeater ID="rptBooksOfAuthor" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <div class="post-wrapper d-flex">
                                                                    <div class="thumb">
                                                                        <a href='SingleBook.aspx?bookId=<%#Eval("BookId") %>'><img src="<%#Eval("Image") %>" alt="blog images"></a>
                                                                    </div>
                                                                    <div class="content">
                                                                        <h4><a href='SingleBook.aspx?bookId=<%#Eval("BookId") %>'><%#Eval("BookName") %></a></h4>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                            </div>
                                        </aside>

                                        <!-- End Single Widget -->

                                    </div>
                                </div>
                </div>
                    
                
            </div>
        </div>
</asp:Content>
