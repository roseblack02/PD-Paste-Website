<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="shagPro.aspx.cs" Inherits="AssignmentSite.articles.shagPro" %>
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
                For the new drop, THERE partnered with Rewina Beshue for a limited run of decks for Kien, Marbie, and NEW PRO – Shag. Rewina Beshue is a San Francisco-born artist, illustrator, and skater.
            </p>
        </div>
    </div>
</asp:Content>
