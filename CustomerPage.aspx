<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerPage.aspx.cs" Inherits="CustomerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TJ Oglesby Customer Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            Digital Upscale Manager for Ballgames</p>
        <p>
            Managing Ballgames with Technology</p>
        <asp:Label ID="lblSelectCustomer" runat="server" Text="Select Customer :"></asp:Label>
        <asp:DropDownList ID="ddlCustomerData" runat="server" DataSourceID="CustomersData" DataTextField="Name" DataValueField="CustomerID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CustomersData" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
        <p>
            <asp:Label ID="lblName" runat="server" Text="Name :"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblAddress" runat="server" Text="Address : "></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblCity" runat="server" Text="City :"></asp:Label>
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblState" runat="server" Text="State :"></asp:Label>
            <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblZipCode" runat="server" Text="Zip Code :"></asp:Label>
            <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblPhone" runat="server" Text="Phone Number :"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblEmail" runat="server" Text="Email :"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </p>
    </form>
</body>
</html>
