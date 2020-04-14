<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 71%;
        }
        .auto-style2 {
            width: 269px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/signup.aspx" Target="_blank">Sign up</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/hyperLinks.aspx" Target="_self">Sign in</asp:HyperLink>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
