<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentReceipt.aspx.cs" Inherits="CoffeeStore1.PaymentReceipt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table border="0" >
        <tr>
            <td>&nbsp;&nbsp;&nbsp;</td>
            <td>
                <asp:Panel ID="pnlShippingPaymentDelivery" runat="server">
                    <table>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblThanks" Font-Size="Medium" runat="server" Text="Thank you for being a great customer!" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblPlaceOrder" runat="server" Text="Your orders will be shipped to the shipping address provided."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblCompleteOrder" runat="server" Text="This has completed your order successfully."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p style="text-align: center;"><a runat="server" href="~/">Continue Shopping</a></p>
                                <br />
                                <hr />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
