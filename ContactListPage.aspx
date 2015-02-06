<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactListPage.aspx.cs" Inherits="ContactListPage" %>

<!DOCTYPE html>
<link href="Styles/Style.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <h1>
            Digital Upscale Manager for Ballgames</h1>
        <h3>
            Managing Ballgames with Technology</h3>
        <asp:Label ID="lblCustomerList" runat="server" Text="Customer Contact List" CssClass="label"></asp:Label>
        <asp:ListBox ID="lbCustomerContacts" runat="server" CssClass="ddl"></asp:ListBox>
        <p>
            <asp:Button ID="btnSelectCustomers" runat="server" OnClick="btnSelectCustomers_Click" Text="Select Additional Customers" Width="182px" CssClass="button" />
            <asp:Button ID="btnRemoveCustomer" runat="server" OnClick="btnRemoveCustomer_Click" Text="Remove Customer" Width="130px" CssClass="button" />
            <asp:Button ID="btnClearList" runat="server" OnClick="btnClearList_Click" Text="Clear List" CssClass="button" />
        </p>
    </form>
</body>
</html>
