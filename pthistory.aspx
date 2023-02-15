<%@ Page Title="" Language="C#" MasterPageFile="~/patient.master" AutoEventWireup="true" CodeFile="pthistory.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="bid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="bid" HeaderText="Booking Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="bid" />
            <asp:BoundField DataField="pid" HeaderText="Patient Id" SortExpression="pid" />
            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
            <asp:BoundField DataField="token" HeaderText="Token" SortExpression="token" />
            <asp:BoundField DataField="status" HeaderText="Status" 
                SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [bookingtb] WHERE ([pid] = @pid)">
        <SelectParameters>
            <asp:SessionParameter Name="pid" SessionField="pid" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

