<%@ Page Title="Austyn Gillette's New Part For Globe" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="austynGlobe.aspx.cs" Inherits="AssignmentSite.articles.austynGlobe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Austyn Gillette's New Part For Globe</h1>
    <div id="article">
        <asp:Image runat="server" ID="imgMainImage" CssClass="mainImage" ImageUrl="~/images/austynGlobe.png"></asp:Image>
    
        <div id="articleInfo">
            <asp:Label runat="server" Text="Views: " ID="lblViews" CssClass="views"></asp:Label>
            <asp:Label runat="server" Text="Date: " ID="lblDate" CssClass="date"></asp:Label>
        </div>

        <div id="articleText">
            <p>
                Austyn puts out a new part for Globe featuring an impeccable switch tre over the hydrant. 
            </p>
        </div>

        <iframe id="youtube" src="https://www.youtube.com/embed/ror6kRSUQZo?si=iVscQ7jc04MY30CG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
</asp:Content>
