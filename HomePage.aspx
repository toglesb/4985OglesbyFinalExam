<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" MasterPageFile="~/Site.master"%>


<asp:Content ContentPlaceHolderID="headPlaceholder" runat="server">
    
</asp:Content>

<asp:Content ContentPlaceHolderID="formPlaceholder" runat="server">
    <div>
    
    </div>

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
    </asp:Content>
