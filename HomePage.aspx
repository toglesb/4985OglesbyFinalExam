<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>
<link href="Styles/Style.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
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
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyper" NavigateUrl="~/CustomerListPage.aspx">Customer Display Page</asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="hyper" NavigateUrl="~/CustomerFeedbackPage.aspx">Customer Feedback Page</asp:HyperLink>
        </p>
    </form>
    </body>
</html>
