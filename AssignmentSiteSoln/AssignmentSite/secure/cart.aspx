<%@ Page Title="Cart" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="AssignmentSite.secure.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript" language="javascript">
        //ask if user wants to clear cart
        function areyousure() {
            var reply = confirm("Are you sure you want to empty your cart?");
            return reply;
        }

        //ask if user wants to purchase
        function areyousurePurchase() {
            var reply = confirm("Are you sure you want to purchase the contents of your cart?");
            return reply;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>cart</h1>
    <div id="content">
        <asp:DropDownList ID="ddlCurrency" runat="server" style="border-radius: 5px;" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" ViewStateMode="Enabled" OnSelectedIndexChanged="ddlCurrency_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>GBP</asp:ListItem>
            <asp:ListItem>USD</asp:ListItem>
            <asp:ListItem>EUR</asp:ListItem>
        </asp:DropDownList>

        <br/>

        <asp:Label ID="lblOrderSummary" runat="server" CssClass="demoInfo" Font-Size="Large"></asp:Label>
        <asp:Panel ID="pnlOrders" runat="server">
        </asp:Panel>

        <br />

        <asp:Label ID="lblTotalCost" runat="server" CssClass="cartInfo" Font-Size="Large"></asp:Label>

        <br />
        <br />

        <asp:Button ID="btnPurchase" runat="server" Text="Purchase" OnClientClick="return areyousurePurchase()" CssClass="buttons" style="border-radius: 5px;" Font-Size="1.2em" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" OnClick="btnPurchase_Click" />
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" OnClientClick="return areyousure()" CssClass="buttons" style="border-radius: 5px;" Font-Size="1.2em" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" />
    </div>
</asp:Content>
