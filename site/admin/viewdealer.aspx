<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="viewdealer.aspx.cs" Inherits="site_admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 91%; height: 107px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="Black" 
                    Text="Dealers List"></asp:Label>
                    
                <asp:Repeater ID="Repeater1" runat="server" 
                    onitemcommand="Repeater1_ItemCommand">
                <HeaderTemplate><table class="table table-bordered"></HeaderTemplate>
                <ItemTemplate>
                <tr><td><%#DataBinder.Eval(Container, "DataItem.firstname") %></td>
                <td><%#DataBinder.Eval(Container, "DataItem.email") %></td>
                <td><%#DataBinder.Eval(Container, "DataItem.mob") %></td>
                <td><a href="dlrapr.aspx?k=<%#DataBinder.Eval(Container, "DataItem.id") %>" class="btn btn-success">Check</a></td>

                </tr>
                </ItemTemplate>
                <FooterTemplate>                </table></FooterTemplate>
                </asp:Repeater>

            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [lastname], [id], [firstname], [gender], [dob], [mob], [email], [address], [aadhaar], [location], [brand], [country], [state], [pin], [city], [type] FROM [dealerreg] WHERE ([type] = @type)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" DefaultValue="dealer" Name="type" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>

