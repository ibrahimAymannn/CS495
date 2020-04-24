<%@ Page Language="C#" %>
<%@ import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void Male_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void registerButton_Click (object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|Database.mdf; Integrated Security = True";
        
        
        String strInsert= "INSERT INTO Student "
            + " VALUES ('" + firstNameTextBox.Text + "' , '"
            + lastNameTextBox.Text + "' , '"
            + genderRadioButtonList.SelectedValue + "' , '"
            + majorDropDownList.SelectedValue + "' , '"
            + emailTextBox.Text + "' , '"
            + studentIdTextBox.Text + "' , '"
            + passwordTextBox.Text + "')";


        SqlCommand cmdInsert = new SqlCommand(strInsert,conn);
        try
        {

            conn.Open();
            cmdInsert.ExecuteNonQuery();
            conn.Close();
            messageLabel.Text = "welcome " + firstNameTextBox.Text + " your acount was create succesfully!";


        }
        catch (SqlException err)
        {

            if (err.Number == 2627)
            {
                messageLabel.Text = "sorry database error!";
            }


        }
        catch {
            messageLabel.Text = "sorry system error!";
        
        }
        
        
    
    
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 100px;
        }
        .auto-style4 {
            width: 100px;
        }
        .auto-style5 {
            width: 32px;
        }
        .auto-style6 {
            width: 100px;
            height: 56px;
        }
        .auto-style7 {
            height: 56px;
        }
        .auto-style11 {
            height: 23px;
            width: 143px;
        }
        .auto-style12 {
            width: 143px;
        }
        .auto-style13 {
            height: 56px;
            width: 143px;
        }
        .auto-style14 {
            width: 100px;
            height: 26px;
        }
        .auto-style16 {
            width: 143px;
            height: 26px;
        }
        .auto-style17 {
            height: 26px;
        }
        .auto-style18 {
            height: 23px;
            width: 146px;
        }
        .auto-style19 {
            width: 146px;
        }
        .auto-style20 {
            height: 56px;
            width: 146px;
        }
        .auto-style21 {
            width: 146px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="6">
                    <asp:Label ID="Label1" runat="server" Text="Sign Up Form" Font-Bold="True" Font-Names="Arial Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Label ID="Label2" runat="server" Text="Please fill in all fields then click register :" Font-Italic="True" Font-Names="Ink Free"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="firstNameLabel" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="firstNameRequiredFieldValidator" runat="server" ErrorMessage="please enter first name" ForeColor="Red" ControlToValidate="firstNameTextBox"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="firstNameTextBox" ErrorMessage="enter valid name" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="lastNameLabel" runat="server" Text="Last Name :"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="lastNameRequiredFieldValidator" runat="server" ErrorMessage="please enter Last name" ForeColor="Red" ControlToValidate="lastNameTextBox"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="firstNameTextBox" ErrorMessage="enter valid name" ForeColor="Red" ValidationExpression="([A-Z][a-z]*\s)|([A-Z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:Label ID="genderLabel" runat="server" Text="Gender :"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:RadioButtonList ID="genderRadioButtonList" runat="server" Height="21px" Width="120px">
                        <asp:ListItem Selected="True" Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Femal</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style13"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style14" colspan="2">
                    <asp:Label ID="majorLabel" runat="server" Text="Major :"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:DropDownList ID="majorDropDownList" runat="server">
                        <asp:ListItem>-- Choose a Major --</asp:ListItem>
                        <asp:ListItem>cs</asp:ListItem>
                        <asp:ListItem>is</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="emailLabel" runat="server" Text="Email :"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    <br />
                    e.g. user@domain.com</td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter email" ControlToValidate="emailTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTextBox" ErrorMessage="enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="studentIdLabel" runat="server" Text="Student Id :"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="studentIdTextBox" runat="server"></asp:TextBox>
                    <br />
                    e.g. 900-05-1234</td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter ID" ControlToValidate="studentIdTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="studentIdTextBox" ErrorMessage="enter valid ID" ForeColor="Red" ValidationExpression="\d{3}\-\d{2}\-\d{4}"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14" colspan="2">
                    <asp:Label ID="passwordLabel" runat="server" Text="Password :"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please enter password" ControlToValidate="passwordTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="confirmPasswordLabel" runat="server" Text="Confirm Password :"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="confirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="not match !" ControlToCompare="passwordTextBox" ControlToValidate="confirmPasswordTextBox" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="registerButton" runat="server" Text="Register" OnClick="registerButton_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="clearButton" runat="server" Text="Clear" Width="71px" />
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="messageLabel" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
