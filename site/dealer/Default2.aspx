<%@ Page Title="" Language="C#" MasterPageFile="~/site/dealer/DealerMasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="site_dealer_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate>
    <table class="table table-hover" style="margin-left:-150px;">
        <tr><td>Name</td><td>Email</td><td>Mobile</td><td>Brand</td><td>Car Name</td><td>Variant</td><td>Color</td><td>Take Action</td></tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr><td><%#DataBinder.Eval(Container,"DataItem.fn") %> <%#DataBinder.Eval(Container,"DataItem.sn") %></td>
        <td><%#DataBinder.Eval(Container,"DataItem.email") %></td>
        <td><%#DataBinder.Eval(Container,"DataItem.mob") %></td>
        <td><%#DataBinder.Eval(Container,"DataItem.brand") %></td>
        <td><%#DataBinder.Eval(Container,"DataItem.name") %></td>
        <td><%#DataBinder.Eval(Container,"DataItem.variant") %></td>
        <td><%#DataBinder.Eval(Container,"DataItem.clr") %></td>
        <td><a href="viewbooking.aspx?k=<%#DataBinder.Eval(Container,"DataItem.email") %>&l=<%#DataBinder.Eval(Container,"DataItem.cariid") %>&m=<%#DataBinder.Eval(Container,"DataItem.colorid") %>&o=<%#DataBinder.Eval(Container,"DataItem.babu") %>" class="btn btn-info">View </a></td>
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

