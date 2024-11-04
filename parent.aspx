<%@ Page Language="C#" AutoEventWireup="true" CodeFile="parent.aspx.cs" Inherits="parent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parent</title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color: #ffffff;
            background-image:url(parent.jpg);
        }
        .auto-style2 {
            width: 280px;
            height: 49px;
        }
        .auto-style3 {
            width: 280px;
            height: 33px;
            text-align: left;
        }
        .auto-style4 {
            height: 33px;
            width: 557px;
            text-align: left;
        }
        .auto-style5 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style9 {
            width: 557px;
            height: 49px;
        }
        .auto-style10 {
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: medium;
            color: #009933;
        }
        .auto-style13 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style14 {
            width: 280px;
            text-align: left;
        }
        .auto-style15 {
            text-align: left;
            width: 557px;
        }
    </style>
</head>
    <center>
<body background="ritik.jpg">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Parent Id" CssClass="auto-style5"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15">
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </strong>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="First Name" CssClass="auto-style5"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15">
                    <strong>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text="Last Name" CssClass="auto-style5"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15">
                    <strong>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="Label4" runat="server" Text="Date Of Birth" CssClass="auto-style5"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style4">
                    <strong>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label5" runat="server" Text="Phone No" CssClass="auto-style5"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15">
                    <strong>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label6" runat="server" Text="Mobile" CssClass="auto-style5"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15">
                    <strong>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style10" Width="199px"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <strong>
                    <asp:Label ID="Label7" runat="server" Text="Status" CssClass="auto-style5"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style15">
                    <strong>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style10"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" CssClass="auto-style12" />
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" CssClass="auto-style12" />
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" CssClass="auto-style12" />
                    </strong>
                </td>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button6" runat="server" Text="P Search" OnClick="Button6_Click" CssClass="auto-style12" />
                    <asp:Button ID="Button5" runat="server" Text="All Search" OnClick="Button5_Click" CssClass="auto-style12" />
                    <asp:Button ID="Button7" runat="server" Text="Report" CssClass="auto-style12" />
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" CssClass="auto-style12" />
                    </strong>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackImageUrl="back.JPG" DataSourceID="SqlDataSource1" CssClass="auto-style13">
            <Columns>
                <asp:BoundField DataField="parent_id" HeaderText="parent_id" SortExpression="parent_id" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
        </asp:GridView>
        </strong>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [parent]"></asp:SqlDataSource>
    </form>
</body>
</html>
