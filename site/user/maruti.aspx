<%@ Page Title="" Language="C#" MasterPageFile="~/site/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="maruti.aspx.cs" Inherits="site_user_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 90%; height: 73px">
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" 
                    onitemcommand="DataList2_ItemCommand" RepeatColumns="2" 
                    RepeatDirection="Horizontal" 
                    onselectedindexchanged="DataList2_SelectedIndexChanged1" >

                    <ItemTemplate>
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 19px">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("name") %>' 
                                        Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Black"></asp:Label>
                                </td>
                                <td style="height: 19px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="height: 20px">
                                    Variant&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("variant") %>' 
                                        ForeColor="Black"></asp:Label>
                                </td>
                                <td style="height: 20px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    Key Features&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("features") %>' 
                                        ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("price") %>' 
                                        ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    Dealer Name&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" ForeColor="Black" 
                                        Text='<%# Eval("dlr") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                    <br />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" Height="286px" 
                                        ImageUrl='<%# Eval("image1") %>' Width="455px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CommandName="addtocart" 
                                        Height="47px" oncommand="ImageButton2_Command" Width="104px" 
                                        CommandArgument='<%#Eval("id") %>' ImageUrl="~/site/user/cart.png" 
                                        onclick="ImageButton2_Click"/>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT        tblcars.id, tblcars.brand, tblcars.name, tblcars.variant, tblcars.features, tblcars.color, tblcars.price, tblcars.image1, tblcars.image3, tblcars.image2, tblcars.image4, tblcars.image5, tblcars.image6, tblcars.specs, tblcars.did, 
                         { fn CONCAT(dealerreg.firstname, dealerreg.lastname) } AS dlr, dealerreg.email
FROM            tblcars INNER JOIN
                         dealerreg ON tblcars.did = dealerreg.email
WHERE        (tblcars.[brand] = @brand)" 
                    onselecting="SqlDataSource1_Selecting">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="brand" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False">Maruti Suzuki</asp:TextBox>
                <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

