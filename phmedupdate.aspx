<%@ Page Title="" Language="C#" MasterPageFile="~/pharmacy.master" AutoEventWireup="true" CodeFile="phmedupdate.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="mid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="mid" HeaderText="Medicine id" InsertVisible="False" 
                ReadOnly="True" SortExpression="mid" />
            <asp:BoundField DataField="medname" HeaderText="Name" 
                SortExpression="medname" />
            <asp:BoundField DataField="dosage" HeaderText="Dosage" 
                SortExpression="dosage" />
            <asp:BoundField DataField="mfgdate" HeaderText="Mfg Date" 
                SortExpression="mfgdate" />
            <asp:BoundField DataField="expirydate" HeaderText="Expiry Date" 
                SortExpression="expirydate" />
            <asp:BoundField DataField="availablestock" HeaderText="AvailableStock" 
                SortExpression="availablestock" />
            <asp:BoundField DataField="mrp" HeaderText="MRP" SortExpression="mrp" />
            <asp:BoundField DataField="net" HeaderText="Net" SortExpression="net" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [medicinetable] WHERE [mid] = @original_mid AND (([medname] = @original_medname) OR ([medname] IS NULL AND @original_medname IS NULL)) AND (([dosage] = @original_dosage) OR ([dosage] IS NULL AND @original_dosage IS NULL)) AND (([mfgdate] = @original_mfgdate) OR ([mfgdate] IS NULL AND @original_mfgdate IS NULL)) AND (([expirydate] = @original_expirydate) OR ([expirydate] IS NULL AND @original_expirydate IS NULL)) AND (([availablestock] = @original_availablestock) OR ([availablestock] IS NULL AND @original_availablestock IS NULL)) AND (([mrp] = @original_mrp) OR ([mrp] IS NULL AND @original_mrp IS NULL)) AND (([net] = @original_net) OR ([net] IS NULL AND @original_net IS NULL))" 
        InsertCommand="INSERT INTO [medicinetable] ([medname], [dosage], [mfgdate], [expirydate], [availablestock], [mrp], [net]) VALUES (@medname, @dosage, @mfgdate, @expirydate, @availablestock, @mrp, @net)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [medicinetable]" 
        UpdateCommand="UPDATE [medicinetable] SET [medname] = @medname, [dosage] = @dosage, [mfgdate] = @mfgdate, [expirydate] = @expirydate, [availablestock] = @availablestock, [mrp] = @mrp, [net] = @net WHERE [mid] = @original_mid AND (([medname] = @original_medname) OR ([medname] IS NULL AND @original_medname IS NULL)) AND (([dosage] = @original_dosage) OR ([dosage] IS NULL AND @original_dosage IS NULL)) AND (([mfgdate] = @original_mfgdate) OR ([mfgdate] IS NULL AND @original_mfgdate IS NULL)) AND (([expirydate] = @original_expirydate) OR ([expirydate] IS NULL AND @original_expirydate IS NULL)) AND (([availablestock] = @original_availablestock) OR ([availablestock] IS NULL AND @original_availablestock IS NULL)) AND (([mrp] = @original_mrp) OR ([mrp] IS NULL AND @original_mrp IS NULL)) AND (([net] = @original_net) OR ([net] IS NULL AND @original_net IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_mid" Type="Int64" />
            <asp:Parameter Name="original_medname" Type="String" />
            <asp:Parameter Name="original_dosage" Type="String" />
            <asp:Parameter Name="original_mfgdate" Type="String" />
            <asp:Parameter Name="original_expirydate" Type="String" />
            <asp:Parameter Name="original_availablestock" Type="Int32" />
            <asp:Parameter Name="original_mrp" Type="Int64" />
            <asp:Parameter Name="original_net" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="medname" Type="String" />
            <asp:Parameter Name="dosage" Type="String" />
            <asp:Parameter Name="mfgdate" Type="String" />
            <asp:Parameter Name="expirydate" Type="String" />
            <asp:Parameter Name="availablestock" Type="Int32" />
            <asp:Parameter Name="mrp" Type="Int64" />
            <asp:Parameter Name="net" Type="Int64" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="medname" Type="String" />
            <asp:Parameter Name="dosage" Type="String" />
            <asp:Parameter Name="mfgdate" Type="String" />
            <asp:Parameter Name="expirydate" Type="String" />
            <asp:Parameter Name="availablestock" Type="Int32" />
            <asp:Parameter Name="mrp" Type="Int64" />
            <asp:Parameter Name="net" Type="Int64" />
            <asp:Parameter Name="original_mid" Type="Int64" />
            <asp:Parameter Name="original_medname" Type="String" />
            <asp:Parameter Name="original_dosage" Type="String" />
            <asp:Parameter Name="original_mfgdate" Type="String" />
            <asp:Parameter Name="original_expirydate" Type="String" />
            <asp:Parameter Name="original_availablestock" Type="Int32" />
            <asp:Parameter Name="original_mrp" Type="Int64" />
            <asp:Parameter Name="original_net" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
</asp:Content>

