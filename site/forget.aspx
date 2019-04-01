<%@ Page Language="C#" MasterPageFile="~/site/newMasterPage.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="site_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
     
        <asp:View ID="View1" runat="server">
        <div class="container" style="height:300px;padding-top:100px;">
        <div class="form-group col-sm-4">
        <label for="num">Enter Mobile Number</label>
            <asp:TextBox ID="TextBox1" runat="server" name="num" class="form-control"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Submit" 
                onclick="Button1_Click1" class="btn submit_btn"/>
            </div>

        </asp:View>
        <asp:View ID="View2" runat="server">
        <div class="container" style="height:300px;padding-top:100px;">
        <div class="form-group col-sm-4">
        <label for="otp">Enter OTP you recieved</label>
            <asp:TextBox ID="txtotp" runat="server" name="otp" class="form-control"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
                Text="Submit" class="btn submit_btn"/>
                </div>
                </div>
        </asp:View>
        <asp:View ID="View3" runat="server">
        <div class="container" style="height:300px;padding-top:100px;">
         <div class="form-group col-sm-4">
        <label for="a">Enter new password</label>
            <asp:TextBox ID="txtpwd" runat="server" name="a" class="form-control"></asp:TextBox>
            </div>
            <div class="row">
                     <div class="form-group col-sm-4">
        <label for="b">Confirm new password</label>
            <asp:TextBox ID="txtcnf" runat="server" name="b" class="form-control"></asp:TextBox>
            </div>
            </div>
            <div class="form-group col-sm-4">
            <asp:Button ID="btnsub" runat="server" onclick="btnsub_Click" Text="Submit" class="btn submit_btn"/>
            </div>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

