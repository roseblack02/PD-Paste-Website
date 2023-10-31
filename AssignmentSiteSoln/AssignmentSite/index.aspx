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
        <table align="center" class="w-50"" id="tblArticles">
            <tr>
                <td>
                    <div class="columns">
                    <h2>Popular</h2>

                    <asp:ListView ID="lvPopular" runat="server" DataSourceID="SqlDataSource1">
                        <AlternatingItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <span>No data was returned.</span>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server" style="">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Title], [Category], [ImageURL], [Views], [DatePublished], [Link] FROM [tblArticle] ORDER BY [Views] DESC"></asp:SqlDataSource>
                </div>
                </td>

                <td>
                    <div class="columns">
                    <h2>Latest</h2>
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource2">
                        <AlternatingItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <span>No data was returned.</span>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div id="itemPlaceholderContainer" runat="server" style="">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <span  class="card" style="width: 18rem;">
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("ImageURL") %>' PostBackUrl='<%# Eval("Link") %>' CssClass="card-img-top" />

                                <div class="card-body">
                                    <asp:Label ID="TitleLabel1" runat="server" Text='<%# Eval("Title") %>' CssClass="card-title"/>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        Category: 
                                        <asp:Label ID="CategoryLabel1" runat="server" Text='<%# Eval("Category") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Views: 
                                        <asp:Label ID="ViewsLabel1" runat="server" Text='<%# Eval("Views") %>'/>
                                    </li>

                                    <li class="list-group-item">
                                        Date: 
                                        <asp:Label ID="DatePublishedLabel1" runat="server" Text='<%# Eval("DatePublished") %>'/>
                                    </li>    
                                </ul>
                                <br/>
                            </span>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblArticle] ORDER BY [DatePublished] DESC"></asp:SqlDataSource>
                </div>
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>
