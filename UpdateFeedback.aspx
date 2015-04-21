<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UpdateFeedback.aspx.cs" Inherits="UpdateFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="odsCustomers" DataTextField="Name" DataValueField="CustomerID">
    </asp:DropDownList>
    <asp:ObjectDataSource ID="odsCustomers" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomersWithFeedback" TypeName="CustomerDatabase"></asp:ObjectDataSource>
    <br />
    <br />
    <br />
    <asp:GridView ID="gvFeedback" runat="server" AutoGenerateColumns="False" DataSourceID="odsFeedback" OnRowUpdated="GvFeedback_RowUpdated">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="SupportID" HeaderText="Support ID" ReadOnly="True" SortExpression="SupportID" >
            <ItemStyle HorizontalAlign="Left" Width="140px" />
            </asp:BoundField>
            <asp:BoundField DataField="SoftwareID" HeaderText="Software ID" ReadOnly="True" SortExpression="SoftwareID" >
            <ItemStyle HorizontalAlign="Left" Width="140px" />
            </asp:BoundField>
            <asp:BoundField DataField="DateOpened" HeaderText="Date Opened" ReadOnly="True" SortExpression="DateOpened" >
            <ItemStyle HorizontalAlign="Left" Width="170px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Date Closed" SortExpression="DateClosed">
                <EditItemTemplate>
                    <asp:TextBox ID="txtDateClosed" runat="server" Text='<%# Bind("DateClosed") %>'></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDateClosed" CssClass="error" ErrorMessage="Please enter a valid date." Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblDateClosed" runat="server" Text='<%# Bind("DateClosed") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" Width="170px" />
            </asp:TemplateField>
            <asp:BoundField DataField="Title" HeaderText="Feedback Title" ReadOnly="True" SortExpression="Title" >
            <ItemStyle HorizontalAlign="Left" Width="190px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Feedback Description" SortExpression="Description">
                <EditItemTemplate>
                    <asp:TextBox ID="txtDescription" runat="server" MaxLength="2000" Text='<%# Bind("Description") %>' TextMode="MultiLine" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription" CssClass="error" ErrorMessage="Description is required.">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" Width="250px" />
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <HeaderStyle BackColor="#FF5A09" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" />
    </asp:GridView>
    <asp:ObjectDataSource ID="odsFeedback" runat="server" ConflictDetection="CompareAllValues" DataObjectTypeName="Feedback" SelectMethod="GetCustomerFeedback" TypeName="FeedbackDatabase" UpdateMethod="UpdateFeedback" OldValuesParameterFormatString="original{0}">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="customerId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="originalFeedback" Type="Object" />
            <asp:Parameter Name="feedback" Type="Object" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>
    <br />
    <asp:ValidationSummary ID="vsUpdateFeedback" runat="server" CssClass="error" />
</asp:Content>

