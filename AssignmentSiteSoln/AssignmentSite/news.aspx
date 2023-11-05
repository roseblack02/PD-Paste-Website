<%@ Page Title="News" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="AssignmentSite.news" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>News</h1>
    <div id="content" >
        <div id="singleColumnControls">
            <asp:Button ID="btnPopular" runat="server" Text="Sort By Popular" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" CssClass="columnControls" ForeColor="#0A1128" OnClientClick="showPopular(); return false;" Width="49%"/>
            <asp:Button ID="btnLatest" runat="server" Text="Sort By Latest" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" CssClass="columnControls" ForeColor="#0A1128" OnClientClick="showLatest(); return false;" Width="49%"/>
        </div>

        <div class="columns" id="popular" >
            <h2>Popular</h2>

            <asp:ListView ID="lvPopular" runat="server" DataSourceID="SqlDataSource1">
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblArticle] WHERE ([Category] = ?) ORDER BY [Views] DESC">
                <SelectParameters>
                    <asp:Parameter DefaultValue="news" Name="Category" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblArticle] WHERE ([Category] = ?) ORDER BY [DatePublished] DESC">
                <SelectParameters>
                    <asp:Parameter DefaultValue="News" Name="Category" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

    <br />
    <br />
</asp:Content>
