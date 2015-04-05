<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="IncidentDisplay.aspx.cs" Inherits="IncidentDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceholder" Runat="Server">
    <link href="Styles/Incident.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 150px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <br />
    <br />
    <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack="True" DataSourceID="sdsCustomers" DataTextField="Name" DataValueField="CustomerID" CssClass="ddl" >
    </asp:DropDownList>
    <br />
    <br />
    <br/>
    <asp:SqlDataSource ID="sdsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT [CustomerID], [Name] FROM [Customer]"></asp:SqlDataSource>
    <asp:DataList ID="dlIncidentDetails" runat="server" DataSourceID="sdsIncidents" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" RepeatDirection="Horizontal" RepeatLayout="Flow" CellPadding="4" ForeColor="green">
        <AlternatingItemStyle BackColor="White" ForeColor="#ff5a09" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#ff5a09" Font-Bold="True" ForeColor="white" BorderStyle="Solid" />
        <HeaderTemplate>
            <table>
                <tr>
                    <td class="col1">Software/Incident</td> 
                    <td class="col2">Technician Name</td> 
                    <td class="col3">Date Opened</td> 
                    <td class="col4">Date Closed</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle BackColor="#F7F6F3" ForeColor="white" />
        <ItemTemplate>
            <table>
                <tr >
            <td class="col1"><asp:Label ID="lblSoftwareName" runat="server" Text='<%# Eval("SoftwareName") %>'  /></td>
            
            
            <td class="col2"><asp:Label ID="lblTechnicianName" runat="server" Text='<%# Eval("TechName") %>'  /></td>
            
            
            <td class="col3"><asp:Label ID="lblDateOpened" runat="server" Text='<%# Eval("DateOpened") %>'  /></td>
            
            
            <td class="col4"><asp:Label ID="lblDateClosed" runat="server" Text='<%# Eval("DateClosed") %>'  /></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td class="col5"><asp:Label ID="lblDescription" runat="server" Text='<%# Eval("Description") %>'  /></td>
                </tr>
            </table>


            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SeparatorStyle BorderStyle="Solid" />
    </asp:DataList>
    <asp:SqlDataSource ID="sdsIncidents" runat="server" ConnectionString="<%$ ConnectionStrings:CustomersConnectionString %>" ProviderName="<%$ ConnectionStrings:CustomersConnectionString.ProviderName %>" SelectCommand="SELECT Software.Name AS SoftwareName, Support.Name AS TechName, Feedback.DateOpened, Feedback.DateClosed, Feedback.Description FROM ((Feedback INNER JOIN Support ON Feedback.SupportID = Support.SupportID) INNER JOIN Software ON Feedback.SoftwareID = Software.SoftwareID) WHERE ([CustomerID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCustomers" Name="?" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

