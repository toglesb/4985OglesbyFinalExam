<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FeedbackBySupport.aspx.cs" Inherits="FeedbackBySupport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="odsSupportStaff" DataTextField="Name" DataValueField="SupportID">
    </asp:DropDownList>
    <br />
    <asp:ObjectDataSource ID="odsSupportStaff" runat="server" SelectMethod="GetAllSupportStaff" TypeName="SupportDatabase"></asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="odsFeedbackData">
        <Columns>
            <asp:BoundField DataField="DateOpened" HeaderText="Date Opened" SortExpression="DateOpened" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="odsFeedbackData" runat="server" SelectMethod="GetOpenFeedbackIncidents" TypeName="FeedbackDatabase">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="supportStaffId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT Feedback.DateOpened , Software.Name, Customer.Name AS Expr1 FROM ((Customer INNER JOIN Feedback ON Customer.CustomerID = Feedback.CustomerID) INNER JOIN Software ON Feedback.SoftwareID = Software.SoftwareID) WHERE (Feedback.SupportID = ?) AND DateClosed IS NULL ORDER BY Feedback.DateOpened">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="14" Name="?" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

