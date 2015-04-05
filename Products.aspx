<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <br />
    <asp:GridView ID="gvSoftwareData" runat="server" AutoGenerateColumns="False" DataKeyNames="SoftwareID" DataSourceID="sdsProducts" OnRowDeleted="gvSoftwareData_RowDeleted" OnRowUpdated="gvSoftwareData_RowUpdated" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="SoftwareID" HeaderText="SoftwareID" ReadOnly="True" SortExpression="SoftwareID" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" Width="160px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtSoftwareName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSoftwareName" runat="server" ControlToValidate="txtSoftwareName" CssClass="error" Display="Dynamic" ErrorMessage="Software name is required.">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" Width="160px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Version" SortExpression="Version">
                <EditItemTemplate>
                    <asp:TextBox ID="txtSoftwareVersion" runat="server" Text='<%# Bind("Version") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSoftwareVersion" runat="server" ControlToValidate="txtSoftwareVersion" CssClass="error" Display="Dynamic" ErrorMessage="Software Version is required.">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblVersion" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ReleaseDate" SortExpression="ReleaseDate">
                <EditItemTemplate>
                    <asp:TextBox ID="txtReleaseDate" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSoftwareReleaseDate" runat="server" ControlToValidate="txtReleaseDate" CssClass="error" Display="Dynamic" ErrorMessage="Software release date is required.">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblReleaseDate" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" Width="160px" />
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#ff5a09" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:ValidationSummary ID="vsSoftwareInfo" runat="server" CssClass="error" HeaderText="Please correct the following errors:" />
    <br />
    <br />
    <br />
    <asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>
    <br />
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
    <br />
    <asp:Label ID="lblSoftwareID" runat="server" CssClass="label" Text="Software ID : " Width="8em"></asp:Label>
    <asp:TextBox ID="txtSoftwareID" runat="server" CssClass="text"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvSoftwareIdInsert" runat="server" ControlToValidate="txtSoftwareID" CssClass="error" ErrorMessage="Software ID is required." ValidationGroup="Insert">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblSoftwareName" runat="server" CssClass="label" Text="Software Name : " Width="8em"></asp:Label>
    <asp:TextBox ID="txtSoftwareName" runat="server" CssClass="text" Height="22px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvSoftwareNameInsert" runat="server" ControlToValidate="txtSoftwareName" CssClass="error" ErrorMessage="Software name is required" ValidationGroup="Insert">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblVersion" runat="server" CssClass="label" Text="Version : " Width="8em"></asp:Label>
    <asp:TextBox ID="txtVersion" runat="server" CssClass="text"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvVersionInsert" runat="server" ControlToValidate="txtVersion" CssClass="error" ErrorMessage="Software version is required." ValidationGroup="Insert">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblReleaseDate" runat="server" CssClass="label" Text="Release Date : " Width="8em"></asp:Label>
    <asp:TextBox ID="txtReleaseDate" runat="server" CssClass="text"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvReleaseDateInsert" runat="server" ControlToValidate="txtReleaseDate" CssClass="error" ErrorMessage="Software release date is required." ValidationGroup="Insert">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:Button ID="btnAddSoftware" runat="server" OnClick="btnAddSoftware_Click" Text="Add New Software" ValidationGroup="Insert" />
    <asp:ValidationSummary ID="vsInsertErrors" runat="server" CssClass="error" HeaderText="Please correct the following errors:" ValidationGroup="Insert" />
</asp:Content>

