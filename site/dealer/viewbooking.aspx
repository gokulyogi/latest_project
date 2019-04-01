<%@ Page Title="" Language="C#" MasterPageFile="~/site/dealer/DealerMasterPage.master" AutoEventWireup="true" CodeFile="viewbooking.aspx.cs" Inherits="site_dealer_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate>
    <table class="table table-hover" style="margin-left:-150px;">
    </HeaderTemplate>
    <ItemTemplate>
        <tr><td>Name of Customer</td><td><%#DataBinder.Eval(Container,"DataItem.fn") %> </td></tr>
        <tr><td>E-Mail ID</td><td><%#DataBinder.Eval(Container,"DataItem.email") %></td></tr>
        <tr><td>Mobile Number</td><td> <%#DataBinder.Eval(Container,"DataItem.mob") %></td></tr>
        <tr><td>Address</td><td><%#DataBinder.Eval(Container,"DataItem.address") %></td></tr>
        <tr><td>City</td><td><%#DataBinder.Eval(Container,"DataItem.city") %></td></tr>
        <tr><td>Pin Code</td><td><%#DataBinder.Eval(Container,"DataItem.pin") %></td></tr>
        <tr><td>State</td><td><%#DataBinder.Eval(Container,"DataItem.state") %></td></tr>
        <tr><td>Country</td><td><%#DataBinder.Eval(Container,"DataItem.country") %></td></tr>
        <tr><td>Car Brand</td><td><%#DataBinder.Eval(Container,"DataItem.brand") %></td></tr>
        <tr><td>Car Name</td><td><%#DataBinder.Eval(Container,"DataItem.name") %></td></tr>
        <tr><td>Car Variant</td><td><%#DataBinder.Eval(Container,"DataItem.variant") %></td></tr>
        <tr><td>Car Price</td><td><%#DataBinder.Eval(Container,"DataItem.price") %></td></tr>
        <tr><td><a href="senddet.aspx?k=<%#DataBinder.Eval(Container,"DataItem.email") %>"  class="btn btn-info" >Give Response </a></td></tr>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
    </table>
    </FooterTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>

