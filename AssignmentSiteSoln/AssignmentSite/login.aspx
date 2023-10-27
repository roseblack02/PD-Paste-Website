<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AssignmentSite.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:2%">
        <h1>Login</h1>

        <asp:Login runat="server" ID="lgLogin" OnAuthenticate="lgLogin_Authenticate"></asp:Login>
    </div>
</asp:Content>
