<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerFeedbackPage.aspx.cs" Inherits="CustomerFeedbackPage" %>

<!DOCTYPE html>
<link href="Styles/Style.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <h1>
            Digital Upscale Manager for Ballgames</h1>
        <h3>
            Managing Ballgames with Technology</h3>
        <asp:Label ID="lblCustomerID" runat="server" Text="Customer ID: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtCustomerID" runat="server"></asp:TextBox>
        <asp:Button ID="btnConfirmID" runat="server" Text="Search ID" ValidationGroup="Customer" OnClick="btnConfirmID_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCustomerID" Display="Dynamic" ErrorMessage="Must enter Customer ID"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvCustomerID" runat="server" ControlToValidate="txtCustomerID" ErrorMessage="CompareValidator"></asp:CompareValidator>
        
        
        <p>
        <asp:ListBox ID="lbFeedback" runat="server" AutoPostBack="True" CssClass="ddl" Width="660px"></asp:ListBox>
                <asp:SqlDataSource ID="FeedbackData" runat="server" ConnectionString="<%$ ConnectionStrings:FeedbackConnection %>" ProviderName="<%$ ConnectionStrings:FeedbackConnection.ProviderName %>" SelectCommand="SELECT * FROM [Feedback] WHERE ([CustomerID] = ?)">
         <SelectParameters>
             <asp:ControlParameter ControlID="txtCustomerID" Name="CustomerID" PropertyName="Text" Type="Int32" />
         </SelectParameters>
</asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="rfvFeedbackList" runat="server" ControlToValidate="lbFeedback" ErrorMessage="Must have feedback"></asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="lblServiceTime" runat="server" Text="Service Time:" CssClass="label"></asp:Label>
        <asp:RadioButton ID="rbServiceSatisfied" runat="server" Checked="True" GroupName="Service" Text="Satisfied" Enabled="False" />
        <asp:RadioButton ID="rbServiceNeither" runat="server" GroupName="Service" Text="Neither Satisfied Nor Dissatisfied" Enabled="False" />
        <asp:RadioButton ID="rbServiceDissatisfied" runat="server" GroupName="Service" Text="Dissatisfied" Enabled="False" />
        <p>
            <asp:Label ID="lblTechEfficiency" runat="server" Text="Technical efficiency:" CssClass="label"></asp:Label>
            <asp:RadioButton ID="rbTechSatisfied" runat="server" Checked="True" GroupName="Tech" Text="Satisfied" Enabled="False" />
            <asp:RadioButton ID="rbTechNeither" runat="server" GroupName="Tech" Text="Neither Satisfied Nor Dissatisfied" Enabled="False" />
            <asp:RadioButton ID="rbTechDissatisfied" runat="server" GroupName="Tech" Text="Dissatisfied" Enabled="False" />
        </p>
        <p>
            <asp:Label ID="txtProbResolution" runat="server" Text="Problem resolution:" CssClass="label"></asp:Label>
            <asp:RadioButton ID="rbProbSatisfied" runat="server" Checked="True" GroupName="Problem" Text="Satisfied" Enabled="False" />
            <asp:RadioButton ID="rbProbNeither" runat="server" GroupName="Problem" Text="Neither Satisfied Nor Dissatisfied" Enabled="False" />
            <asp:RadioButton ID="rbProbDissatisfied" runat="server" GroupName="Problem" Text="Dissatisfied" Enabled="False" />
        </p>
        <asp:Label ID="lblAdditonalComments" runat="server" BorderStyle="None" Text="Additional Comments:" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtAdditionalComments" runat="server" Height="62px" Width="348px" TextMode="MultiLine"></asp:TextBox>
        <p>
            <asp:Label ID="lblContacted" runat="server" Text="Check if you would like to contacted:" CssClass="label"></asp:Label>
            <asp:CheckBox ID="cbContacted" runat="server" Enabled="False" />
        </p>
        <asp:Label ID="Label1" runat="server" Text="Contact Method:" CssClass="label"></asp:Label>
        <asp:RadioButton ID="rb" runat="server" Text="Email" Checked="True" GroupName="Contact" Enabled="False" />
        <asp:RadioButton ID="rbPhone" runat="server" GroupName="Contact" Text="Telephone" Enabled="False" />
        <p>
            <asp:Button ID="btnSubmitFeedback" runat="server" OnClick="btnSubmitFeedback_Click" Text="Submit Feedback" ValidationGroup="Feedback" CssClass="button" />
        </p>
        
    </form>
</body>
</html>
