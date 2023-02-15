<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="ptprescription.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="hid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="hid" HeaderText="Prescription Id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="hid" />
                <asp:BoundField DataField="pid" HeaderText="Patient Id" SortExpression="pid" />
                <asp:BoundField DataField="patientname" HeaderText="Patient Name" 
                    SortExpression="patientname" />
                <asp:BoundField DataField="diagonsis" HeaderText="Diagonsis" 
                    SortExpression="diagonsis" />
                <asp:BoundField DataField="prescription" HeaderText="Prescription" 
                    SortExpression="prescription" />
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [prescriptiontb] WHERE ([pid] = @pid)">
            <SelectParameters>
                <asp:SessionParameter Name="pid" SessionField="pid" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

