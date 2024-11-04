<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher.aspx.cs" Inherits="teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher</title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color: brown;
            background-image:url(teacher.jpg);
        }
        .auto-style3 {
            width: 160px;
        }
        .auto-style4 {
            height: 31px;
            width: 480px;
        }
        .auto-style9 {
            height: 31px;
            width: 1029px;
            text-align: left;
        }
        .auto-style10 {
            width: 480px;
        }
        .auto-style11 {
            margin-left: 61px;
        }
        .auto-style12 {
            width: 1029px;
            text-align: left;
        }
        .auto-style14 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style16 {
            width: 60%;
            border: 1px solid #00ffff;
            background-color: brown;
            background-image: url('teacher.jpg');
            font-size: large;
        }
        .auto-style17 {
            width: 50%;
            border: 1px solid #00ffff;
            background-color: brown;
            background-image: url('teacher.jpg');
            text-align: left;
        }
        .auto-style19 {
            width: 1029px;
            height: 5px;
        }
        .auto-style20 {
            height: 5px;
            width: 480px;
        }
        .auto-style21 {
            width: 160px;
            font-size: medium;
        }
        .auto-style22 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color: #FFFFFF;
            background-image: url('teacher.jpg');
        }
    </style>
</head>
    <center>
<body background="ritik.jpg">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Red" Text="Teacher ID" CssClass="auto-style16"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Font-Italic="True"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Red" Text="First Name" CssClass="auto-style16"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Italic="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label3" runat="server" AssociatedControlID="Label2" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Red" Text="Last Name" CssClass="auto-style16"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Italic="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Red" Text="Date Of Birth" CssClass="auto-style16"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Italic="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label5" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Red" Text="Phone" CssClass="auto-style16"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Italic="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label6" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Red" Text="Mobile" CssClass="auto-style16"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Italic="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label7" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Red" Text="Status" CssClass="auto-style16"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox7" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Italic="True" CssClass="auto-style11"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label8" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" ForeColor="Red" Text="Address" CssClass="auto-style16"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox8" runat="server" BorderColor="Black" BorderStyle="Solid" Font-Italic="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" BackColor="Cyan" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style22" Font-Names="Franklin Gothic Heavy" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="Green" OnClick="Button1_Click" Text="New" ViewStateMode="Disabled" />
                    <asp:Button ID="Update" runat="server" Text="Update" BackColor="White" BorderColor="White" BorderStyle="Solid" CssClass="auto-style1" Font-Size="X-Large" ForeColor="Green" OnClick="Update_Click" Font-Bold="True" />
                    <asp:Button ID="Button2" runat="server" BackColor="Cyan" BorderColor="Black" CssClass="auto-style21" Font-Names="Franklin Gothic Heavy" Font-Size="X-Large" ForeColor="Green" Text="Save" OnClick="Button2_Click" Font-Bold="True" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button5" runat="server" Text="AllSearch" BackColor="Cyan" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style3" Font-Italic="True" Font-Names="Franklin Gothic Heavy" Font-Size="Large" ForeColor="Green" OnClick="Button5_Click" />
                    <asp:Button ID="Button4" runat="server" Text="Delete" BackColor="Cyan" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style21" Font-Italic="True" Font-Names="Franklin Gothic Heavy" Font-Size="X-Large" ForeColor="Green" OnClick="Button4_Click" />
                    <asp:Button ID="Button6" runat="server" Text="P Search" BackColor="Cyan" BorderColor="Black" BorderStyle="Solid" Font-Italic="True" Font-Names="Franklin Gothic Heavy" Font-Size="X-Large" ForeColor="Green" OnClick="Button6_Click"/>
                    <asp:Button ID="Button7" runat="server" Text="Report" BackColor="Cyan" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style3" Font-Italic="True" Font-Names="Franklin Gothic Heavy" Font-Size="Large" ForeColor="Green"  style="margin-bottom: 15px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
            </tr>
            </table>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackImageUrl="back.JPG" DataSourceID="SqlDataSource1" CssClass="auto-style14">
            <Columns>
                <asp:BoundField DataField="teacher_id" HeaderText="teacher_id" SortExpression="teacher_id" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            </Columns>
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [teacher]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
