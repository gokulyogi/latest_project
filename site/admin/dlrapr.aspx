<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="dlrapr.aspx.cs" Inherits="site_admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style="margin-top:-400px;">
    <asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate>
    <table class="table table-bodered">
    </HeaderTemplate>
    <ItemTemplate>
    <tr><td>Dealer First Name</td><td><%#DataBinder.Eval(Container,"DataItem.firstname") %></td></tr>
    <tr><td>Dealer Last Name</td><td><%#DataBinder.Eval(Container,"DataItem.lastname") %></td></tr>
    <tr><td>Dealer Gender</td><td><%#DataBinder.Eval(Container,"DataItem.gender") %></td></tr>
    <tr><td>Dealer Date Of Birth</td><td><%#DataBinder.Eval(Container,"DataItem.dob") %></td></tr>
    <tr><td>Dealer Mobile No:</td><td><%#DataBinder.Eval(Container,"DataItem.mob") %></td></tr>
    <tr><td>Dealer E-Mail ID</td><td><%#DataBinder.Eval(Container,"DataItem.email") %></td></tr>
    <tr><td>Dealer Address</td><td><%#DataBinder.Eval(Container,"DataItem.address") %></td></tr>
    <tr><td>Dealer City</td><td><%#DataBinder.Eval(Container,"DataItem.city") %></td></tr>
    <tr><td>Dealer Pincode</td><td><%#DataBinder.Eval(Container,"DataItem.pin") %></td></tr>
    <tr><td>Dealer State</td><td><%#DataBinder.Eval(Container,"DataItem.state") %></td></tr>
    <tr><td>Dealer Country</td><td><%#DataBinder.Eval(Container,"DataItem.country") %></td></tr>
    <tr><td>Dealer Brand</td><td><%#DataBinder.Eval(Container,"DataItem.brand") %></td></tr>
    <tr><td>Dealer Location</td><td><%#DataBinder.Eval(Container,"DataItem.location") %></td></tr>
    <tr><td>Dealer Aadhaar No:</td><td><%#DataBinder.Eval(Container, "DataItem.aadhaar")%></td></tr>
    <tr><td><a href="approve.aspx?k=<%#DataBinder.Eval(Container, "DataItem.id")%>" class="btn btn-info">Approve</a></td><td><a href="reject.aspx?k=<%#DataBinder.Eval(Container, "DataItem.id")%>" class="btn btn-danger">Reject</a></td></tr>

    </ItemTemplate>
    <FooterTemplate>
    </tables></FooterTemplate>
    </asp:Repeater>
    </div>
</asp:Content>


