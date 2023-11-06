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

        function getIP() {
        
}
    </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     
    <script>
        /* use ipify api to get users ip address */

        $.getJSON("https://api.ipify.org?format=json", function (data) {
            // set tag with the id address to the ip adress
            $("#address").html(data.ip);
        })
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>cart</h1>
    <p id="address" runat="server" clientidmode="Static" style="display:none;"></p>
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

        <asp:Label ID="lblShipping" runat="server" CssClass="cartInfo" Font-Size="Large"></asp:Label>
        <br />

        <asp:Label ID="lblTotalCost" runat="server" CssClass="cartInfo" Font-Size="Large"></asp:Label>
        <br />
        <br />

        <asp:Button ID="btnPurchase" runat="server" OnClick="btnPurchase_Click" Text="Purchase" OnClientClick="return areyousurePurchase()" CssClass="buttons" style="border-radius: 5px;" Font-Size="1.2em" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" />
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" OnClientClick="return areyousure()" CssClass="buttons" style="border-radius: 5px;" Font-Size="1.2em" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" />
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
