
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="classroom.aspx.cs" Inherits="classroom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" bgcolor="red">
    <title>ClassRoom</title>
    <style type="text/css">
        .auto-style1 {
            width: 30s%;
            border: 1px solid #00ffff;
            background-color:Cyan;
            background-image:url(classroom.jpg);
        }
        .auto-style2 {
            width: 283px;
        }
        .auto-style3 {
            width: 283px;
            height: 39px;
        }
        .auto-style4 {
            height: 39px;
        }
        .auto-style5 {
            color: #990000;
            font-weight: 700;
            background-color: #FFFF66;
           
        }
        .auto-style6 {
            width: 283px;
            font-weight: bold;
            text-align: left;
        }
        #form1 {
            font-size: large;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
        .auto-style11 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style13 {
            font-weight: bold;
            color: #009933;
            background-color: #FFFFFF;
            font-size: medium;
        }
        .auto-style16 {
            height: 35px;
            text-align: left;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style19 {
            width: 283px;
            text-align: left;
        }
        .auto-style20 {
            width: 283px;
            height: 35px;
            text-align: left;
        }
        .auto-style21 {
            color: #009933;
            background-color: #FFFFFF;
            font-size: medium;
        }
    </style>
</head>
    <center>
    <body background="ritik.jpg">
       
    <form id="form1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="Class Room Id" style="font-weight: 700; " CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox1" runat="server" style="font-weight: 700; color: #FF0000; background-color: #FFFF66"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" style="font-weight: 700; color: #800000">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label2" runat="server" Text="Year" style="font-weight: 700; " CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox2" runat="server" style="font-weight: 700; color: #FF0000; background-color: #FFFF99"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <p class="auto-style17">
                    <asp:Label ID="Label3" runat="server" Text="Grade Id " style="font-weight: 700; " CssClass="auto-style11"></asp:Label>
                    </p>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox3" runat="server" style="font-weight: 700; color: #FF0000; background-color: #FFFF66"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="color: #800000; font-weight: 700">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Section" CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label5" runat="server" Text="Status" style="font-weight: 700; " CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox5" runat="server" style="font-weight: 700; color: #FF0000; background-color: #FFFF66"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="Label6" runat="server" Text="Remarks" style="font-weight: 700; " CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox6" runat="server" style="font-weight: 700; color: #FF0000; background-color: #FFFF66"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="Label7" runat="server" Text="Teacher Id" style="font-weight: 700; " CssClass="auto-style9"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox7" runat="server" style="font-weight: 700; color: #FF0000; background-color: #FFFF66"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" style="font-weight: 700; color: #800000">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="New" OnClick="Button1_Click" style="font-style: italic; font-weight: 700; " CssClass="auto-style21" />
                    <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" style="font-weight: 700; font-style: italic; " CssClass="auto-style21" />
                    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" style="font-weight: 700; font-style: italic; " CssClass="auto-style21" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" style="font-weight: 700; font-style: italic; " CssClass="auto-style21" />
                    <asp:Button ID="Button5" runat="server" Text="AllSearch" style="font-weight: 700; font-style: italic; " CssClass="auto-style21" />
                    <asp:Button ID="Button6" runat="server" Text="PSearch" OnClick="Button6_Click" style="font-weight: 700; font-style: italic; " CssClass="auto-style21" />
                    <strong>
                    <asp:Button ID="Button7" runat="server" Text="Report" style="font-style: italic; " CssClass="auto-style13" />
                    </strong>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackImageUrl="back.JPG" style="font-weight: 700; color: #FF0000; background-color: #666633">
            <Columns>
                <asp:BoundField DataField="classroom_id" HeaderText="classroom_id" SortExpression="classroom_id" />
                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                <asp:BoundField DataField="grade_id" HeaderText="grade_id" SortExpression="grade_id" />
                <asp:BoundField DataField="section" HeaderText="section" SortExpression="section" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                <asp:BoundField DataField="teacher_id" HeaderText="teacher_id" SortExpression="teacher_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Classroom]"></asp:SqlDataSource>
    </form>
</body>
        </center>
</html>
