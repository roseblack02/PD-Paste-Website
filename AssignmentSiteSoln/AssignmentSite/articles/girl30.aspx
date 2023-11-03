<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="girl30.aspx.cs" Inherits="AssignmentSite.articles.girl30" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Three Decades Of Girl Skateboards</h1>
    <div id="article">
        <asp:Image runat="server" ID="imgMainImage" CssClass="mainImage" ImageUrl="~/images/girl30.png"></asp:Image>
    
        <div id="articleInfo">
            <asp:Label runat="server" Text="Views: " ID="lblViews" CssClass="views"></asp:Label>
            <asp:Label runat="server" Text="Date: " ID="lblDate" CssClass="date"></asp:Label>
        </div>

        <div id="articleText">
            <p>
                In celebration of Three Decades, Girl Skateboards presents a retrospective exhibit curated by Deckaid. Deckaid is a non-profit that funds youth-centered community organisations.
            </p>
            <p>
                An eBay auction of specially curated items will be held to benefit Deckaid. 30 hand selected original boards, 30 vintage tees, as well as 30 Three Decades of Girl Sneaker Boxes will be auctioned off.
            </p>
        </div>

        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
