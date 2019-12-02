<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Label ID="questionLabel" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="answer1RadioButton" runat="server" GroupName="answers" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButton ID="answer2RadioButton" runat="server" GroupName="answers" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:RadioButton ID="answer3RadioButton" runat="server" GroupName="answers" />
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:RadioButton ID="answer4RadioButton" runat="server" GroupName="answers" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        
                    </td>
                    <td>
                        <asp:Button ID="refreshButton" runat="server" OnClick="refreshButton_Click" Text="Refresh Page" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        
                        <asp:Label ID="answerLabel" runat="server"></asp:Label>
                        
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
