<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student</title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color: brown;
            background-image:url(student.jpg);
        }
        .auto-style2 {
            width: 443px;
        }
        .auto-style5 {
            width: 443px;
            text-align: center;
        }
        .auto-style6 {
            color: #FF0000;
            font-size: x-large;
        }
        .auto-style7 {
            color: #FF0000;
        }
        .auto-style8 {
            color: #FF0000;
            font-weight: bold;
        }
        .auto-style9 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style12 {
            font-size: medium;
            font-weight: bold;
            color: #00CC00;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            font-size: medium;
            font-weight: bold;
            color: #009933;
        }
    </style>
</head>
    <center>
<body background="ritik.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="White" Text="Student ID" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style7" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="First Name" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style8"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Last Name" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style8"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Date Of Birth" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style8"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Phone" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style8"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Mobile" runat="server" Font-Bold="True" Text="Mobile" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style8"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Parent ID" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style8"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Date Of Join" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style8"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Status" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style13">
                    <strong>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style8"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" CssClass="auto-style12" />
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" CssClass="auto-style14" />
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" CssClass="auto-style12" />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="P Search" CssClass="auto-style12" />
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Button ID="Button7" runat="server" Text="Report" CssClass="auto-style14" />
                    <asp:Button ID="Button5" runat="server" Text="All Search" OnClick="Button5_Click" CssClass="auto-style14" />
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" CssClass="auto-style12" />
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackImageUrl="back.JPG" DataSourceID="SqlDataSource1" CssClass="auto-style6">
            <Columns>
                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="parent_id" HeaderText="parent_id" SortExpression="parent_id" />
                <asp:BoundField DataField="date_of_join" HeaderText="date_of_join" SortExpression="date_of_join" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
    </form>
</body>
</html>
