<%@ Page Title="Home" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AssignmentSite.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Home</h1>
    
    <div class="carousel">
        <div class="slideshow-container">
	        <div class="mySlides">
                <asp:ImageButton ID="imbFeatured1" runat="server" ImageUrl="~/images/temp.png" Width="100%" CssClass="slideImage" AlternateText="..." PostBackUrl="~/index.aspx" />
  		        <div class="textCaption">
                      <asp:Label ID="lblFeatured1" runat="server" Text="No Caption Available"></asp:Label>
  		        </div>
	        </div>

            <div class="mySlides">
  		        <asp:ImageButton ID="imbFeatured2" runat="server" ImageUrl="~/images/temp.png" Width="100%" CssClass="slideImage" PostBackUrl="~/index.aspx" AlternateText="..." />
  		        <div class="textCaption">
                      <asp:Label ID="lblFeatured2" runat="server" Text="No Caption Available"></asp:Label>
  		        </div>
	        </div>

            <div class="mySlides">
  		        <asp:ImageButton ID="imbFeatured3" runat="server" ImageUrl="~/images/temp.png" Width="100%" CssClass="slideImage" AlternateText="..." PostBackUrl="~/index.aspx" />
  		        <div class="textCaption">
                      <asp:Label ID="lblFeatured3" runat="server" Text="No Caption Available"></asp:Label>
  		        </div>
	        </div>

            <div class="mySlides">
  		        <asp:ImageButton ID="imbFeatured4" runat="server" ImageUrl="~/images/temp.png" Width="100%" CssClass="slideImage" AlternateText="..." PostBackUrl="~/index.aspx" />
  		        <div class="textCaption">
                      <asp:Label ID="lblFeatured4" runat="server" Text="No Caption Available"></asp:Label>
  		        </div>
	        </div>

            <div class="mySlides">
  		        <asp:ImageButton ID="imbFeatured5" runat="server" ImageUrl="~/images/temp.png" Width="100%" CssClass="slideImage" AlternateText="..." PostBackUrl="~/index.aspx" />
  		        <div class="textCaption">
                      <asp:Label ID="lblFeatured5" runat="server" Text="No Caption Available"></asp:Label>
  		        </div>
	        </div>

	        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
	        <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>

        <div style="text-align:center">
  	        <span class="dot" onclick="currentSlide(1)"></span> 
  	        <span class="dot" onclick="currentSlide(2)"></span> 
  	        <span class="dot" onclick="currentSlide(3)"></span> 
  	        <span class="dot" onclick="currentSlide(4)"></span>
            <span class="dot" onclick="currentSlide(5)"></span> 
        </div>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [qryFeatured]"></asp:SqlDataSource>
</asp:Content>
