<%@ Page Title="Shag Is Now Pro For There Skatebaords" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="shagPro.aspx.cs" Inherits="AssignmentSite.articles.shagPro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Shag Is Now Pro For There Skatebaords</h1>
    <div id="article">
        <asp:Image runat="server" ID="imgMainImage" CssClass="mainImage" ImageUrl="~/images/shagPro.png"></asp:Image>
    
        <div id="articleInfo">
            <asp:Label runat="server" Text="Views: " ID="lblViews" CssClass="views"></asp:Label>
            <asp:Label runat="server" Text="Date: " ID="lblDate" CssClass="date"></asp:Label>
        </div>

        <div id="articleText">
            <p>
                With his first debut in “Euro There” released in 2020 and a fun, stylish part in the 2022 video “Ruining Skateboarding”, Shag has now been turned pro for There Skateboards. His first board will be a part of a guest artist series with Rewina Beshue. 
            </p>
        </div>

        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
