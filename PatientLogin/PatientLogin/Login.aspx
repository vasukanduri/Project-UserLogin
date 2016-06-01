<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PatientLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
            height: 60%;
            border: 1px solid #993366;
        }
        .auto-style2 {
            width: 60%;
            height: 60px;
            border: 1px solid #993366;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center"  style="margin: 200px;">
    
        <table align="center" class="auto-style1" style"border-style: ridge" style="border-color: #800000; background-color: #800000;">
            <tr>
                <td align="center" style"font-size: large; color: #000080" colspan="2" style="color: #FFFFFF; font-size: large;">
                    <b> Patient Login</b>
                </td>
            </tr>
        </table>

    
        <table align="center" class="auto-style2">
            <tr>
                <td  width="50%" align="center" colspan="2">
                    UserName:
                </td>
                <td width="50%" align="center">
                    <asp:TextBox ID="tbUserName" runat="server" OnTextChanged="tbUserName_TextChanged" Width="145px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="tbUserName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td  width="50%" align="center" colspan="2">
                    Password:
                </td>
                <td width="50%" align="center">
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Width="145px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="tbPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="50%" colspan="2">
                    &nbsp;
                </td>
                <td width="50%" align="center">
                  &nbsp;  
                </td> 
            </tr>
            
           
            <tr>
                <td width="50%" colspan="2">
                    &nbsp;
                </td>
                <td width="50%" align="center">
                 <asp:Button ID="btnSubmit" text="submit" runat="server" Width="145px" OnClick="btnSubmit_Click" />   
                </td>                 
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
         <table align="center" class="auto-style1" style"border-style: ridge" style="border-color: #FFFFFF; background-color: #800000;">
            <tr>
                <td align="left" style"font-size: large;" colspan="2" style="color: #800000; font-size: large; background-color: #FFFFFF;">
                   <asp:LinkButton ID="lbRegister" runat="server" CausesValidation="false" PostBackUrl="~/Registration.aspx" Text="Sign Up" ForeColor="Black">Sign Up</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
