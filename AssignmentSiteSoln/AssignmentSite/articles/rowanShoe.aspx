<%@ Page Title="Rowan Zorilla's New Shoe For Vans" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="rowanShoe.aspx.cs" Inherits="AssignmentSite.articles.rowanShoe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Rowan Zorilla's New Shoe For Vans</h1>
    <div id="article">
        <asp:Image runat="server" ID="imgMainImage" CssClass="mainImage" ImageUrl="~/images/rowanShoe.png"></asp:Image>
    
        <div id="articleInfo">
            <asp:Label runat="server" Text="Views: " ID="lblViews" CssClass="views"></asp:Label>
            <asp:Label runat="server" Text="Date: " ID="lblDate" CssClass="date"></asp:Label>
        </div>

        <div id="articleText">
            <p>
                Rowan Zorilla celebrates his second shoe for Vans with a friendly game of baseball. The Rowan 2 is more tech and has a more distinctive design than his first shoe but still keeps some of the same elements. 
            </p>
            <p>
                His new shoe strays from the safer, more typical Vans shoe style and instead goes for a more 90's court shoe inspired style. The shoe is also a cupsole now rather than a vulcanised shoe.
            </p>
        </div>

        <iframe id="youtube" src="https://www.youtube.com/embed/qhnUxT0P4RM?si=ayfXTJ68-PAPTBlX" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
</asp:Content>
