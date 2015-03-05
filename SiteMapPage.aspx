<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SiteMapPage.aspx.cs" Inherits="SiteMapPage" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <asp:TreeView ID="tvNavigation" runat="server" DataSourceID="smdsNav">
</asp:TreeView>
    <asp:SiteMapDataSource ID="smdsNav" runat="server" />
</asp:Content>

