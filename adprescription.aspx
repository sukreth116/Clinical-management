<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adprescription.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 280px;
            height: 23px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            width: 285px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <table class="style1">
        <tr>
            <td class="style2" style="font-weight: 700">
                DR.TARIQUE<br />
                MBBS,MD,MPHILL,SURGEON</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="PATIENT NAME"></asp:Label>
            </td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="pid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [registertable]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="pid" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="pid" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
                            SortExpression="phoneno" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT pid, name, address, email, phoneno, gender, age FROM registertable WHERE (pid = @pid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="pid" 
                            PropertyName="SelectedValue" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                Previous Details<asp:GridView ID="GridView2" runat="server" 
                    AutoGenerateColumns="False" DataKeyNames="hid" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="hid" HeaderText="hid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="hid" />
                        <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
                        <asp:BoundField DataField="patientname" HeaderText="patientname" 
                            SortExpression="patientname" />
                        <asp:BoundField DataField="diagonsis" HeaderText="diagonsis" 
                            SortExpression="diagonsis" />
                        <asp:BoundField DataField="prescription" HeaderText="prescription" 
                            SortExpression="prescription" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [prescriptiontb] WHERE ([pid] = @pid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="pid" 
                            PropertyName="SelectedValue" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server" Height="232px">
        <table class="style1">
            <tr>
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" Text="DIAGNOSIS"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="220px" TextMode="MultiLine" 
                        Width="493px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <table class="style1">
        <tr>
            <td class="style5">
                <asp:Label ID="Label3" runat="server" Text="PRESCRIPTION"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="210px" TextMode="MultiLine" 
                    Width="489px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Add" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
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

