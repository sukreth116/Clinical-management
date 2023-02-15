<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adeditstaff.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="sid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="sid" HeaderText="sid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="sid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="address" HeaderText="address" 
                    SortExpression="address" />
                <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
                    SortExpression="phoneno" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="nationality" HeaderText="nationality" 
                    SortExpression="nationality" />
                <asp:BoundField DataField="qualification" HeaderText="qualification" 
                    SortExpression="qualification" />
                <asp:BoundField DataField="gender" HeaderText="gender" 
                    SortExpression="gender" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [stafftb] WHERE [sid] = @original_sid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([phoneno] = @original_phoneno) OR ([phoneno] IS NULL AND @original_phoneno IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([nationality] = @original_nationality) OR ([nationality] IS NULL AND @original_nationality IS NULL)) AND (([qualification] = @original_qualification) OR ([qualification] IS NULL AND @original_qualification IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL))" 
            InsertCommand="INSERT INTO [stafftb] ([name], [age], [address], [phoneno], [dob], [nationality], [qualification], [gender]) VALUES (@name, @age, @address, @phoneno, @dob, @nationality, @qualification, @gender)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [stafftb]" 
            UpdateCommand="UPDATE [stafftb] SET [name] = @name, [age] = @age, [address] = @address, [phoneno] = @phoneno, [dob] = @dob, [nationality] = @nationality, [qualification] = @qualification, [gender] = @gender WHERE [sid] = @original_sid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([phoneno] = @original_phoneno) OR ([phoneno] IS NULL AND @original_phoneno IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([nationality] = @original_nationality) OR ([nationality] IS NULL AND @original_nationality IS NULL)) AND (([qualification] = @original_qualification) OR ([qualification] IS NULL AND @original_qualification IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_sid" Type="Int64" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_age" Type="Int32" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_phoneno" Type="Int64" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_nationality" Type="String" />
                <asp:Parameter Name="original_qualification" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phoneno" Type="Int64" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="qualification" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="age" Type="Int32" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phoneno" Type="Int64" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="qualification" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="original_sid" Type="Int64" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_age" Type="Int32" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter Name="original_phoneno" Type="Int64" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_nationality" Type="String" />
                <asp:Parameter Name="original_qualification" Type="String" />
                <asp:Parameter Name="original_gender" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

