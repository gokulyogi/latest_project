<%@ Page Title="" Language="C#" MasterPageFile="~/site/dealer/DealerMasterPage.master" AutoEventWireup="true" CodeFile="senddet.aspx.cs" Inherits="site_dealer_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="btn-group">
      <asp:Button ID="btnfirst" runat="server" Text="Custom Response" 
          class="btn btn-info" onclick="btnfirst_Click"/>
       <abbr title="kajakajakjakaja"><asp:Button ID="btnsecond" runat="server" Text="Dated Response" 
          class="btn btn-danger" onclick="btnsecond_Click" /></abbr></div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
                <asp:TextBox ID="txtremark" runat="server" class="form-control"></asp:TextBox>
                    <asp:Button ID="btnsub1" runat="server" Text="Send Remark" class="btn btn-success" onclick="btnsub1_Click"/>
        </asp:View>
             <!---------------sadhaaaa***************************************--------------->
        <asp:View ID="View2" runat="server">
            <div class="container">
                    <div class="alert alert-info">
        <h5>Inform the user about car delivery date</h5>
        </div>                    
        <div class="alert alert-success">
        <h5>
            <asp:Label ID="lbldate" runat="server" Text=""></asp:Label></h5>
        </div>
                <asp:Calendar ID="Calendar1" runat="server" Visible="False" 
                        onselectionchanged="Calendar1_SelectionChanged" BackColor="White" 
                        BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                        ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                <asp:LinkButton
                    ID="Button1" onclick="Button1_Click" runat="server"><i class="fa fa-calendar"></i></asp:LinkButton>
                <asp:Button ID="btnsub2" runat="server" class="btn btn-success" Text="Send Remark" onclick="btnsub2_Click" />
            </div>
        </asp:View>
                </asp:MultiView>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder5" Runat="Server">
</asp:Content>

