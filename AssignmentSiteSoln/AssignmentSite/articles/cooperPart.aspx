<%@ Page Title="Cooper Winterson's New Part For Glue" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="cooperPart.aspx.cs" Inherits="AssignmentSite.articles.cooperPart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Cooper Winterson's New Part For Glue</h1>
    <div id="article">
        <asp:Image runat="server" ID="imgMainImage" CssClass="mainImage" ImageUrl="~/images/cooperPart.png"></asp:Image>
    
        <div id="articleInfo">
            <asp:Label runat="server" Text="Views: " ID="lblViews" CssClass="views"></asp:Label>
            <asp:Label runat="server" Text="Date: " ID="lblDate" CssClass="date"></asp:Label>
        </div>

        <div id="articleText">
            <p>
                Cooper Winterson, drummer for Auxiena Saint and Aspartame, puts out a stylish part for Glue. 
            </p>
        </div>

        <iframe id="youtube" src="https://www.youtube.com/embed/AeEAf6TIbgM?si=ogehi2s8hwMKaMkT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
</asp:Content>
