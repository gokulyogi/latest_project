<%@ Page Title="" Language="C#" MasterPageFile="~/site/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="site_user_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                <asp:Image ID="Image1" runat="server"  Width="512px" 
                    ondatabinding="Image1_DataBinding" />
                    <div class="row container">
                    <div class="btn-group">
                            <asp:Button ID="prv" runat="server" onclick="Button2_Click" Text="Previous" class="btn btn-success"/>

                            <asp:Button ID="nxt" runat="server" onclick="nxt_Click" Text="Next"  class="btn btn-info" style="position:absolute;margin-left:456px;"/>
                            </div>
                            </div>
                            </br></br></br></br>
                    <div class="row container">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                        <table class="table table-hover">
                        </HeaderTemplate>
                        <ItemTemplate>
                        <tr><td class="alert alert-dark">brand</td><td><%#DataBinder.Eval(Container,"DataItem.brand") %></td></tr>
                        <tr><td class="alert alert-dark">name</td><td><%#DataBinder.Eval(Container,"DataItem.name") %></td></tr>
                        <tr><td class="alert alert-dark">variant</td><td><%#DataBinder.Eval(Container,"DataItem.variant") %></td></tr>
                        <tr><td class="alert alert-dark">features</td><td><%#DataBinder.Eval(Container, "DataItem.features")%></td></tr>
                        <tr><td class="alert alert-dark">price</td><td><%#DataBinder.Eval(Container, "DataItem.price")%></td></tr>
                        <tr><td class="alert alert-dark">specs</td><td><%#DataBinder.Eval(Container, "DataItem.specs")%></td></tr>
                        </ItemTemplate>
                        <FooterTemplate></table></FooterTemplate>
                        </asp:Repeater>
                            </div>
                            <table style="width:512px;">
                    <tr><td align="right">
                            <asp:LinkButton ID="bcnf" runat="server" class="btn btn-info" style="background:orange;border-color:Orange;color:White;" 
                                onclick="bcnf_Click" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Black">Proceed to booking</asp:LinkButton>
                    </td></tr>
                    
                               &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                                SelectCommand="SELECT [brand], [name], [variant], [features], [price], [specs] FROM [tblcars] WHERE (([id] = @id) AND ([did] = @did))">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int64" />
                                    <asp:QueryStringParameter Name="did" QueryStringField="kp" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
    
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

