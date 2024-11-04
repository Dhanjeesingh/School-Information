<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mymenu.aspx.cs" Inherits="mymenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #FF0000;
            background-color: #FF0000;
            background-image:url(mn.jpg);
        }
    </style>
</head>
    <center>
<body background="ritik.jpg">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <strong>
        <asp:Menu ID="Menu1" runat="server" CssClass="auto-style1" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem Text="Student" Value="Student">
                    <asp:MenuItem NavigateUrl="~/student.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptstudent.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Grade" Value="Grade">
                    <asp:MenuItem NavigateUrl="~/grade.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptgrade.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem></asp:MenuItem>
                <asp:MenuItem Text="Course" Value="Course">
                    <asp:MenuItem NavigateUrl="~/course.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptcourse.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Teacher" Value="Teacher">
                    <asp:MenuItem NavigateUrl="~/teacher.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptteacher.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Parent" Value="Parent">
                    <asp:MenuItem NavigateUrl="~/parent.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptparent.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Attendance" Value="Attendance">
                    <asp:MenuItem NavigateUrl="~/attendance.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptattendance.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Class Room" Value="Class Room">
                    <asp:MenuItem NavigateUrl="~/classroom.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/RptClassroom.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Class Room Student" Value="Class Room Student">
                    <asp:MenuItem NavigateUrl="~/class_room_student.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptclassroomstudent.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam" Value="Exam">
                    <asp:MenuItem NavigateUrl="~/exam.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptexam.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam Type" Value="Exam Type">
                    <asp:MenuItem NavigateUrl="~/exam_type.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptexamtype.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Exam Result" Value="Exam Result">
                    <asp:MenuItem NavigateUrl="~/exam_result.aspx" Text="Open" Value="Open"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Rptexamresult.aspx" Text="Report" Value="Report"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
        </strong>
    </form>
</body>
</html>
