<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Quotations.aspx.cs" Inherits="BookLaunch.ObjectProject.Quotations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchPlaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="slider" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="main" runat="server">
    <div class="container" style="margin-top: 100px; margin-bottom: 100px; margin-left: 0px;">
        <div class="row">
            <!-- col.// -->
            <aside class="col-sm-3">
                <div class="card">
	                <article class="card-group-item">
		                <header class="card-header">
			                <h6 class="title">Brands </h6>
		                </header>
		                <div class="filter-content">
			                <div class="card-body">
			                <form>
				                <label class="form-check">
				                  <input class="form-check-input" type="checkbox" value="">
				                  <span class="form-check-label">
				                    Mersedes Benz
				                  </span>
				                </label> <!-- form-check.// -->
				                <label class="form-check">
				                  <input class="form-check-input" type="checkbox" value="">
				                  <span class="form-check-label">
				                    Nissan Altima
				                  </span>
				                </label>  <!-- form-check.// -->
				                <label class="form-check">
				                  <input class="form-check-input" type="checkbox" value="">
				                  <span class="form-check-label">
				                    Another Brand
				                  </span>
				                </label>  <!-- form-check.// -->
			                </form>

			                </div> <!-- card-body.// -->
		                </div>
	                </article> <!-- card-group-item.// -->

                    <article class="card-group-item">
		                <header class="card-header">
			                <h6 class="title">Choose type </h6>
		                </header>
		                <div class="filter-content">
			                <div class="card-body">
			                <label class="form-check">
			                  <input class="form-check-input" type="radio" name="exampleRadio" value="">
			                  <span class="form-check-label">
			                    First hand items
			                  </span>
			                </label>
			                <label class="form-check">
			                  <input class="form-check-input" type="radio" name="exampleRadio" value="">
			                  <span class="form-check-label">
			                    Brand new items
			                  </span>
			                </label>
			                <label class="form-check">
			                  <input class="form-check-input" type="radio" name="exampleRadio" value="">
			                  <span class="form-check-label">
			                    Some other option
			                  </span>
			                </label>
			                </div> <!-- card-body.// -->
		                </div>
	                </article> <!-- card-group-item.// -->

                    <article class="card-group-item">
		                <header class="card-header"><h6 class="title">Similar category </h6></header>
		                <div class="filter-content">
			                <div class="list-group list-group-flush">
			                  <a href="#" class="list-group-item">Cras justo odio <span class="float-right badge badge-light round">142</span> </a>
			                  <a href="#" class="list-group-item">Dapibus ac facilisis  <span class="float-right badge badge-light round">3</span>  </a>
			                  <a href="#" class="list-group-item">Morbi leo risus <span class="float-right badge badge-light round">32</span>  </a>
			                  <a href="#" class="list-group-item">Another item <span class="float-right badge badge-light round">12</span>  </a>
			                </div>  <!-- list-group .// -->
		                </div>
	                </article> <!-- card-group-item.// -->

	                <article class="card-group-item">
		                <header class="card-header"><h6 class="title">Color check</h6></header>
		                <div class="filter-content">
			                <div class="card-body">
				                <label class="btn btn-danger">
				                  <input class="" type="checkbox" name="myradio" value="">
				                  <span class="form-check-label">Red</span>
				                </label>
				                <label class="btn btn-success">
				                  <input class="" type="checkbox" name="myradio" value="">
				                  <span class="form-check-label">Green</span>
				                </label>
				                <label class="btn btn-primary">
				                  <input class="" type="checkbox" name="myradio" value="">
				                  <span class="form-check-label">Blue</span>
				                </label>
			                </div> <!-- card-body.// -->
		                </div>
	                </article> <!-- card-group-item.// -->

                    <article class="card-group-item">
		                <header class="card-header">
			                <h6 class="title">Range input </h6>
		                </header>
		                <div class="filter-content">
			                <div class="card-body">
			                <div class="form-row">
			                <div class="form-group col-md-6">
			                  <label>Min</label>
			                  <input type="number" class="form-control" id="inputEmail4" placeholder="$0">
			                </div>
			                <div class="form-group col-md-6 text-right">
			                  <label>Max</label>
			                  <input type="number" class="form-control" placeholder="$1,0000">
			                </div>
			                </div>
			                </div> <!-- card-body.// -->
		                </div>
	                </article> <!-- card-group-item.// -->

	                <article class="card-group-item">
		                <header class="card-header">
			                <h6 class="title">Selection </h6>
		                </header>
		                <div class="filter-content">
			                <div class="card-body">
				                <div class="custom-control custom-checkbox">
					                <span class="float-right badge badge-light round">52</span>
				  	                <input type="checkbox" class="custom-control-input" id="Check1">
				  	                <label class="custom-control-label" for="Check1">Samsung</label>
				                </div> <!-- form-check.// -->

				                <div class="custom-control custom-checkbox">
					                <span class="float-right badge badge-light round">132</span>
				  	                <input type="checkbox" class="custom-control-input" id="Check2">
				 	                <label class="custom-control-label" for="Check2">Black berry</label>
				                </div> <!-- form-check.// -->

				                <div class="custom-control custom-checkbox">
					                <span class="float-right badge badge-light round">17</span>
				  	                <input type="checkbox" class="custom-control-input" id="Check3">
				  	                <label class="custom-control-label" for="Check3">Samsung</label>
				                </div> <!-- form-check.// -->

				                <div class="custom-control custom-checkbox">
					                <span class="float-right badge badge-light round">7</span>
				  	                <input type="checkbox" class="custom-control-input" id="Check4">
				  	                <label class="custom-control-label" for="Check4">Other Brand</label>
				                </div> <!-- form-check.// -->
			                </div> <!-- card-body.// -->
		                </div>
	                </article> <!-- card-group-item.// -->
                </div> <!-- card.// -->
            </aside> 
            <!-- col.// -->
            <div class="col-md-8" style="margin-top: 50px;">
                <h2 class="page-header">Comments</h2>
                <section class="comment-list">
                    <!-- First Comment -->
                    <article class="row">
                        <div class="col-md-2 col-sm-2 hidden-xs">
                            <figure class="thumbnail">
                                <img class="img-responsive" src="http://www.tangoflooring.ca/wp-content/uploads/2015/07/user-avatar-placeholder.png" />
                                <figcaption class="text-center">username</figcaption>
                            </figure>
                        </div>
                        <div class="col-md-10 col-sm-10">
                            <div class="panel panel-default arrow left">
                                <div class="panel-body">
                                    <header class="text-left">
                                        <div class="comment-user"><i class="fa fa-user"></i> That Guy</div>
                                        <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i> Dec 16, 2014</time>
                                    </header>
                                    <div class="comment-post">
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                        </p>
                                    </div>
                                    <div class="row " style="padding-left: 200px;">
                                        <div class="column">
                                            <button type="button" class="btn btn-comm">
                                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                    <path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                                </svg>
                                                Like
                                            </button>
                                            <!--Email-->
                                        </div>
                                        
                                        <div class="column" style="margin-left: 20px;">
                                            <button type="button" class="btn btn-comm"><i class="fas fa-comments pr-1"></i> Comments</button>
                                            <!--Email-->
                                        </div>
                                        <div class="column" style="margin-left: 20px;">
                                            <button type="button" class="btn btn-comm">
                                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-clipboard" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                    <path fill-rule="evenodd" d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
                                                    <path fill-rule="evenodd" d="M9.5 1h-3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"/>
                                                </svg> 
												Copy
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                </section>
            </div>
        </div> 
    </div>

</asp:Content>
