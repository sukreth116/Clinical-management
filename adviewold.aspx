<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adviewold.aspx.cs" Inherits="_Default" %>

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
            width: 293px;
        }
        .style4
        {
        }
        .style5
        {
            width: 453px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4">
                <br />
                <table class="style1">
                    <tr>
                        <td class="style5">
                            <asp:Label ID="Label2" runat="server" Text="Patient Name"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="pid">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [registertable]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel1" runat="server" Height="271px">
                                <table class="style1">
                                    <tr>
                                        <td class="style3">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                DataKeyNames="hid" DataSourceID="SqlDataSource2">
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConflictDetection="CompareAllValues" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                DeleteCommand="DELETE FROM [prescriptiontb] WHERE [hid] = @original_hid AND (([pid] = @original_pid) OR ([pid] IS NULL AND @original_pid IS NULL)) AND (([patientname] = @original_patientname) OR ([patientname] IS NULL AND @original_patientname IS NULL)) AND (([diagonsis] = @original_diagonsis) OR ([diagonsis] IS NULL AND @original_diagonsis IS NULL)) AND (([prescription] = @original_prescription) OR ([prescription] IS NULL AND @original_prescription IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))" 
                                                InsertCommand="INSERT INTO [prescriptiontb] ([pid], [patientname], [diagonsis], [prescription], [date]) VALUES (@pid, @patientname, @diagonsis, @prescription, @date)" 
                                                OldValuesParameterFormatString="original_{0}" 
                                                SelectCommand="SELECT * FROM [prescriptiontb] WHERE ([pid] = @pid)" 
                                                UpdateCommand="UPDATE [prescriptiontb] SET [pid] = @pid, [patientname] = @patientname, [diagonsis] = @diagonsis, [prescription] = @prescription, [date] = @date WHERE [hid] = @original_hid AND (([pid] = @original_pid) OR ([pid] IS NULL AND @original_pid IS NULL)) AND (([patientname] = @original_patientname) OR ([patientname] IS NULL AND @original_patientname IS NULL)) AND (([diagonsis] = @original_diagonsis) OR ([diagonsis] IS NULL AND @original_diagonsis IS NULL)) AND (([prescription] = @original_prescription) OR ([prescription] IS NULL AND @original_prescription IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="original_hid" Type="Int64" />
                                                    <asp:Parameter Name="original_pid" Type="Int64" />
                                                    <asp:Parameter Name="original_patientname" Type="String" />
                                                    <asp:Parameter Name="original_diagonsis" Type="String" />
                                                    <asp:Parameter Name="original_prescription" Type="String" />
                                                    <asp:Parameter Name="original_date" Type="String" />
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="pid" Type="Int64" />
                                                    <asp:Parameter Name="patientname" Type="String" />
                                                    <asp:Parameter Name="diagonsis" Type="String" />
                                                    <asp:Parameter Name="prescription" Type="String" />
                                                    <asp:Parameter Name="date" Type="String" />
                                                </InsertParameters>
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="DropDownList1" Name="pid" 
                                                        PropertyName="SelectedValue" Type="Int64" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="pid" Type="Int64" />
                                                    <asp:Parameter Name="patientname" Type="String" />
                                                    <asp:Parameter Name="diagonsis" Type="String" />
                                                    <asp:Parameter Name="prescription" Type="String" />
                                                    <asp:Parameter Name="date" Type="String" />
                                                    <asp:Parameter Name="original_hid" Type="Int64" />
                                                    <asp:Parameter Name="original_pid" Type="Int64" />
                                                    <asp:Parameter Name="original_patientname" Type="String" />
                                                    <asp:Parameter Name="original_diagonsis" Type="String" />
                                                    <asp:Parameter Name="original_prescription" Type="String" />
                                                    <asp:Parameter Name="original_date" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

