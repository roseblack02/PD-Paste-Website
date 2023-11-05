<%@ Page Title="Issue 1 August" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="issue1.aspx.cs" Inherits="AssignmentSite.products.issue1" %>
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

            Issue 1 released in August

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
