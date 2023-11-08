<%@ Page Title="Hand Printed T-Shirt Small" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="handPrintedS.aspx.cs" Inherits="AssignmentSite.products.handPrintedS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <asp:Image ID="imgProduct" runat="server" ImageUrl="~/images/temp.png" AlternateText="" CssClass="imgProduct" />

        <br/>

        <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" CssClass="buttons" style="border-radius: 5px;" Font-Size="1.2em" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" OnClick="btnAddToCart_Click" />

        <span class="description">
            <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
            
            <br/>
            <br/>

            Hand printed t-shirt size small

            <br/>
            <br/>

            <div style="display: block; margin-left: auto; margin-right: auto;">
                <asp:Label ID="lblSize" runat="server" Text="Size selected: Small"></asp:Label>
                <asp:DropDownList ID="ddlSize" runat="server" style="border-radius: 5px;" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" ViewStateMode="Enabled" OnSelectedIndexChanged="ddlSize_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Select Size</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                    <asp:ListItem>Medium</asp:ListItem>
                    <asp:ListItem>Small</asp:ListItem>
                </asp:DropDownList>
            </div>
            

            <br/>

            <asp:DropDownList ID="ddlCurrency" runat="server" style="border-radius: 5px;" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" ViewStateMode="Enabled" OnSelectedIndexChanged="ddlCurrency_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>GBP</asp:ListItem>
                <asp:ListItem>USD</asp:ListItem>
                <asp:ListItem>EUR</asp:ListItem>
            </asp:DropDownList>

            <asp:Label ID="lblPrice" runat="server" Text="Price: £"></asp:Label>
            <asp:Label ID="lblCost" runat="server" Text=""></asp:Label>
            <br/>
            <asp:Label ID="lblInStock" runat="server" Text=""></asp:Label>
        </span>
    </div>
</asp:Content>
