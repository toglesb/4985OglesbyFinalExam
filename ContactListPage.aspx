<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactListPage.aspx.cs" Inherits="ContactListPage" MasterPageFile="~/Site.master"%>

<asp:Content runat="server" ContentPlaceHolderID="headPlaceholder">
    <link href="Styles/Main.css" rel="stylesheet" />
</asp:Content>
 

    
 <asp:Content ContentPlaceHolderID="formPlaceholder" runat="server">
     <div>
    
    </div>

        <asp:Label ID="lblCustomerList" runat="server" Text="Customer Contact List" CssClass="label"></asp:Label>
        <asp:ListBox ID="lbCustomerContacts" runat="server" CssClass="ddl"></asp:ListBox>
        <p>
            <asp:Button ID="btnSelectCustomers" runat="server" OnClick="btnSelectCustomers_Click" Text="Select Additional Customers" Width="182px" CssClass="button" />
            <asp:Button ID="btnRemoveCustomer" runat="server" OnClick="btnRemoveCustomer_Click" Text="Remove Customer" Width="130px" CssClass="button" />
            <asp:Button ID="btnClearList" runat="server" OnClick="btnClearList_Click" Text="Clear List" CssClass="button" />
        </p>

   
</asp:Content>

