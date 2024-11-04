<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #00ffff;
                 background-color: rgba(300, 80, 0, 0.3);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
           h1 {
            color: #fff;
            text-align: center;
            font-size: 2rem;
            font-weight: bold;
            padding: 10px;
            margin: 0 0 20px 0;
            border-radius: 25px;
            background-image: linear-gradient(to right, #00796b, #26a69a);
            width: 100%;
        }
            table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

            table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

  
      

           input[type="submit"] {
            background-image: linear-gradient(to right, #00796b, #26a69a);
            border: none;
            color: #fff;
            padding: 10px;
            margin: 10px 2px;
            cursor: pointer;
            border-radius: 5px;
            font-weight: bold;
            width: 100px;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background-image: linear-gradient(to right, #004d40, #00796b);
        }
            input[type="reset"]:hover,
            input[type="submit"]:hover {
                background-color: #45a049; /* Darker green on hover */
                 ;
            }


              .form {
            opacity: 0.95;
            border-radius: 10px;
            width: 450px;
            background-image: linear-gradient(to right, #4dd0e1, #a7ffeb);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.5);
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

       
        }
        .auto-style2 {
            width: 342px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Login id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Login Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Change" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
    </form>
</body>
</html>
