<%@ Page Language="C#" MasterPageFile="~/site/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="viewuser.aspx.cs" Inherits="site_admin_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 92%; height: 135px">
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Black" 
                    Text="Users List"></asp:Label>
            </td>
            <td style="width: 92px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                &nbsp;</td>
            <td style="width: 92px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                <asp:Repeater ID="Repeater1" runat="server" 
                    onitemcommand="Repeater1_ItemCommand" DataSourceID="SqlDataSource1">
                  
                <HeaderTemplate><table class="table table-hover"></HeaderTemplate>
                <ItemTemplate>
                <tr>
                <td><%#DataBinder.Eval(Container, "DataItem.firstname") %></td>
                <td><%#DataBinder.Eval(Container, "DataItem.email") %></td>
                <td><%#DataBinder.Eval(Container, "DataItem.mob") %></td>
                
                </tr>
                </ItemTemplate>
                <FooterTemplate>                </table></FooterTemplate>
                </asp:Repeater>
            </td>
            <td style="width: 92px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                &nbsp;</td>
            <td style="width: 92px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                &nbsp;</td>
            <td style="width: 92px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                &nbsp;</td>
            <td style="width: 92px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                &nbsp;</td>
            <td style="width: 92px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                &nbsp;</td>
            <td style="width: 92px">
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Click Here" Height="28px" Visible="False" Width="83px" />
            </td>
            <td style="width: 92px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 408px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    
                    SelectCommand="SELECT [id], [firstname], [mob], [email], [type] FROM [dealerreg] WHERE ([type] = @type)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" DefaultValue="user" Name="type" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 92px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
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

