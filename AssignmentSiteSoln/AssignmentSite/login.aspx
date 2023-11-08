<%@ Page Title="Login" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AssignmentSite.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Login</h1>
        <div id="loginControls">
            <asp:Login runat="server" ID="lgLogin" OnAuthenticate="lgLogin_Authenticate" CssClass="login" BorderColor="#0A1128" BorderStyle="None" ForeColor="#0A1128" LoginButtonText="Login" TitleText="Login">
                <LabelStyle ForeColor="#0A1128" />
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0">
                                    <tr>
                                        <td align="center" colspan="2" style="color:#0A1128;">Login</td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="color:#0A1128;">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="lgLogin">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="color:#0A1128;">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="lgLogin">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" CommandName="Login" ForeColor="#0A1128" Text="Login" ValidationGroup="lgLogin" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <LoginButtonStyle  BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" />
                <TextBoxStyle BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" />
                <TitleTextStyle ForeColor="#0A1128" />
            </asp:Login>

            <asp:Button ID="btnLogout" style="border-radius: 5px;" runat="server" Text="Logout" OnClick="btnLogout_Click" Visible="False" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" CssClass="logout buttons" ForeColor="#0A1128" />
        </div>
    </div>
</asp:Content>
