<%@ Page Title="" Language="C#" MasterPageFile="~/pharmacy.master" AutoEventWireup="true" CodeFile="phbillcalcu.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="pid" HeaderText="Patient Id" />
                <asp:BoundField DataField="patientname" HeaderText="Patient Name" />
                <asp:BoundField DataField="diagonsis" HeaderText="Diagnosis" />
                <asp:BoundField DataField="prescription" HeaderText="Prescription" />
                <asp:BoundField DataField="date" HeaderText="Date" />
            </Fields>
        </asp:DetailsView>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Pid"></asp:Label>
&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Prescreption id"></asp:Label>
    </p>
    <table class="style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Select Medicine for Sell"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="medname" 
                    DataValueField="mid" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp;
                <asp:Label ID="Label10" runat="server" Text="Dosage : "></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="Dosage"></asp:Label>
&nbsp;<asp:Label ID="Label11" runat="server" Text="Net Price :"></asp:Label>
&nbsp;<asp:Label ID="Label8" runat="server" Text="Net"></asp:Label>
&nbsp;<asp:Label ID="Label12" runat="server" Text="MRP :"></asp:Label>
&nbsp;
                <asp:Label ID="Label9" runat="server" Text="MRP"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Current Stock"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Required Quantity"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Number only" 
                    ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Insert to list" />
                &nbsp; </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            onrowcommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="medname" HeaderText="Medicine Name" />
                <asp:BoundField DataField="dosage" HeaderText="Dosage" />
                <asp:BoundField DataField="mrp" HeaderText="MRP" />
                <asp:BoundField DataField="qty" HeaderText="Quantity" />
                <asp:BoundField DataField="total" HeaderText="Total" />
                <asp:TemplateField HeaderText="Remove ">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("billid") %>' onclick="LinkButton1_Click">Remove</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Calculate Final Bill" />
&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Text="Final Bill Amount : "></asp:Label>
        <asp:Label ID="Label14" runat="server" Text="Bill"></asp:Label>
    </p>
</asp:Content>

