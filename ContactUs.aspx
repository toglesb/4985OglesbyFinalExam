<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="headContent" ContentPlaceHolderID="headPlaceholder" Runat="Server">
    <link href="Styles/ContactUs.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="formContent" ContentPlaceHolderID="formPlaceholder" Runat="Server">
    <h4>Contact Us:</h4>
<p>    
        <asp:Label ID="lblPhoneNumber" runat="server" CssClass="conLabel" Text="Call us as 999-999-9991"></asp:Label>
 </p> <br/>  
  <p> 
        <asp:Label ID="lblOperatingHours" runat="server" CssClass="conLabel" Text="Hours of operation (Monday - Friday 9-5)"></asp:Label>
   </p><br/>
    <p>
        <asp:HyperLink ID="hlEmail" runat="server" CssClass="conLabel" NavigateUrl="mailto:info@ballgame.com">info@ballgame.com</asp:HyperLink>
    </p><br/>
    <p>
        <asp:Label ID="lblAddress" runat="server" CssClass="conLabel" Text="1601 Maple Street, Carrollton, GA 30118" Width="317px"></asp:Label>
  </p><br/>
    
</asp:Content>

