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

        <br />
        <br />
    </div>

    <div id="content" >
        <div id="singleColumnControls">
            <asp:Button ID="btnPopular" runat="server" Text="Sort By Popular" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" CssClass="columnControls" ForeColor="#0A1128" OnClientClick="showPopular(); return false;"/>
            <asp:Button ID="btnLatest" runat="server" Text="Sort By Latest" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" CssClass="columnControls" ForeColor="#0A1128" OnClientClick="showLatest(); return false;"/>
        </div>

        <div class="columns" id="popular" >
            <h2>Popular</h2>

            <asp:ListView ID="lvPopular" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="lvPopular_SelectedIndexChanged">
                <AlternatingItemTemplate>

                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </AlternatingItemTemplate>
                <EditItemTemplate>

                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>

                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </InsertItemTemplate>
                <ItemTemplate>
                            
                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                            
                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Title], [Category], [ImageURL], [Views], [DatePublished], [Link] FROM [tblArticle] ORDER BY [Views] DESC"></asp:SqlDataSource>
        </div>



        <div class="columns" id="latest">
            <h2>Latest</h2>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource2">
                <AlternatingItemTemplate>
                             
                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </AlternatingItemTemplate>
                <EditItemTemplate>
                             
                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                             
                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </InsertItemTemplate>
                <ItemTemplate>
                             
                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                             
                    <div class="imageWithCaption">
                        <asp:ImageButton ID="imbArticle" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("Title") %>' PostBackUrl='<%# Eval("Link") %>' />
                        <span class="caption">
                            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>'/>
                            <br />
                            Views: 
                            <asp:Label ID="lblViews" runat="server" Text='<%# Eval("Views") %>'/>
                            <br/>
                            Date: 
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("DatePublished") %>'/>
                        </span>
                    </div>

                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblArticle] ORDER BY [DatePublished] DESC"></asp:SqlDataSource>
        </div>
    </div>

    <br />
    <br />
</asp:Content>
