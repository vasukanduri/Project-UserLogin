<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PatientLogin.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }

        .auto-style2 {
            width: 90%;
        }

        .auto-style3 {
            width: 11%;
        }

        .auto-style4 {
            height: 26px;
        }

        .auto-style5 {
            height: 26px;
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table align="center" cellpadding="3" class="auto-style1" style="width: 100%; border-bottom-style: ridge; border-bottom-width: thin; border-bottom-color: #990033;">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="87px" ImageUrl="~/images/yikg7d5eT.png" Width="104px" />
                </td>
                <td style="font-size: x-large; color: #000066; font-weight: bold; font-family: Verdana, Geneva, Tahoma, sans-serif;">Patient Registration</td>
                <td>&nbsp;
                </td>
                <td style="color: #FF0000; font-weight: bold; font-size: large">
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#990000" P
                        ostBackUrl="~/Login.aspx" PostBackUrl="~/Login.aspx" CausesValidation="False">Sign In</asp:LinkButton>
                </td>
            </tr>
        </table>
        <asp:Panel ID="pnlReg" runat="server">

            <table align="center" cellpadding="3" cellspacing="4" class="auto-style2" st style="width: 80%">
                <tr>
                    <td class="auto-style4" style="width: 50%">First Name *</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbFname" runat="server" Width="251px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name Required" ControlToValidate="tbFname" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="width: 50%">Last Name *</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbLastName" runat="server" Width="251px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbLastName" ErrorMessage="Last Name Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="width: 50%">Age *</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbAge" runat="server" Width="251px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your age" ControlToValidate="tbAge" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="width: 50%">Email *</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbEmail" runat="server" Width="251px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Enter valid Email" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="width: 50%">Gender</td>
                    <td class="auto-style4">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="114px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="width: 50%">Address</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbAddress" runat="server" Width="251px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Contact No</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbContactNo" runat="server" Width="251px" TextMode="Phone"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbContactNo" ErrorMessage="Please enter valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="width: 50%">UserName *</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbUserName" runat="server" Width="251px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tbUserName" runat="server" ErrorMessage="User Name Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Password *</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbPassword" TextMode="Password" runat="server" Width="251px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="width: 50%">Re Enter Password *</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="tbPasswordCheck" runat="server" Width="251px" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password did not match" ControlToValidate="tbPasswordCheck" ControlToCompare="tbPassword" ForeColor="#CC0000"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="126px" OnClick="btnSubmit_Click" CausesValidation="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red" Font-Size="Large"></asp:Label>
                    </td>

                </tr>
            </table>
        </asp:Panel>


        <asp:Panel ID="pnlSuccess" runat="server" Visible="False">
            <div style="text-align: center;">
                <asp:Image ID="SuccessIcon" runat="server" ImageUrl="~/Images/Success.png" ImageAlign="Middle" />
                <br />
                <br />
                <label style="color: #008000; font-size: xx-large">
                    Registered Successfully.
                                                <br />
                </label>
                <br />
                <br />
                <br />
                Your Patient ID Is&nbsp;<br />
                &nbsp;<br />
                <asp:Label ID="lblPatientNo" runat="server" Font-Size="Medium"></asp:Label>

                <br />
                <br />

                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" PostBackUrl="~/PatietPage.aspx" CausesValidation="False">Continue</asp:LinkButton>

                <br />
                <br />

            </div>
        </asp:Panel>


    </form>

    </form>
</body>
</html>
