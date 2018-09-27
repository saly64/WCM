<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="form-div">
            <div class="sub-form">
                <p>User name</p>
                <input id="username" required="required"></input>
            </div>
            <div class="sub-form">
                <p>Email</p>
                <input id="email" required="required"></input>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <div class="sub-form">
                <p>Password</p>
                <input id="pwd" type="password" required="required"></input>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd" ControlToValidate="confpwd" ErrorMessage="CompareValidator"></asp:CompareValidator>
            </div>
            <div class="sub-form">
                <p>Confirm password</p>
                <input id="confpwd" type="password" required="required"></input>
            </div>
            <button id="submit">Submit</button>
        </div>
    </form>
</body>
</html>
