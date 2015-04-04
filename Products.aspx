<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SoftwareID" DataSourceID="sdsProducts">
        <Columns>
            <asp:BoundField DataField="SoftwareID" HeaderText="SoftwareID" ReadOnly="True" SortExpression="SoftwareID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Version" HeaderText="Version" SortExpression="Version" />
            <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Software] ORDER BY [SoftwareID]"></asp:SqlDataSource>
    <asp:Label ID="lblSoftwareID" runat="server" Text="Software ID : "></asp:Label>
    <asp:TextBox ID="txtSoftwareID" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblSoftwareName" runat="server" Text="Software Name : "></asp:Label>
    <asp:TextBox ID="txtSoftwareName" runat="server" Height="22px"></asp:TextBox>
    <br />
    <asp:Label ID="lblVersion" runat="server" Text="Version : "></asp:Label>
    <asp:TextBox ID="txtVersion" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblReleaseDate" runat="server" Text="Release Date : "></asp:Label>
    <asp:TextBox ID="txtReleaseDate" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnAddSoftware" runat="server" Text="Add New Software" />
</asp:Content>

