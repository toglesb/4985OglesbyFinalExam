<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactListPage.aspx.cs" Inherits="ContactListPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            Digital Upscale Manager for Ballgames</p>
        <p>
            Managing Ballgames with Technology</p>
        <asp:Label ID="lblCustomerList" runat="server" Text="Customer Contact List"></asp:Label>
        <asp:ListBox ID="lbCustomerContacts" runat="server"></asp:ListBox>
        <p>
            <asp:Button ID="btnSelectCustomers" runat="server" OnClick="btnSelectCustomers_Click" Text="Select Additional Customers" Width="182px" />
            <asp:Button ID="btnRemoveCustomer" runat="server" OnClick="btnRemoveCustomer_Click" Text="Remove Customer" Width="130px" />
            <asp:Button ID="btnClearList" runat="server" OnClick="btnClearList_Click" Text="Clear List" />
        </p>
    </form>
</body>
</html>
