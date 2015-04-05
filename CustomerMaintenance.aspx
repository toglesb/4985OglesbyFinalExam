<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomerMaintenance.aspx.cs" Inherits="CustomerMaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <br />
    <asp:SqlDataSource ID="sdsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT [Name], [City], [State] FROM [Customer] ORDER BY [Name]"></asp:SqlDataSource>
    <asp:GridView ID="gvCustomerInfo" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Name" DataSourceID="sdsCustomers" PageSize="6" SelectedIndex="0">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="lblError" runat="server"></asp:Label>
    <asp:DetailsView ID="dvCustomerDetail" runat="server" AutoGenerateRows="False" DataKeyNames="CustomerID" DataSourceID="sdsCustomerDetails" Height="50px" OnItemDeleted="dvCustomerDetail_ItemDeleted" OnItemInserted="dvCustomerDetail_ItemInserted" OnItemUpdated="dvCustomerDetail_ItemUpdated" Width="125px">
        <Fields>
            <asp:TemplateField HeaderText="CustomerID" SortExpression="CustomerID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CustomerID") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtCustomerID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerID" runat="server" ControlToValidate="txtCustomerID">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCustomerName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerName" runat="server" ControlToValidate="txtCustomerName">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtCustomerName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerName" runat="server" ControlToValidate="txtCustomerName">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCustomerAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerAddress" runat="server" ControlToValidate="txtCustomerAddress">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtCustomerAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerAddress" runat="server" ControlToValidate="txtCustomerAddress">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City" SortExpression="City">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCustomerCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerCity" runat="server" ControlToValidate="txtCustomerCity">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtCustomerCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerCity" runat="server" ControlToValidate="txtCustomerCity">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State" SortExpression="State">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sdsStates" DataTextField="StateName" DataValueField="StateCode" SelectedValue='<%#Bind("State") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlStateCode" runat="server" DataSourceID="sdsStates" DataTextField="StateCode" DataValueField="StateCode" SelectedValue='<%#Bind("State") %>'>
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ZipCode" SortExpression="ZipCode">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCustomerZipCode" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerZipCode" runat="server" ControlToValidate="txtCustomerZipCode">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtCustomerZipCode" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerZipCode" runat="server" ControlToValidate="txtCustomerZipCode">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ZipCode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCustomerPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerPhone" runat="server" ControlToValidate="txtCustomerPhone">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtCustomerPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerPhone" runat="server" ControlToValidate="txtCustomerPhone">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCustomerDetail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerEmail" runat="server" ControlToValidate="txtCustomerDetail">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtCustomerEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCustomerEmail" runat="server" ControlToValidate="txtCustomerEmail">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="sdsCustomerDetails" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = ?" InsertCommand="INSERT INTO [Customer] ([CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer] WHERE ([Name] = ?)" UpdateCommand="UPDATE [Customer] SET [Name] = ?, [Address] = ?, [City] = ?, [State] = ?, [ZipCode] = ?, [Phone] = ?, [Email] = ? WHERE [CustomerID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvCustomerInfo" Name="Name" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZipCode" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsStates" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" DeleteCommand="DELETE FROM [States] WHERE [StateCode] = ?" InsertCommand="INSERT INTO [States] ([StateCode], [StateName]) VALUES (?, ?)" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT [StateCode], [StateName] FROM [States]" UpdateCommand="UPDATE [States] SET [StateName] = ? WHERE [StateCode] = ?">
        <DeleteParameters>
            <asp:Parameter Name="StateCode" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StateCode" Type="String" />
            <asp:Parameter Name="StateName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="StateName" Type="String" />
            <asp:Parameter Name="StateCode" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

