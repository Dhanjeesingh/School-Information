<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam_result.aspx.cs" Inherits="exam_result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam Result</title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color:white;
            background-image:url(cr.jpg);
        }
        .auto-style2 {
            width: 332px;
        }
        .auto-style3 {
            width: 332px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
            text-align: left;
        }
        #form1 {
            font-size: large;
            color: #FFFFCC;
            background-color: #000000;
        }
        .red {
            text-align: center;
            color: #660033;
            font-weight: 700;
        }
        .auto-style5 {
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
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Exam Id" style="text-align: center; color: #660033; font-weight: 700; background-color: #FFFFFF"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox8" runat="server" ForeColor="Red" style="font-weight: 700; color: #FF3300; background-color: #FFFF66"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="red">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Student Id" style="color: #660033; font-weight: 700"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox9" runat="server" style="font-weight: 700; color: #FF3300; background-color: #FFFF00;"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" style="font-weight: 700; color: #660033">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Course ID" style="font-weight: 700; color: #660033"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox10" runat="server" style="font-weight: 700; color: #FF3300; background-color: #FFFF66;"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" style="font-weight: 700; color: #660033">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Marks" style="color: #660033; font-weight: 700"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox11" runat="server" style="font-weight: 700; color: #FF3300; background-color: #FFFF66;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" style="font-style: italic; font-weight: 700; font-size: large; color: #FF0000; background-color: #333300;" />
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" style="font-weight: 700; font-style: italic; font-size: large; color: #FF3300; background-color: #333300;" />
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" style="font-size: large; font-weight: 700; color: #FF0000; font-style: italic; background-color: #333300" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" style="font-size: large; color: #FF0000; font-weight: 700; font-style: italic; background-color: #333300" />
                    <asp:Button ID="Button5" runat="server" Text="All Search" OnClick="Button5_Click" style="font-weight: 700; font-size: large; color: #FF0000; font-style: italic; background-color: #333300" />
                    <asp:Button ID="Button6" runat="server" Text="P Search" OnClick="Button6_Click" style="font-weight: 700; font-size: large; color: #FF0000; font-style: italic; background-color: #333300" />
                    <asp:Button ID="Button7" runat="server" Text="Report" style="font-weight: 700; font-size: large; color: #FF0000; font-style: italic; background-color: #333300" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackImageUrl="back.JPG" DataSourceID="SqlDataSource1" style="color: #FF0000; background-color: #003300; font-weight: 700; font-size: x-large;">
            <Columns>
                <asp:BoundField DataField="exam_id" HeaderText="exam_id" SortExpression="exam_id" />
                <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
                <asp:BoundField DataField="marks" HeaderText="marks" SortExpression="marks" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [exam_result]"></asp:SqlDataSource>
    </form>
</body>
</html>
