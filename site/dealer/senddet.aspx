<%@ Page Title="" Language="C#" MasterPageFile="~/site/dealer/DealerMasterPage.master" AutoEventWireup="true" CodeFile="senddet.aspx.cs" Inherits="site_dealer_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



                <asp:TextBox ID="txtremark" runat="server" class="form-control"></asp:TextBox>
                    <asp:Button ID="btnsub1" runat="server" Text="Send Remark" 
                        class="btn btn-success" onclick="btnsub1_Click"/>

                         <div class="container">
                             <asp:Calendar ID="Calendar1" runat="server" Visible="False" 
                                 onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
                             <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="....." />
                             <asp:Button ID="btnsub2" runat="server" class="btn btn-success" 
                                 Text="Send Remark" onclick="btnsub2_Click" />
            </div>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>

