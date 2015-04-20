﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UpdateFeedback.aspx.cs" Inherits="UpdateFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="odsCustomers" DataTextField="Name" DataValueField="CustomerID">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="odsCustomers" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomersWithFeedback" TypeName="CustomerDatabase"></asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="odsFeedback">
        <Columns>
            <asp:BoundField DataField="SupportID" HeaderText="Support ID" ReadOnly="True" SortExpression="SupportID" />
            <asp:BoundField DataField="SoftwareID" HeaderText="Software ID" ReadOnly="True" SortExpression="SoftwareID" />
            <asp:BoundField DataField="DateOpened" HeaderText="Date Opened" ReadOnly="True" SortExpression="DateOpened" />
            <asp:TemplateField HeaderText="Date Closed" SortExpression="DateClosed">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateClosed") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateClosed") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Title" HeaderText="Feedback Title" ReadOnly="True" SortExpression="Title" />
            <asp:TemplateField HeaderText="Feedback Description" SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="odsFeedback" runat="server" ConflictDetection="CompareAllValues" DataObjectTypeName="Feedback" SelectMethod="GetCustomerFeedback" TypeName="FeedbackDatabase" UpdateMethod="UpdateFeedback">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="customerId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="originalFeedback" Type="Object" />
            <asp:Parameter Name="newFeedback" Type="Object" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
</asp:Content>

