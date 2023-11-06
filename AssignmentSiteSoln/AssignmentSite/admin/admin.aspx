<%@ Page Title="Admin" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="AssignmentSite.admin.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <h1>Admin</h1>

        <div id="adminInfo">
            <h2>Featured Articles</h2>
            <asp:GridView ID="gvFeatured" runat="server" AutoGenerateColumns="False" DataKeyNames="FeaturedID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gvFeatured_SelectedIndexChanged" CssClass="adminTables" BackColor="White" ForeColor="#0A1128" CaptionAlign="Left" CellPadding="1" CellSpacing="2" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" BorderWidth="1px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="FeaturedID" HeaderText="FeaturedID" InsertVisible="False" ReadOnly="True" SortExpression="FeaturedID" />
                    <asp:BoundField DataField="ArticleID" HeaderText="ArticleID" SortExpression="ArticleID" />
                </Columns>
                <EditRowStyle BackColor="#EEE1B3" BorderColor="#0A1128" BorderStyle="Solid" BorderWidth="1px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
                <HeaderStyle BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" BorderWidth="3px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
                <RowStyle BackColor="#EEE1B3" BorderColor="#0A1128" BorderStyle="Solid" BorderWidth="1px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="White" BorderStyle="Solid" BorderWidth="1px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:GridView>
           <br />
           <br />

            <h2>All Articles</h2>
            <asp:GridView ID="gvArticles" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="gvArticles_SelectedIndexChanged" CssClass="adminTables" BackColor="White" ForeColor="#0A1128" Width="100%" CaptionAlign="Left" CellPadding="1" CellSpacing="2" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" BorderWidth="1px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="ImageURL" HeaderText="ImageURL" SortExpression="ImageURL" />
                    <asp:BoundField DataField="Views" HeaderText="Views" SortExpression="Views" />
                    <asp:BoundField DataField="DatePublished" HeaderText="DatePublished" SortExpression="DatePublished" />
                    <asp:BoundField DataField="Link" HeaderText="Link" SortExpression="Link" />
                </Columns>
                <EditRowStyle BackColor="#EEE1B3" BorderColor="#0A1128" BorderStyle="Solid" BorderWidth="1px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
                <HeaderStyle BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" BorderWidth="3px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
                <RowStyle BackColor="#EEE1B3" BorderColor="#0A1128" BorderStyle="Solid" BorderWidth="1px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="White" BorderStyle="Solid" BorderWidth="1px" ForeColor="#0A1128" HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:GridView>
            <br />
            <br />
        </div>

        <div id="adminUpdate">
            <h2>Update Featured Articles</h2>
            <asp:Label ID="lblFeatured" runat="server" Text="Featured ID"></asp:Label> <asp:TextBox ID="txtFeatured" runat="server" ReadOnly="True" style="border-radius: 5px;" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128"></asp:TextBox>
            <br />

            <asp:Label ID="lblArticle" runat="server" Text="Article ID"></asp:Label> <asp:TextBox ID="txtArticle" runat="server" ReadOnly="True" style="border-radius: 5px;" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" style="border-radius: 5px;" BackColor="#92BFD4" BorderColor="#0A1128" BorderStyle="Solid" ForeColor="#0A1128"/> <asp:Label ID="lblOutput" runat="server" Text="" ></asp:Label>
            <br />
            <br />
        </div>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblArticle]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [tblFeatured]"></asp:SqlDataSource>
    </div>
</asp:Content>
