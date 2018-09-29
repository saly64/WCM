<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add user" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Article" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Edit Article" />
        </div>
    </form>
</body>
</html>
