<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adstaff.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 582px;
        }
        .style3
        {
            width: 224px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
        .style6
        {
            height: 56px;
        }
        .style5
        {
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
&nbsp;<table class="style1" __designer:mapid="13">
            <tr __designer:mapid="14">
                <td class="style2" __designer:mapid="15">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td __designer:mapid="17">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="19">
                <td class="style2" __designer:mapid="1a">
                    <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                </td>
                <td __designer:mapid="1c">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Correct Age" MaximumValue="99" 
                        MinimumValue="0"></asp:RangeValidator>
                </td>
            </tr>
            <tr __designer:mapid="1e">
                <td class="style2" __designer:mapid="1f">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td __designer:mapid="21">
                    <asp:TextBox ID="TextBox3" runat="server" Height="87px" TextMode="MultiLine" 
                        Width="356px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="23">
                <td class="style2" __designer:mapid="24">
                    <asp:Label ID="Label4" runat="server" Text="Phone no"></asp:Label>
                </td>
                <td __designer:mapid="26">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="10 digit" 
                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr __designer:mapid="28">
                <td class="style3" __designer:mapid="29">
                    <asp:Label ID="Label5" runat="server" Text="DOB"></asp:Label>
                </td>
                <td class="style4" __designer:mapid="2b">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" 
                        onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr __designer:mapid="70">
                <td class="style2" __designer:mapid="71">
                    <asp:Label ID="Label6" runat="server" Text="Nationality"></asp:Label>
                </td>
                <td __designer:mapid="73">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="75">
                <td class="style2" __designer:mapid="76">
                    <asp:Label ID="Label7" runat="server" Text="Qualification"></asp:Label>
                </td>
                <td __designer:mapid="78">
                    <asp:TextBox ID="TextBox6" runat="server" Height="102px" TextMode="MultiLine" 
                        Width="356px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="7a">
                <td class="style2" __designer:mapid="7b">
                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                </td>
                <td __designer:mapid="7d">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Correct email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr __designer:mapid="7f">
                <td class="style2" __designer:mapid="80">
                    <asp:Label ID="Label12" runat="server" Text="Gender"></asp:Label>
                </td>
                <td __designer:mapid="82">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr __designer:mapid="8b">
                <td class="style3" __designer:mapid="8c">
                    <asp:Label ID="Label10" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="style4" __designer:mapid="8e">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="90">
                <td class="style2" __designer:mapid="91">
                    <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
                </td>
                <td __designer:mapid="93">
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr __designer:mapid="95">
                <td class="style2" __designer:mapid="96">
                    &nbsp;</td>
                <td __designer:mapid="97">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="98">
                <td class="style2" colspan="2" __designer:mapid="99">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="9b">
                <td class="style6" __designer:mapid="9c">
                </td>
                <td class="style6" __designer:mapid="9d">
                </td>
            </tr>
            <tr __designer:mapid="9e">
                <td class="style2" __designer:mapid="9f">
                    &nbsp;</td>
                <td __designer:mapid="a0">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="a1">
                <td class="style2" __designer:mapid="a2">
                    &nbsp;</td>
                <td __designer:mapid="a3">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="a4">
                <td class="style5" __designer:mapid="a5">
                </td>
                <td class="style5" __designer:mapid="a6">
                </td>
            </tr>
            <tr __designer:mapid="a7">
                <td class="style2" __designer:mapid="a8">
                    &nbsp;</td>
                <td __designer:mapid="a9">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="aa">
                <td class="style2" __designer:mapid="ab">
                    &nbsp;</td>
                <td __designer:mapid="ac">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="ad">
                <td class="style2" __designer:mapid="ae">
                    &nbsp;</td>
                <td __designer:mapid="af">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

