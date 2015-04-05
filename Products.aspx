<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <br />
    <asp:GridView ID="gvSoftwareData" runat="server" AutoGenerateColumns="False" DataKeyNames="SoftwareID" DataSourceID="sdsProducts" OnRowDeleted="gvSoftwareData_RowDeleted" OnRowUpdated="gvSoftwareData_RowUpdated">
        <Columns>
            <asp:BoundField DataField="SoftwareID" HeaderText="SoftwareID" ReadOnly="True" SortExpression="SoftwareID" />
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtSoftwareName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSoftwareName" runat="server" ControlToValidate="txtSoftwareName">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Version" SortExpression="Version">
                <EditItemTemplate>
                    <asp:TextBox ID="txtSoftwareVersion" runat="server" Text='<%# Bind("Version") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSoftwareVersion" runat="server" ControlToValidate="txtSoftwareVersion">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ReleaseDate" SortExpression="ReleaseDate">
                <EditItemTemplate>
                    <asp:TextBox ID="txtReleaseDate" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSoftwareReleaseDate" runat="server" ControlToValidate="txtReleaseDate">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:RequiredFieldValidator ID="rfvSoftwareIdInsert" runat="server" ControlToValidate="txtSoftwareID" ValidationGroup="Insert">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblSoftwareName" runat="server" Text="Software Name : "></asp:Label>
    <asp:TextBox ID="txtSoftwareName" runat="server" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvSoftwareNameInsert" runat="server" ControlToValidate="txtSoftwareName" ValidationGroup="Insert">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblVersion" runat="server" Text="Version : "></asp:Label>
    <asp:TextBox ID="txtVersion" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvVersionInsert" runat="server" ControlToValidate="txtVersion" ValidationGroup="Insert">*</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblReleaseDate" runat="server" Text="Release Date : "></asp:Label>
    <asp:TextBox ID="txtReleaseDate" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvReleaseDateInsert" runat="server" ControlToValidate="txtReleaseDate" ValidationGroup="Insert">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="btnAddSoftware" runat="server" OnClick="btnAddSoftware_Click" Text="Add New Software" ValidationGroup="Insert" />
    <asp:ValidationSummary ID="vsInsertErrors" runat="server" HeaderText="Please correct the following errors:" ValidationGroup="Insert" />
</asp:Content>

