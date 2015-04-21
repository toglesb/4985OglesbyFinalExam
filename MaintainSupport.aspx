<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MaintainSupport.aspx.cs" Inherits="MaintainSupport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <asp:DropDownList ID="ddlSupportMembers" runat="server" AutoPostBack="True" DataSourceID="sdsSupportNames" DataTextField="Name" DataValueField="SupportID">
    </asp:DropDownList>
    <br />
    <br />
    <asp:SqlDataSource ID="sdsSupportNames" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT [SupportID], [Name] FROM [Support] ORDER BY [Name]"></asp:SqlDataSource>
    <br />
    <asp:FormView ID="fvSupportDetails" runat="server" DataKeyNames="SupportID" DataSourceID="sdsSupportDetails" OnItemDeleted="fvSupportDetails_ItemDeleted" OnItemInserted="fvSupportDetails_ItemInserted" OnItemUpdated="fvSupportDetails_ItemUpdated">
        <EditItemTemplate>
            <asp:Label ID="lblSupportID" runat="server" CssClass="labelMain" Text="Support ID :"></asp:Label>
&nbsp;<asp:Label ID="SupportIDLabel1" runat="server" Text='<%# Eval("SupportID") %>' CssClass="label" />
            <br />
            <br />
            <asp:Label ID="lblName" runat="server" CssClass="labelMain" Text="Name : "></asp:Label>
            <asp:TextBox ID="txtEditName" runat="server" Text='<%# Bind("Name") %>' CssClass="textbox" />
            <asp:RequiredFieldValidator ID="rfvEditName" runat="server" ControlToValidate="txtEditName" CssClass="error" ErrorMessage="Name is required.">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblEmail" runat="server" CssClass="labelMain" Text="Email : "></asp:Label>
            &nbsp;<asp:TextBox ID="txtEditEmail" runat="server" Text='<%# Bind("Email") %>' CssClass="textbox" />
            <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" ControlToValidate="txtEditEmail" CssClass="error" ErrorMessage="Email is required.">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblPhone" runat="server" CssClass="labelMain" Text="Phone :"></asp:Label>
            <asp:TextBox ID="txtEditPhone" runat="server" Text='<%# Bind("Phone") %>' CssClass="textbox" />
            <asp:RequiredFieldValidator ID="rfvEditPhone" runat="server" ControlToValidate="txtEditPhone" CssClass="error" ErrorMessage="Phone number is required.">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Support ID:&nbsp;<asp:TextBox ID="txtID" runat="server" Text='<%# Bind("SupportID") %>' />
            <asp:RequiredFieldValidator ID="rfvSupportID" runat="server" ControlToValidate="txtID" ErrorMessage="Support ID is required." CssClass="error">*</asp:RequiredFieldValidator>
            <br />
            Name : &nbsp;<asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." CssClass="error">*</asp:RequiredFieldValidator>
            <br />
            Email : &nbsp;<asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>' />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="error">*</asp:RequiredFieldValidator>
            <br />
            Phone : &nbsp;<asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("Phone") %>' />
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." CssClass="error">*</asp:RequiredFieldValidator>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" PostBackUrl="~/MaintainSupport.aspx" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Label ID="lblSupportID" runat="server" CssClass="labelMain" Text="Support ID :"></asp:Label>
            &nbsp;<asp:Label ID="SupportIDLabel" runat="server" Text='<%# Eval("SupportID") %>' CssClass="label" />
            <br />
            <br />
            <asp:Label ID="lblName" runat="server" CssClass="labelMain" Text="Name :"></asp:Label>
            &nbsp;<asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' CssClass="label" />
            <br />
            <br />
            <asp:Label ID="lblEmail" runat="server" CssClass="labelMain" Text="Email :"></asp:Label>
&nbsp;<asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' CssClass="label" />
            <br />
            <br />
            <asp:Label ID="lblPhone" runat="server" CssClass="labelMain" Text="Phone : "></asp:Label>
&nbsp;<asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' CssClass="label" />
            <br />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="sdsSupportDetails" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" DeleteCommand="DELETE FROM [Support] WHERE [SupportID] = ?" InsertCommand="INSERT INTO [Support] ([SupportID], [Name], [Email], [Phone]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Support] WHERE ([SupportID] = ?)" UpdateCommand="UPDATE [Support] SET [Name] = ?, [Email] = ?, [Phone] = ? WHERE [SupportID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="SupportID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SupportID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlSupportMembers" Name="SupportID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="SupportID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>
    <asp:ValidationSummary ID="vsErrors" runat="server" CssClass="error" />
    <br />
</asp:Content>

