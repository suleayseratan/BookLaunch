﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Deneme.aspx.cs" Inherits="BookLaunch.ObjectProject.Deneme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        $font : 'Sofia', sans-serif;
        $font-size:16px;
        $blue : #0a4870;
        $blue2 : #e3ebf1;
        $black: #000;
        $grey : #7d7d7d;
        $grey2 : #f0f0f0;
        $grey3 : #e8e7e7;
        $grey4 : #fdfdfd;
        $bluegrey : #49606e;
        $orange: #ec992c;

@mixin radius($val) {
  -webkit-border-radius: $val;
  -moz-border-radius: $val;
  border-radius: $val;
}

@mixin cardsOpen() {
    &::before {
      background: rgba(10,72,112, 0.6);
    }
    .book-container {
      .content {
        opacity: 1;

        transform: translateY(0px);
      }
    }

    .informations-container {      
      transform: translateY(0px);
      .more-information {
        opacity: 1;
      }
    }
}



h2{
  color: #0a4870;
  font-weight: 500;
}

        ul {
            display: flex;
            flex-wrap: wrap;
            list-style: none;
            padding: 0;
        }
  .booking-card{
    position: relative;
    width: 300px;
    display: flex;
    flex: 0 0 300px;
    flex-direction: column;
    
    margin: 20px;
    margin-bottom: 30px;
    @include radius(10px);
    
    overflow: hidden;
    
    background-position: center center;
    background-size: cover;
    
    text-align: center;
    color: $blue;
    
    transition: .3s;
    
    &::before{
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      
      background: rgba(10,72,112, 0);
      
      transition: .3s;
    }
    
    .book-container {
      height: 200px;
      .content {
        position: relative;
        opacity: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100%;
        width: 100%;
        
        transform: translateY(-200px);
        
        transition: .3s;
        
        .btn {      
          border: 3px solid white;
          padding: 10px 15px;
          
          background: none;
          
          text-transform: uppercase;
          font-weight: bold;
          font-size: 1.3em;
          color: white;
          
          cursor: pointer;
          
          transition: .3s;
          
          &:hover {
            background: white;
            
            border: 0px solid white;
            
            color: $blue;
          }
        }
      }
    }
    
    .informations-container{      
      flex: 1 0 auto;
      
      padding: 20px;
      
      background: $grey2;
      
      transform: translateY(206px);
      
      transition: .3s;
      
      .title {
        position: relative;
        
        padding-bottom: 10px;
        margin-bottom: 10px;
        
        font-weight: bold;
        font-size: 1.2em;
        
        &::after{
          content: '';
          
          position: absolute;
          bottom: 0;
          left: 0;
          right: 0;
          
          height: 3px;
          width: 50px;
          
          margin: auto;
          
          background: $blue;
        }
      }
      
      .price {
        display: flex;
        align-items: center;
        justify-content: center;
        
        margin-top: 10px;
        
        .icon {
          margin-right: 10px;
        }
      }
      
      .more-information {
        opacity: 0;
        
        transition: .3s;
        .info-and-date-container {
          display: flex;

          .box {
            flex: 1 0;

            padding: 15px;
            margin-top: 20px;
            @include radius(10px);

            background: white;

            font-weight: bold;
            font-size: 0.9em;

            .icon {
              margin-bottom: 5px;
            }

            &.info{
              color: $orange;

              margin-right: 10px;
            }
          }
        }
        .disclaimer {
          margin-top: 20px;

          font-size: 0.8em;
          color: $grey;
        }
      }
    }
    
    &:hover {
      @include cardsOpen();
    }
  }
}

@media (max-width: 768px) {
  ul {
    .booking-card{
      @include cardsOpen();
    }
  }
}

.credits{
  display: table;
  background: $blue;
  color: white;
  line-height: 25px;
  
  margin: 10px auto;
  padding: 20px;
  
  @include radius(10px);
  
  text-align: center;
  
  a{
    color: $blue2;
  }
}

h1{
  margin: 10px 20px;
}
    </style>
</asp:Content>
<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="slider">
    <div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
 <h1>Tickets cards</h1>
<ul>
  <li class="booking-card" style="background-image: url(https://images.unsplash.com/photo-1578944032637-f09897c5233d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjE0NTg5fQ)">
    <div class="book-container">
      <div class="content">
        <button class="btn">Réserver</button>
      </div>
    </div>
    <div class="informations-container">
      <h2 class="title">Je suis un billet pour aller visiter un truc</h2>
      <p class="sub-title">Et moi un je suis sous-titre</p>
      <p class="price"><svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
    <path fill="currentColor" d="M3,6H21V18H3V6M12,9A3,3 0 0,1 15,12A3,3 0 0,1 12,15A3,3 0 0,1 9,12A3,3 0 0,1 12,9M7,8A2,2 0 0,1 5,10V14A2,2 0 0,1 7,16H17A2,2 0 0,1 19,14V10A2,2 0 0,1 17,8H7Z" />
