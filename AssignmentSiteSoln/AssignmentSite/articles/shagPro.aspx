<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="shagPro.aspx.cs" Inherits="AssignmentSite.articles.shagPro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image runat="server" ID="imgMainImage" CssClass="mainImage" ImageUrl="~/images/shagPro.png"></asp:Image>
    <br />
    <asp:Label runat="server" Text="Shag Is Now Pro For There Skatebaords" ID="lblTitle" CssClass="title" Font-Size="Large"></asp:Label>
    <asp:Label runat="server" Text="Views: " ID="lblViews" CssClass="views"></asp:Label>
    <asp:Label runat="server" Text="Date: " ID="lblDate" CssClass="date"></asp:Label>
    <br />
    <p>
        Text
    </p>
</asp:Content>
