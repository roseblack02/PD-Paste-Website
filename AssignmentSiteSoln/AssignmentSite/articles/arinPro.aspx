<%@ Page Title="Arin Lester Is Now Pro For Sci-Fi Fantasy" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="arinPro.aspx.cs" Inherits="AssignmentSite.articles.arinPro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Arin Lester Is Now Pro For Sci-Fi Fantasy</h1>
    <div id="article">
        <asp:Image runat="server" ID="imgMainImage" CssClass="mainImage" ImageUrl="~/images/arinPro.png"></asp:Image>
    
        <div id="articleInfo">
            <asp:Label runat="server" Text="Views: " ID="lblViews" CssClass="views"></asp:Label>
            <asp:Label runat="server" Text="Date: " ID="lblDate" CssClass="date"></asp:Label>
        </div>

        <div id="articleText">
            <p>
                Former lab technician now ledge technician, Arin Lester joins Ryan Lay and Corey Glick in turning pro for Sci-Fi Fantasy. Her first video part for Sci-Fi Fantasy is filled with unthinkable ledge combos.
            </p>
        </div>
            
        
        <iframe id="youtube" src="https://www.youtube.com/embed/Jo-z-NXOn7o?si=VxEfMv2YMkT9-iLT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

    </div>
</asp:Content>
