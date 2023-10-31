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

        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <span style="">
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                <asp:ImageButton ID="ImageButton" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="images" />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                Views:
                <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                <br />
                DatePublished:
                <asp:Label ID="DatePublishedLabel" runat="server" Text='<%# Eval("DatePublished") %>' />
                <br />
                <br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                <asp:ImageButton ID="ImageButton" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="images" />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                Views:
                <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                <br />
                DatePublished:
                <asp:Label ID="DatePublishedLabel" runat="server" Text='<%# Eval("DatePublished") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                <asp:ImageButton ID="ImageButton" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="images" />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                Views:
                <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                <br />
                DatePublished:
                <asp:Label ID="DatePublishedLabel" runat="server" Text='<%# Eval("DatePublished") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="">
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                <asp:ImageButton ID="ImageButton" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="images" />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                Views:
                <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                <br />
                DatePublished:
                <asp:Label ID="DatePublishedLabel" runat="server" Text='<%# Eval("DatePublished") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="">
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                <asp:ImageButton ID="ImageButton" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="images" />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                Views:
                <asp:Label ID="ViewsLabel" runat="server" Text='<%# Eval("Views") %>' />
                <br />
                DatePublished:
                <asp:Label ID="DatePublishedLabel" runat="server" Text='<%# Eval("DatePublished") %>' />
                <br />
                <br /></span>
            </SelectedItemTemplate>
        </asp:ListView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Title], [Category], [ImageURL], [Views], [DatePublished], [Link] FROM [tblArticle] ORDER BY [Views] DESC"></asp:SqlDataSource>

    </div>
</asp:Content>
