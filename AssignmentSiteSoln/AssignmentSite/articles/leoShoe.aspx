<%@ Page Title="Leo Baker's New Shoe For Nike SB" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="leoShoe.aspx.cs" Inherits="AssignmentSite.articles.leoShoe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Leo Baker's New Shoe For Nike SB</h1>
    <div id="article">
        <asp:Image runat="server" ID="imgMainImage" CssClass="mainImage" ImageUrl="~/images/leoShoe.png"></asp:Image>
    
        <div id="articleInfo">
            <asp:Label runat="server" Text="Views: " ID="lblViews" CssClass="views"></asp:Label>
            <asp:Label runat="server" Text="Date: " ID="lblDate" CssClass="date"></asp:Label>
        </div>

        <div id="articleText">
            <p>
                Leo Baker reveals his first signature shoe for Nike SB with a full video part.            

            </p>
        </div>

        <iframe id="youtube" src="https://www.youtube.com/embed/bcxBPX_f9vQ?si=K2D06sL968u12QIs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
</asp:Content>
