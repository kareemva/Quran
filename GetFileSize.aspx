<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetFileSize.aspx.cs" Inherits="WebApplication1.GetFileSize" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Write URL:"></asp:Label>
            <br />
            <asp:TextBox ID="tbUrl" runat="server" Width="492px"></asp:TextBox>
            <br />
            <asp:Button ID="btnGetSize" runat="server" OnClick="btnGetSize_Click" Text="Get Size" />
            <br />
            <asp:Label ID="lblSize" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
