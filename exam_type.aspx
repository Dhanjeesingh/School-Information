<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam_type.aspx.cs" Inherits="exam_type" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam Type</title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color: #ffffff;
            background-image:url(et.jpg);
        }
        .auto-style2 {
            width: 293px;
        }
        .auto-style3 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style4 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style5 {
            font-size: medium;
            font-weight: bold;
            color: #009933;
        }
        .auto-style6 {
            text-align: left;
        }
    </style>
</head>
    <center>
<body background="ritik.jpg">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Exam Type ID" CssClass="auto-style4"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Name" CssClass="auto-style4"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text="Description" CssClass="auto-style4"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New" CssClass="auto-style5" />
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" CssClass="auto-style5" />
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" CssClass="auto-style5" />
                    </strong>
                </td>
                <td>
                    <strong>
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" CssClass="auto-style5" />
                    <asp:Button ID="Button5" runat="server" Text="All Search" OnClick="Button5_Click" CssClass="auto-style5" />
                    <asp:Button ID="Button6" runat="server" Text="P Search" OnClick="Button6_Click" CssClass="auto-style5" />
                    <asp:Button ID="Button7" runat="server" Text="Report" CssClass="auto-style5" />
                    </strong>
                </td>
            </tr>
        </table>
    
    </div>
        <strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackImageUrl="back.JPG" DataSourceID="SqlDataSource1" CssClass="auto-style3">
            <Columns>
                <asp:BoundField DataField="exam_type_id" HeaderText="exam_type_id" SortExpression="exam_type_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="desc1" HeaderText="desc1" SortExpression="desc1" />
            </Columns>
        </asp:GridView>
        </strong>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [exam_type]"></asp:SqlDataSource>
    </form>
</body>
</html>
