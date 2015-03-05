<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceholder" Runat="Server">
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <h4>Contact Us:</h4>
    <p>
        <asp:Label ID="lblPhoneNumber" runat="server" CssClass="label" Text="Call us as 999-999-9991"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblOperatingHours" runat="server" CssClass="label" Text="Hours of operation (Monday - Friday 9-5)"></asp:Label>
    </p>
    <p>
        <asp:HyperLink ID="hlEmail" runat="server" CssClass="label" NavigateUrl="mailto:info@ballgame.com">info@ballgame.com</asp:HyperLink>
    </p>
    <p>
        <asp:Label ID="lblAddress" runat="server" CssClass="label" Text="1601 Maple Street, Carrollton, GA 30118" Width="317px"></asp:Label>
    </p>
    
</asp:Content>