</svg>De 0 à 15 €</p>
      <div class="more-information">
        <div class="info-and-date-container">
          <div class="box info">
            <svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
      <path fill="currentColor" d="M11,9H13V7H11M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M11,17H13V11H11V17Z" />
  </svg>
            <p>Parc des expositions à NANTES</p>
          </div>
          <div class="box date">
            <svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
      <path fill="currentColor" d="M19,19H5V8H19M16,1V3H8V1H6V3H5C3.89,3 3,3.89 3,5V19A2,2 0 0,0 5,21H19A2,2 0 0,0 21,19V5C21,3.89 20.1,3 19,3H18V1M17,12H12V17H17V12Z" />
  </svg>
            <p>Samedi 1er février 2020</p>
          </div>
        </div>
        <p class="disclaimer">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quasi eveniet perferendis culpa. Expedita architecto nesciunt, rem distinctio</p>
        </div>
    </div>
  </li>
  <li class="booking-card" style="background-image: url(https://images.unsplash.com/photo-1580137197581-df2bb346a786?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjE0NTg5fQ);">
    <div class="book-container">
      <div class="content">
        <button class="btn">Réserver</button>
      </div>
    </div>
    <div class="informations-container">
      <h2 class="title">Je suis moi aussi un billet</h2>
      <p class="sub-title">Et moi je suis un 2ème sous-titre</p>
      <p class="price"><svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
    <path fill="currentColor" d="M3,6H21V18H3V6M12,9A3,3 0 0,1 15,12A3,3 0 0,1 12,15A3,3 0 0,1 9,12A3,3 0 0,1 12,9M7,8A2,2 0 0,1 5,10V14A2,2 0 0,1 7,16H17A2,2 0 0,1 19,14V10A2,2 0 0,1 17,8H7Z" />
</svg>De 0 à 35 €</p>
      <div class="more-information">
        <div class="info-and-date-container">
          <div class="box info">
            <svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
      <path fill="currentColor" d="M11,9H13V7H11M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M11,17H13V11H11V17Z" />
  </svg>
            <p>Parlement de Bretagne à RENNES</p>
          </div>
          <div class="box date">
            <svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
      <path fill="currentColor" d="M19,19H5V8H19M16,1V3H8V1H6V3H5C3.89,3 3,3.89 3,5V19A2,2 0 0,0 5,21H19A2,2 0 0,0 21,19V5C21,3.89 20.1,3 19,3H18V1M17,12H12V17H17V12Z" />
  </svg>
            <p>À partir du Dimanche 3 Juin 2020</p>
          </div>
        </div>
        <p class="disclaimer">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quasi eveniet perferendis culpa. Expedita architecto nesciunt, rem distinctio</p>
        </div>
    </div>
  </li>
  <li class="booking-card" style="background-image: url(https://images.unsplash.com/photo-1579489225078-27977a77bf72?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjE0NTg5fQ);">
    <div class="book-container">
      <div class="content">
        <button class="btn">Réserver</button>
      </div>
    </div>
    <div class="informations-container">
      <h2 class="title">Encore un billet</h2>
      <p class="sub-title">Encore un sous-titre</p>
      <p class="price"><svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
    <path fill="currentColor" d="M3,6H21V18H3V6M12,9A3,3 0 0,1 15,12A3,3 0 0,1 12,15A3,3 0 0,1 9,12A3,3 0 0,1 12,9M7,8A2,2 0 0,1 5,10V14A2,2 0 0,1 7,16H17A2,2 0 0,1 19,14V10A2,2 0 0,1 17,8H7Z" />
</svg>20 €</p>
      <div class="more-information">
        <div class="info-and-date-container">
          <div class="box info">
            <svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
      <path fill="currentColor" d="M11,9H13V7H11M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M11,17H13V11H11V17Z" />
  </svg>
            <p>Le Trident à CHERBOURG</p>
          </div>
          <div class="box date">
            <svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
      <path fill="currentColor" d="M19,19H5V8H19M16,1V3H8V1H6V3H5C3.89,3 3,3.89 3,5V19A2,2 0 0,0 5,21H19A2,2 0 0,0 21,19V5C21,3.89 20.1,3 19,3H18V1M17,12H12V17H17V12Z" />
  </svg>
            <p>Février 2020</p>
          </div>
        </div>
        <p class="disclaimer">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quasi eveniet perferendis culpa. Expedita architecto nesciunt, rem distinctio</p>
        </div>
    </div>
  </li>
  <li class="booking-card" style="background-image: url(https://images.unsplash.com/photo-1532509854226-a2d9d8e66f8e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjE0NTg5fQ);">
    <div class="book-container">
      <div class="content">
        <button class="btn">Réserver</button>
      </div>
    </div>
    <div class="informations-container">
      <h2 class="title">Now I'm a ticket but in english</h2>
      <p class="sub-title">And me, call me "sub-title" now</p>
      <p class="price"><svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
    <path fill="currentColor" d="M3,6H21V18H3V6M12,9A3,3 0 0,1 15,12A3,3 0 0,1 12,15A3,3 0 0,1 9,12A3,3 0 0,1 12,9M7,8A2,2 0 0,1 5,10V14A2,2 0 0,1 7,16H17A2,2 0 0,1 19,14V10A2,2 0 0,1 17,8H7Z" />
</svg>From 0 to 15 €</p>
      <div class="more-information">
        <div class="info-and-date-container">
          <div class="box info">
            <svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
      <path fill="currentColor" d="M11,9H13V7H11M12,20C7.59,20 4,16.41 4,12C4,7.59 7.59,4 12,4C16.41,4 20,7.59 20,12C20,16.41 16.41,20 12,20M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M11,17H13V11H11V17Z" />
  </svg>
            <p>Centre Pompidou at PARIS</p>
          </div>
          <div class="box date">
            <svg class="icon" style="width:24px;height:24px" viewBox="0 0 24 24">
      <path fill="currentColor" d="M19,19H5V8H19M16,1V3H8V1H6V3H5C3.89,3 3,3.89 3,5V19A2,2 0 0,0 5,21H19A2,2 0 0,0 21,19V5C21,3.89 20.1,3 19,3H18V1M17,12H12V17H17V12Z" />
  </svg>
            <p>From October to December 2020</p>
          </div>
        </div>
        <p class="disclaimer">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quasi eveniet perferendis culpa. Expedita architecto nesciunt, rem distinctio</p>
        </div>
    </div>
  </li>
</ul>


</asp:Content>
