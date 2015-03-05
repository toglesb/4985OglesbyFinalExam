<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SiteMapPage.aspx.cs" Inherits="SiteMapPage" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <asp:TreeView ID="tvNavigation" runat="server" DataSourceID="smdsNav" CssClass="tree" ImageSet="Arrows">
        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        <ParentNodeStyle Font-Bold="False" />
        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
</asp:TreeView>
    <asp:SiteMapDataSource ID="smdsNav" runat="server" />
</asp:Content>

