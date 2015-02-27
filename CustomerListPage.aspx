<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerListPage.aspx.cs" Inherits="CustomerPage" %>

<!DOCTYPE html>
<link href="Styles/Style.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TJ Oglesby Customer Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <h1>
            Digital Upscale Manager for Ballgames</h1>
        <h3>
            Managing Ballgames with Technology</h3>
        <p>
            
            <asp:Label ID="lblError" runat="server"></asp:Label>
            
        </p>
        <asp:Label ID="lblSelectCustomer" runat="server" Text="Select Customer :" CssClass="label"></asp:Label>
        <asp:DropDownList ID="ddlCustomerData" runat="server" DataSourceID="CustomersData" DataTextField="Name" DataValueField="CustomerID" AutoPostBack="True" CssClass="text">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CustomersData" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
        <p>
            <asp:Label ID="lblName" runat="server" Text="Name :" CssClass="label"></asp:Label>
            <asp:Label ID="txtName" runat="server" CssClass="text"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblAddress" runat="server" Text="Address : " CssClass="label"></asp:Label>
            <asp:Label ID="txtAddress" runat="server" CssClass="text"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblCity" runat="server" Text="City :" CssClass="label"></asp:Label>
            <asp:Label ID="txtCity" runat="server" CssClass="text"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblState" runat="server" Text="State :" CssClass="label"></asp:Label>
            <asp:Label ID="txtState" runat="server" CssClass="text"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblZipCode" runat="server" Text="Zip Code :" CssClass="label"></asp:Label>
            <asp:Label ID="txtZipCode" runat="server" CssClass="text"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblPhone" runat="server" Text="Phone Number :" CssClass="label"></asp:Label>
            <asp:Label ID="txtPhone" runat="server" CssClass="text"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblEmail" runat="server" Text="Email :" CssClass="label"></asp:Label>
            <asp:Label ID="txtEmail" runat="server" CssClass="text"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnViewContacts" runat="server" OnClick="btnViewContacts_Click" Text="View Contact List" CssClass="button" />
            <asp:Button ID="btnAddContacts" runat="server" OnClick="btnAddContacts_Click" Text="Add to Contacts" CssClass="button" />
        </p>
    </form>
</body>
</html>
