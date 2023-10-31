<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AssignmentSite.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Login</h1>

        <asp:Login runat="server" ID="lgLogin" OnAuthenticate="lgLogin_Authenticate" CssClass="login"></asp:Login>
    </div>
</asp:Content>
