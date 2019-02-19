<%@ Page Language="C#" MasterPageFile="~/site/dealer/DealerMasterPage.master" AutoEventWireup="true" CodeFile="dealer1.aspx.cs" Inherits="site_dealer_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 1224px; width: 90%">
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                            <asp:Label ID="Label1" runat="server" Text="Car Brand" ForeColor="Black"></asp:Label>
        </td>
        <td>
                                            &nbsp;
                                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="128px" class="form-control">
                                                <asp:ListItem>Maruti Suzuki</asp:ListItem>
                                                <asp:ListItem>Hyundai</asp:ListItem>
                                                <asp:ListItem>Honda</asp:ListItem>
                                                <asp:ListItem>Tata</asp:ListItem>
                                                <asp:ListItem>Volkswagen</asp:ListItem>
                                                <asp:ListItem>Toyota</asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
                                                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Label ID="Label8" runat="server" Text="Car Name" ForeColor="Black"></asp:Label>
        </td>
        <td>
            &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label2" runat="server" Text="Variant" ForeColor="Black"></asp:Label>
                                            &nbsp;</td>
        <td>
            &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" required></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
                                                ID="Label4" runat="server" Text="Key Features" ForeColor="Black"></asp:Label>
        </td>
        <td>
                                            &nbsp;
                                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" required></asp:TextBox>
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
                                                ID="Label9" runat="server" Text="Color" ForeColor="Black"></asp:Label>
        </td>
        <td>
                                            &nbsp;
                                            <asp:TextBox ID="TextBox4" runat="server" required></asp:TextBox>
                                            &nbsp;<asp:Button ID="btnaddc" runat="server" CausesValidation="False" 
                                                onclick="btnaddc_Click" Text="add" UseSubmitBehavior="False" 
                                                ValidationGroup="nhgvdfcjhs" />
                                            <asp:ListBox ID="ListBox1" runat="server" Width="192px"></asp:ListBox>
        </td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                            <asp:Label ID="Label10" runat="server" 
                Text="Price" ForeColor="Black"></asp:Label>
        </td>
        <td>
                                            &nbsp;
                                            <asp:TextBox ID="TextBox5" runat="server" required></asp:TextBox>
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5" style="height: 233px; width: 203px;">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Label ID="Label6" runat="server" Text="Image" ForeColor="Black"></asp:Label>
                                            &nbsp;</td>
        <td class="style6" style="height: 233px">
                                            &nbsp;
                                            <asp:FileUpload ID="FileUpload2" runat="server" Width="216px" />
                                            &nbsp;
                                            <br />
                                            <asp:Image ID="Image1" runat="server" Height="94px" Width="103px" />
                                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Upload" 
                                                Width="119px" />
            <br />&nbsp;
                                            <asp:FileUpload ID="FileUpload3" runat="server" />
                                            &nbsp;
                                            <br />
                                            <asp:Image ID="Image2" runat="server" Height="80px" Width="96px" />
                                            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                                                style="height: 26px" Text="Upload" Width="126px" />
            <br />
                                            &nbsp;
            <asp:FileUpload ID="FileUpload4" runat="server" />
                                            &nbsp;
                                            <br />
                                            <asp:Image ID="Image3" runat="server" Height="78px" Width="92px" />
                                            <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Upload" 
                                                Width="130px" />
            <br />
                                            &nbsp;
            <asp:FileUpload ID="FileUpload5" runat="server" />
                                            &nbsp;
                                            <br />
                                            <asp:Image ID="Image4" runat="server" Height="75px" Width="99px" />
                                            <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                                                style="height: 26px" Text="Upload" Width="122px" />
            <br />
                                            &nbsp;
            <asp:FileUpload ID="FileUpload6" runat="server" />
                                            &nbsp;
                                            <br />
                                            <asp:Image ID="Image5" runat="server" Height="105px" Width="100px" />
                                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Upload" 
                                                Width="123px" />
            <br />
                                            &nbsp;
            <asp:FileUpload ID="FileUpload7" runat="server" />
                                            &nbsp;
                                            <br />
                                            <asp:Image ID="Image6" runat="server" Height="79px" Width="102px" />
                                            <asp:Button ID="Button1" runat="server" 
                Height="24px" Text="Upload" 
                                                Width="123px" onclick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="style3" style="height: 94px; width: 203px;">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Font-Size="Smaller" ForeColor="Black" 
                Text="Car Specs and Features"></asp:Label>
            &nbsp;</td>
        <td class="style4" style="height: 94px">
            <asp:TextBox ID="TextBox6" runat="server" Height="77px" TextMode="MultiLine" 
                Width="249px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3" style="height: 94px; width: 203px;">
        </td>
        <td class="style4" style="height: 94px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="23px" onclick="Button2_Click" 
                Text="Submit" Width="133px" style="margin-left: 3px" />
        </td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                SelectCommand="SELECT * FROM [dealertable]"></asp:SqlDataSource>
        </td>
        <td>
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;</td>
        <td>
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;</td>
        <td>
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;</td>
        <td>
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;</td>
        <td>
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
                                            &nbsp;</td>
        <td>
                                            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" style="width: 203px">
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
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Italic="False" 
                    Font-Size="Medium" ForeColor="White" 
                    Text=" Welcome to CarDrive - India's largest auto media vehicle. CarDrive has always striven to serve car buyers   and owners in the most comprehensive and convenient way possible. We provide a platform where car buyers and owners can research, buy and come together to talk about their cars.                                                                                Our mission is to bring joy and delight into car buying and ownership. To achieve this goal, we aim to empower   Indian consumers to make informed car buying and ownership decisions with exhaustive and un-biased information on cars through our expert reviews,owner reviews, detailed specifications and comparisons  . We understand that a car is by and large the second-most expensive asset a consumer associates his lifestyle with.   "></asp:Label>
                </td>
        </tr>
    </table>
</asp:Content>

