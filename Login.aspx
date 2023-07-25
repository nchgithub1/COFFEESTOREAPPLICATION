<%@ Page Title="Login" Language="C#" MasterPageFile="~/MSite.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CoffeeStore1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="client_section layout_padding">
            <div class="container">
                <div class="row">
                    <asp:Panel ID="pnlLogin" runat="server" BorderColor="Wheat" BorderWidth="2px">
                        <table border="0">
                            <tr>
                                <td colspan="4" style="text-align: center;">
                                    <h1 class="client_taital">USER LOGIN</h1>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="text-align: right;">
                                    <p class="client_text">
                                        <asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>&nbsp;
                                    </p>
                                </td>

                                <td style="width: 165px">
                                    <asp:TextBox ID="txtUserName" runat="server" Text="" Width="160px" MaxLength="50"></asp:TextBox>

                                </td>
                                <td>
                                    <p class="client_text">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" Font-Bold="true"
                                            ErrorMessage="Username is required" ControlToValidate="txtUserName">
                                        </asp:RequiredFieldValidator>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td style="text-align: right;">
                                    <p class="client_text">
                                        <asp:Label ID="lblUserPassword" runat="server" Text="Password"></asp:Label>&nbsp;
                                    </p>
                                </td>
                                <td style="width: 165px">
                                    <p class="client_text">
                                        <asp:TextBox ID="txtUserPassword" runat="server" Text="" Width="160px" TextMode="Password" MaxLength="110"></asp:TextBox>
                                    </p>
                                </td>
                                <td>
                                    <p class="client_text">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" Font-Bold="true"
                                            ErrorMessage="Password is required" ControlToValidate="txtUserPassword">
                                        </asp:RequiredFieldValidator>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>
                                <td style="text-align: center; vertical-align: middle;">
                                    <div class="send_btn">
                                        <div type="text" class="main_bt">
                                            <asp:Button ID="btnLogin" runat="server" Text="LOGIN" Font-Bold="true" OnClick="btnLogin_Click" />
                                        </div>
                                    </div>
                                </td>
                                <td>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>
                                <td style="text-align: center; vertical-align: middle;">
                                    <div class="read_bt"><a href="UserAccount.aspx?NewUser=Y">NEW USER</a></div>
                                </td>
                                <td>&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <p class="client_text">
                                        <asp:Label ID="lblMessage" Font-Bold="true" ForeColor="Red" runat="server" Text=""></asp:Label>
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
