<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timings_Files.aspx.cs" Inherits="WebApplication1.Timings_Files" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            From:
            <asp:TextBox ID="tbFrom" runat="server"></asp:TextBox>
            <br />
            To:
            <asp:TextBox ID="tbTo" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnFfmpeg" runat="server" Text="Get ffmpeg string" OnClick="btnFfmpeg_Click" />
            <br />
            <asp:Label ID="lblFfmpeg" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
