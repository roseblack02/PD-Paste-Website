<%@ Page Title="Login" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AssignmentSite.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Login</h1>
        <div id="loginControls">
            <asp:Login runat="server" ID="lgLogin" OnAuthenticate="lgLogin_Authenticate" CssClass="login" BorderColor="#0A1128" BorderStyle="None" ForeColor="#0A1128" LoginButtonText="Login" TitleText="Login">
                <LabelStyle ForeColor="#0A1128" />
                <LoginButtonStyle  BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" />
                <TextBoxStyle BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" />
                <TitleTextStyle ForeColor="#0A1128" />
            </asp:Login>

            <asp:Button ID="btnLogout" style="border-radius: 5px;" runat="server" Text="Logout" OnClick="btnLogout_Click" Visible="False" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" CssClass="logout buttons" ForeColor="#0A1128" />
        </div>
    </div>
</asp:Content>
