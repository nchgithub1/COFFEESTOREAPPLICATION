<%@ Page Title="" Language="C#" MasterPageFile="~/MSite.Master" AutoEventWireup="true" CodeBehind="PaymentDetails.aspx.cs" Inherits="CoffeeStore1.PaymentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="contact_section layout_padding">
            <div class="container">
                <h6 class="contact_text">PAYMENT METHOD</h6>
            </div>
        </div>
        <div class="client_section layout_padding">
            <div class="container">
                <div class="row">
                    <table border="0">
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:Panel ID="pnlPaymentDetails" runat="server" BorderColor="Wheat" BorderWidth="2px">
                                    <table border="0" style="text-align: left; width: 100%; vertical-align: central;">
                                        <tr>
                                            <td colspan="5">&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td style="text-align: right; vertical-align: top;">
                                                <asp:Label ID="lblProvider" Font-Bold="true" runat="server" Text="Provider "></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: 165px">
                                                <asp:ListBox ID="lstProvider" runat="server">
                                                    <asp:ListItem Text="CitiBank" Value="CitiBank"></asp:ListItem>
                                                    <asp:ListItem Text="Discover" Value="Discover"></asp:ListItem>
                                                    <asp:ListItem Text="MasterCard" Value="MasterCard"></asp:ListItem>
                                                    <asp:ListItem Text="Visa" Value="Visa"></asp:ListItem>
                                                </asp:ListBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvProvider" runat="server" ForeColor="Red" Font-Bold="true"
                                                    ErrorMessage="Provider is required" ControlToValidate="lstProvider">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td style="text-align: right;">
                                                <asp:Label ID="lblNameonCard" Font-Bold="true" runat="server" Text="Name on Card "></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td style="width: 165px">
                                                <asp:TextBox ID="txtNameonCard" runat="server" Text="" Width="160px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvNameonCard" runat="server" ForeColor="Red" Font-Bold="true"
                                                    ErrorMessage="Name on Card is required" ControlToValidate="txtNameonCard">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td style="text-align: right;">
                                                <asp:Label ID="Label2" runat="server" Font-Bold="true" Text="Card Number "></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtCardNumber" runat="server" Text="" MaxLength="16" Width="160px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ForeColor="Red" Font-Bold="true" 
                                                    ErrorMessage="CardNumber is required" ControlToValidate="txtCardNumber">
                                                </asp:RequiredFieldValidator>
                                                  <asp:RegularExpressionValidator runat="server" ControlToValidate="txtCardNumber" ValidationExpression="^((4\d{3})|(5[1-5]\d{2}))[ -]?(\d{4}[ -]?){3}$|^(3[4,7]\d{2})[ -]?\d{6}[ -]?\d{5}$"
                                                    ErrorMessage="Invalid CardNumber." />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td style="text-align: right;">
                                                <asp:Label ID="Label3" runat="server" Font-Bold="true" Text="Expiry Date (MMYYYY) "></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>

                                                <asp:TextBox ID="txtExpiryDate" runat="server" Text="" Width="160px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvExpiryDate" runat="server" ForeColor="Red" Font-Bold="true"
                                                    ErrorMessage="Expiry Date is required" ControlToValidate="txtExpiryDate">
                                                </asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator runat="server" ControlToValidate="txtExpiryDate" ValidationExpression="(0[1-9]|1[1,2])(19|20)\d{2}"
                                                    ErrorMessage="Invalid date format." />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td style="text-align: right;">
                                                <asp:Label ID="lblSecurityCode" runat="server" Font-Bold="true" Text="Security Code"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtSecurityCode" CssClass="content" TextMode="Password" MaxLength="160" Width="200px" runat="server" Text=""></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvSecurityCode" runat="server" ForeColor="Red" Font-Bold="true"
                                                    ErrorMessage="Code is required" ControlToValidate="txtSecurityCode">
                                                </asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td style="text-align: right;">
                                                <asp:Label ID="Label4" runat="server" Font-Bold="true" Text="Zip Code"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtZipCode" runat="server" Text="" Width="100px"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                            <tr>
                                                <td colspan="5">&nbsp; </td>
                                            </tr>
                                        <tr>
                                            <td colspan="5">&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td style="text-align: right;">&nbsp;
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:CheckBox ID="ckShippingUserContactAddress" runat="server" Checked="false" Font-Bold="true" Text="Use Contact Address" AutoPostBack="true" OnCheckedChanged="ckShippingUserContactAddress_CheckedChanged" />
                                            </td>
                                            <td>&nbsp;</td>
                                            <tr>
                                                <td colspan="5">&nbsp; </td>
                                            </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td style="text-align: right;">
                                                <asp:Label ID="Label1" runat="server" Text="Shipping Address" Font-Bold="true"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtShippingAddress" CssClass="content" TextMode="Multiline" Width="200px" runat="server" Text=""></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="rfvShippingAddress" runat="server" ForeColor="Red" Font-Bold="true"
                                                    ErrorMessage="Shipping address is required" ControlToValidate="txtShippingAddress">
                                                </asp:RequiredFieldValidator>
                                            </td>
                                            <tr>
                                                <td colspan="5">&nbsp; </td>
                                            </tr>
                                        <tr>
                                            <td colspan="5">&nbsp;
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="3" style="text-align: center; vertical-align: middle;">&nbsp; </td>
                                            <td style="text-align: left; vertical-align: auto;">
                                                <asp:Button ID="btnSave" runat="server" Font-Bold="true" OnClick="btnSave_Click" Text="SAVE" />
                                                &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnClear" runat="server" Font-Bold="true" OnClick="btnClear_Click" Text="CLEAR" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">&nbsp; </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                <asp:Label ID="lblProviderStatus" Font-Bold="true" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
