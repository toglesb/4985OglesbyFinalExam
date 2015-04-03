<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="IncidentDisplay.aspx.cs" Inherits="IncidentDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" DataSourceID="sdsCustomers" DataTextField="Name" DataValueField="CustomerID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="sdsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT [CustomerID], [Name] FROM [Customer]"></asp:SqlDataSource>
    <asp:DataList ID="dlIncidentDetails" runat="server" DataSourceID="sdsIncidents" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" RepeatDirection="Horizontal" RepeatLayout="Flow">
        <ItemTemplate>
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Expr1:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
            <br />
            DateOpened:
            <asp:Label ID="DateOpenedLabel" runat="server" Text='<%# Eval("DateOpened") %>' />
            <br />
            DateClosed:
            <asp:Label ID="DateClosedLabel" runat="server" Text='<%# Eval("DateClosed") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="sdsIncidents" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT Software.Name, Support.Name AS Expr1, Feedback.DateOpened, Feedback.DateClosed, Feedback.Description FROM ((Feedback INNER JOIN Support ON Feedback.SupportID = Support.SupportID) INNER JOIN Software ON Feedback.SoftwareID = Software.SoftwareID) WHERE ([CustomerID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCustomers" Name="?" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

