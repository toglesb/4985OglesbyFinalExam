<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FeedbackBySupport.aspx.cs" Inherits="FeedbackBySupport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="odsSupportStaff" DataTextField="Name" DataValueField="SupportID">
    </asp:DropDownList>
    <br />
    <asp:ObjectDataSource ID="odsSupportStaff" runat="server" SelectMethod="GetAllSupportStaff" TypeName="SupportDatabase"></asp:ObjectDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="odsFeedbackData">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="DateOpened" HeaderText="Date Opened" SortExpression="DateOpened" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" Width="160px" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Software Name" SortExpression="Name">
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" SortExpression="CustomerName">
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" Width="160px" />
            </asp:BoundField>
        </Columns>
        <HeaderStyle BackColor="#FF5A09" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" />
    </asp:GridView>
    <asp:ObjectDataSource ID="odsFeedbackData" runat="server" SelectMethod="GetOpenFeedbackIncidents" TypeName="FeedbackDatabase">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="supportStaffId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
</asp:Content>

