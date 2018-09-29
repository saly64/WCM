<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Articles.aspx.cs" Inherits="Articles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Title</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server" Width="282px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Details</td>
                    <td>
                        <asp:TextBox ID="txtDetails" runat="server" Height="282px" TextMode="MultiLine" Width="333px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Picture</td>
                    <td>
                        <input id="add" type="file" runat="server" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="Add Article" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
