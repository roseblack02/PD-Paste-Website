<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="AssignmentSite.admin.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:2%">
        <h1>Admin</h1>

        <h2>Featured Articles</h2>
        <asp:GridView ID="gdvFeatured" runat="server" AutoGenerateColumns="False" DataKeyNames="FeaturedID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gdvFeatured_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="FeaturedID" HeaderText="FeaturedID" InsertVisible="False" ReadOnly="True" SortExpression="FeaturedID" />
                <asp:BoundField DataField="ArticleID" HeaderText="ArticleID" SortExpression="ArticleID" />
            </Columns>
        </asp:GridView>

        <br />
        <br />

        <h3>Update Featured Articles</h3>
        <asp:Label ID="lblFeatured" runat="server" Text="Featured ID"></asp:Label> <asp:TextBox ID="txtFeatured" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblArticle" runat="server" Text="Article ID"></asp:Label> <asp:TextBox ID="txtArticle" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" /> <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>

        <br />
        <br />

        <h2>All Articles</h2>
        <asp:GridView ID="gdvArticles" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="ImageURL" HeaderText="ImageURL" SortExpression="ImageURL" />
                <asp:BoundField DataField="Views" HeaderText="Views" SortExpression="Views" />
                <asp:BoundField DataField="DatePublished" HeaderText="DatePublished" SortExpression="DatePublished" />
                <asp:BoundField DataField="Link" HeaderText="Link" SortExpression="Link" />
            </Columns>
        </asp:GridView>

        <br />
        <br />

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblArticle]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [tblFeatured]"></asp:SqlDataSource>
    </div>
</asp:Content>
