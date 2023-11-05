<%@ Page Title="Shop" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="AssignmentSite.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Shop</h1>

    <div id="content">
        <asp:DropDownList ID="ddlCurrency" runat="server" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128" ViewStateMode="Enabled" OnSelectedIndexChanged="ddlCurrency_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>GBP</asp:ListItem>
            <asp:ListItem>USD</asp:ListItem>
            <asp:ListItem>EUR</asp:ListItem>
        </asp:DropDownList>

        <asp:ListView ID="lvShop" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" GroupItemCount="3">
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

                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>' Visible="False" />
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
                        
                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>' Visible="False" />
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
                        
                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>' Visible="False" />
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
                        
                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>' Visible="False" />
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
                        
                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>' Visible="False" />
                    </span>
                </div>

            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
    </div>
</asp:Content>

