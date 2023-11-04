<%@ Page Title="About Us" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="AssignmentSite.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>About Us</h1>

    <div id="article">
        <div id="articleText">
            <p>
            Paste Skateboard Magazine is a magazine founded in 2009 based in Belfast. 
            </p>
            <br/>

            <p>Phone Number - 028 5555 5555</p>
            <p>Email - <a href="mailto: pastemagazine@mail.com">pastemagazine@mail.com</a></p>
            <br/>

            <p>Social media links:</p>

            <div class="socialMediaLinks">
                <asp:ImageButton ID="imbIG" runat="server" AlternateText="Instagram" CssClass="socialMedia" ImageUrl="~/images/ig.png" PostBackUrl="https://instagram.com" Width="25%" />

                <asp:ImageButton ID="imbFB" runat="server" AlternateText="Instagram" CssClass="socialMedia" ImageUrl="~/images/fb.png" PostBackUrl="https://facebook.com" Width="25%" />
            </div> 
        </div>
    </div>
</asp:Content>
