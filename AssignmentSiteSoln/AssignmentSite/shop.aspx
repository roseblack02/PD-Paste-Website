<%@ Page Title="Shop" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="AssignmentSite.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Shop</h1>
    
    <div id="content">
        <asp:ListView ID="lvShop" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" GroupItemCount="3" OnItemDataBound="lvShop_ItemDataBound">
            <AlternatingItemTemplate>

                <div class="imageWithCaption product">
                    <asp:ImageButton ID="imbProduct" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("ProductName") %>' PostBackUrl='<%# Eval("Link") %>' />
                    <span class="caption">
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("ProductName") %>'/>
                        <br />
                        <asp:Label ID="lblPrice" runat="server" Text="Price: £"></asp:Label>
                        <asp:Label ID="lblCost" runat="server" Text='<%# Eval("Price") %>'/>
                        <br/>
                        <asp:Label ID="lblInStock" runat="server" Text="In Stock"></asp:Label>
                        <asp:Label ID="lblStockNum" runat="server" Text='<%# Eval("Stock") %>' Visible="False" />
                    </span>
                </div>

            </AlternatingItemTemplate>
            <EditItemTemplate>
                
                <div class="imageWithCaption product">
                    <asp:ImageButton ID="imbProduct" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("ProductName") %>' PostBackUrl='<%# Eval("Link") %>' />
                    <span class="caption">
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("ProductName") %>'/>
                        <br />
                        <asp:Label ID="lblPrice" runat="server" Text="Price: £"></asp:Label>
                        <asp:Label ID="lblCost" runat="server" Text='<%# Eval("Price") %>'/>
                        <br/>
                        <asp:Label ID="lblInStock" runat="server" Text="In Stock"></asp:Label>
                        <asp:Label ID="lblStockNum" runat="server" Text='<%# Eval("Stock") %>' Visible="False" />
                    </span>
                </div>

            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                
                <div class="imageWithCaption product">
                    <asp:ImageButton ID="imbProduct" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("ProductName") %>' PostBackUrl='<%# Eval("Link") %>' />
                    <span class="caption">
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("ProductName") %>'/>
                        <br />
                        <asp:Label ID="lblPrice" runat="server" Text="Price: £"></asp:Label>
                        <asp:Label ID="lblCost" runat="server" Text='<%# Eval("Price") %>'/>
                        <br/>
                        <asp:Label ID="lblInStock" runat="server" Text="In Stock"></asp:Label>
                        <asp:Label ID="lblStockNum" runat="server" Text='<%# Eval("Stock") %>' Visible="False" />
                    </span>
                </div>

            </InsertItemTemplate>
            <ItemTemplate>
                
                <div class="imageWithCaption product">
                    <asp:ImageButton ID="imbProduct" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("ProductName") %>' PostBackUrl='<%# Eval("Link") %>' />
                    <span class="caption">
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("ProductName") %>'/>
                        <br />
                        <asp:Label ID="lblPrice" runat="server" Text="Price: £"></asp:Label>
                        <asp:Label ID="lblCost" runat="server" Text='<%# Eval("Price") %>'/>
                        <br/>
                        <asp:Label ID="lblInStock" runat="server" Text="In Stock"></asp:Label>
                        <asp:Label ID="lblStockNum" runat="server" Text='<%# Eval("Stock") %>' Visible="False" />
                    </span>
                </div>

            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                
                <div class="imageWithCaption product">
                    <asp:ImageButton ID="imbProduct" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="100%" CssClass="image" AlternateText='<%# Eval("ProductName") %>' PostBackUrl='<%# Eval("Link") %>' />
                    <span class="caption">
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("ProductName") %>'/>
                        <br />
                        <asp:Label ID="lblPrice" runat="server" Text="Price: £"></asp:Label>
                        <asp:Label ID="lblCost" runat="server" Text='<%# Eval("Price") %>'/>
                        <br/>
                        <asp:Label ID="lblInStock" runat="server" Text="In Stock"></asp:Label>
                        <asp:Label ID="lblStockNum" runat="server" Text='<%# Eval("Stock") %>' Visible="False" />
                    </span>
                </div>

            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
    </div>
</asp:Content>

