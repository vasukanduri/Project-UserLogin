<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatietPage.aspx.cs" Inherits="PatientLogin.PatietPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 10%;
        }

        .auto-style2 {
            width: 116px;
        }

        .auto-style3 {
            width: 80%;
            border: 1px solid #333300;
        }

        .auto-style4 {
            height: 30px;
        }
    </style>
</head>
<body style="height: 95px">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="3" class="auto-style1" style="width: 90%">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="87px" ImageUrl="~/images/yikg7d5eT.png" Width="104px" />
                </td>            
                <td>
                    <b style="font-family: Verdana; color: #000080; font-size: x-large"> Patient Information</b>
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="color: #FF0000; font-weight: bold; font-size: large">
                    <asp:LinkButton runat="server" ID="lbtnSignOut" Text="Log Out" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000" PostBackUrl="~/Login.aspx" CausesValidation="False" ></asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    <table align="center" cellpadding="4" cellspacing="3" class="auto-style3" style="border-width: thin; border-color: #C0C0C0">
        <tr>
            <td style="font-size: x-large; color: #993333">Welcome&nbsp;
                <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>       
  </table>
        </br>
         <table align="center" cellpadding="4" cellspacing="3" class="auto-style3">

        <tr>
            <td width="30%" style="top: 100%" valign="top">
                <asp:Panel ID="pnlMenu" runat="server" Height="500px" BorderColor="#990000" BorderStyle="Ridge" BackColor="#FFFFCC">
                    <table  style="border-color: #000066; background-color: #FFFFCC; color: #800000; width: 100%; height: 278px">
                        <tr>
                            <td>
                              <asp:LinkButton ID="lbtnDetails" runat="server" Text="Patient Info" OnClick="lbtnDetails_Click" CausesValidation="False"></asp:LinkButton>
                            </td>
                        </tr>
                         <tr>
                            <td>
                              <asp:LinkButton ID="lbtnNews" runat="server" Text="News" OnClick="lbtnNews_Click" CausesValidation="False"></asp:LinkButton>
                            </td>
                        </tr>
                         <tr>
                            <td>
                              <asp:LinkButton ID="lbtnPwd" runat="server" Text="ChangePassword" OnClick="lbtnPwd_Click" CausesValidation="False"></asp:LinkButton>
                            </td>
                        </tr>
                         <tr>
                            <td>
                              <asp:LinkButton ID="lbtnAppointments" runat="server" Text="Appointments" OnClick="lbtnAppointments_Click" CausesValidation="False"></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td valign="top" style"border: thin ridge #000066; width: 70%; table-layout: auto""color: #660033; display: list-item; overflow: scroll; border: thin ridge #000066; background-color: #FFFFFF""font-size: large; font-family: Verdana" >
              <asp:Panel ID="pnlInfo" runat="server"> 
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Patient ID" DataSourceID="" style="margin-left: 10px">             
                   
                   
                    <ItemTemplate>
                         <table>
                           <tr>
                                <td width="50%">
                                   <span style="background-color: #FFF8DC;">Patient ID:
                                </td>
                                <td>
                                    <asp:Label ID="Patient_IDLabel" runat="server" Text='<%# Eval("[Patient ID]") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <span style="background-color: #FFF8DC;">First Name:
                                </td>
                                <td>
                                    <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("[First Name]") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <span style="background-color: #FFF8DC;">Last Name:
                                </td>
                                <td>
                                    <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("[Last Name]") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <span style="background-color: #FFF8DC;">Age:
                                </td>
                                <td>
                                    <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <span style="background-color: #FFF8DC;">Email:
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <span style="background-color: #FFF8DC;">Gender:
                                </td>
                                <td>
                                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <span style="background-color: #FFF8DC;">Address:
                                </td>
                                <td>
                                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td width="50%">
                                    <span style="background-color: #FFF8DC;">Contact:
                                </td>
                                <td>
                        <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                                </td>
                            </tr>                            
                        <br />                           
                      
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        </div>
                    </LayoutTemplate>
                   <%-- <SelectedItemTemplate>
                        <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Patient ID:
                        <asp:Label ID="Patient_IDLabel" runat="server" Text='<%# Eval("[Patient ID]") %>' />
                        <br />
                        First Name:
                        <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("[First Name]") %>' />
                        <br />
                        Last Name:
                        <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("[Last Name]") %>' />
                        <br />
                        Age:
                        <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                        <br />
                        Email:
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        <br />
                        Gender:
                        <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        <br />
                        Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        <br />
                        Contact:
                        <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br /><br /></span>
                    </SelectedItemTemplate>--%>
                </asp:ListView>
              </asp:Panel>
                <asp:Panel ID="pnlChangePassword" runat="server" BackColor="White" BorderColor="Black">
                    <table>
                      <tr>
                          <td width="50%" align="left">
                              <asp:Label runat="server" Text="Old Password" ></asp:Label>
                          </td>
                          <td width="50%" align="left">
                              <asp:TextBox ID="tbOld" runat="server" TextMode="Password" Width="180px" ></asp:TextBox>
                              <asp:RequiredFieldValidator ID="rfvOld" runat="server" ControlToValidate="tbOld" ErrorMessage="Please enter old password" Font-Names="Aharoni" ForeColor="Maroon"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                        <tr>
                          <td width="50%" align="left">
                              <asp:Label runat="server" Text="New Password" ></asp:Label>
                          </td>
                          <td width="50%" align="left">
                              <asp:TextBox ID="tbNew" runat="server" TextMode="Password" Width="180px" ></asp:TextBox>
                              <asp:RequiredFieldValidator ID="rfvNew" runat="server" ControlToValidate="tbNew" ErrorMessage="plaese enter new password" Font-Names="Aharoni" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                        <tr>
                          <td width="50%" align="left">
                              <asp:Label runat="server" Text="Repeat Password" ></asp:Label>
                          </td>
                          <td width="50%" align="left">
                              <asp:TextBox ID="tbRepeat" runat="server" TextMode="Password" Width="180px" ></asp:TextBox>
                              <asp:RequiredFieldValidator ID="rfvRepeat" runat="server" ControlToValidate="tbRepeat" ErrorMessage="please repeat the new password" Font-Names="Aharoni" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                              <asp:CompareValidator ID="cmpPwd" runat="server" ControlToCompare="tbNew" ControlToValidate="tbRepeat" ErrorMessage="please enter same value as of new password" Font-Names="Aharoni" ForeColor="#CC0000"></asp:CompareValidator>
                          </td>
                      </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>

                        </tr>
                         <tr>
                             
                            <td>
                                &nbsp;
                            </td>
                             <td>
                                 <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                             </td>

                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td  align="left">
                                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CausesValidation="false" Width="185px" OnClick="btnChangePassword_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnlNews" runat="server" BackColor="#FFFFCC" Height="132px">
                    <table>
                        <tr>
                            <td>
                              News about the health care organization is dispalyed here
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="pnlAppointments" runat="server" BackColor="#CCCCFF" Height="180px">
                    <table>
                        <tr>
                            <td>
                                Patient Appointments is Dispalyed here
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PatientLoginConnectionString %>" DeleteCommand="DELETE FROM [Patient Register] WHERE [Patient ID] = @Patient_ID" InsertCommand="INSERT INTO [Patient Register] ([First Name], [Last Name], [Age], [Email], [Gender], [Address], [Contact]) VALUES (@First_Name, @Last_Name, @Age, @Email, @Gender, @Address, @Contact)" SelectCommand="SELECT * FROM [Patient Register]" UpdateCommand="UPDATE [Patient Register] SET [First Name] = @First_Name, [Last Name] = @Last_Name, [Age] = @Age, [Email] = @Email, [Gender] = @Gender, [Address] = @Address, [Contact] = @Contact WHERE [Patient ID] = @Patient_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Patient_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Contact" Type="Int64" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Contact" Type="Int64" />
                        <asp:Parameter Name="Patient_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
            </td>
        </tr>
             <tr>
                 <td class="auto-style4"></td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
             </tr>
    </table>
          </asp:Panel>
    </form>
    </body>
</html>
