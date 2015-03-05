<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerListPage.aspx.cs" Inherits="CustomerPage" MasterPageFile="~/Site.master"%>
<asp:Content ContentPlaceHolderID="headPlaceholder" runat="server">
    <link href="Styles/Main.css" rel="stylesheet" />
</asp:Content>

<asp:Content ContentPlaceHolderID="formPlaceholder" runat="server">
    <div>
    
    </div>

        <p>
            
         <asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>
            
        </p>
        <asp:Label ID="lblSelectCustomer" runat="server" Text="Select Customer :" CssClass="label"></asp:Label>
        <asp:DropDownList ID="ddlCustomerData" runat="server" DataSourceID="CustomersData" DataTextField="Name" DataValueField="CustomerID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="CustomersData" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Customer] ORDER BY [Name]"></asp:SqlDataSource>
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
    </asp:Content>
