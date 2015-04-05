<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <br />
    <asp:GridView ID="gvSoftwareData" runat="server" AutoGenerateColumns="False" DataKeyNames="SoftwareID" DataSourceID="sdsProducts" OnRowDeleted="gvSoftwareData_RowDeleted" OnRowUpdated="gvSoftwareData_RowUpdated">
        <Columns>
            <asp:BoundField DataField="SoftwareID" HeaderText="SoftwareID" ReadOnly="True" SortExpression="SoftwareID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Version" HeaderText="Version" SortExpression="Version" />
            <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <asp:SqlDataSource ID="sdsProducts" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" DeleteCommand="DELETE FROM [Software] WHERE [SoftwareID] = ? AND [Name] = ? AND [Version] = ? AND [ReleaseDate] = ?" InsertCommand="INSERT INTO [Software] ([SoftwareID], [Name], [Version], [ReleaseDate]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Software] ORDER BY [SoftwareID]" UpdateCommand="UPDATE [Software] SET [Name] = ?, [Version] = ?, [ReleaseDate] = ? WHERE [SoftwareID] = ? AND [Name] = ? AND [Version] = ? AND [ReleaseDate] = ?">
        <DeleteParameters>
            <asp:Parameter Name="original_SoftwareID" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Version" Type="Decimal" />
            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SoftwareID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
            <asp:Parameter Name="original_SoftwareID" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Version" Type="Decimal" />
            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblSoftwareID" runat="server" Text="Software ID : "></asp:Label>
    <asp:TextBox ID="txtSoftwareID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvSoftwareIdInsert" runat="server" ControlToValidate="txtSoftwareID" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblSoftwareName" runat="server" Text="Software Name : "></asp:Label>
    <asp:TextBox ID="txtSoftwareName" runat="server" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvSoftwareNameInsert" runat="server" ControlToValidate="txtSoftwareName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblVersion" runat="server" Text="Version : "></asp:Label>
    <asp:TextBox ID="txtVersion" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvVersionInsert" runat="server" ControlToValidate="txtVersion" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblReleaseDate" runat="server" Text="Release Date : "></asp:Label>
    <asp:TextBox ID="txtReleaseDate" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvReleaseDateInsert" runat="server" ControlToValidate="txtReleaseDate" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="btnAddSoftware" runat="server" OnClick="btnAddSoftware_Click" Text="Add New Software" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>

