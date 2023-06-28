<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderSummary.aspx.cs" Inherits="CoffeeStore1.OrderSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table border="0">
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
                                <asp:Label ID="lblReviewandPlaceOrder" Font-Size="Medium" runat="server" Text="Review and place order" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblPlaceOrder" runat="server" Text="Your order will not be placed until you click 'Place Order'."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblCompleteOrder" runat="server" Text="This will complete your order and charge your payment method for the total amount due."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblShippingAddress" Font-Size="Medium" runat="server" Text="Shipping address" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtShippingAddress" runat="server" ReadOnly="true" TextMode="MultiLine" Height="95px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblPaymentInformation" Font-Size="Medium" runat="server" Text="Payment Information" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtPaymentInformation" runat="server" ReadOnly="true" TextMode="MultiLine" Height="95px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblDelivery" Font-Size="Medium" runat="server" Text="Delivery" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblEstimatedDelivery" Font-Size="Medium" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <hr />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;&nbsp;&nbsp;</td>
            <td style="width: 275px;">
                <asp:Panel ID="pnlOrderSummary" BorderWidth="1px" Style="width: 275px;" runat="server">
                    <table border="0" style="width: 275px;">
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; vertical-align: top;" colspan="4">
                                <asp:Label ID="lblOrderSummary" Font-Size="Medium" runat="server" Text="Order Summary" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td style="text-align: left; vertical-align: top;">
                                <asp:Label ID="lblSubTotal" runat="server" Text="Sub Total"></asp:Label>
                            </td>
                            <td style="width: 145px; text-align: right; vertical-align: middle;">
                                <asp:Label ID="lblSubTotalValue" runat="server" Text="$519.99"></asp:Label>
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td style="text-align: left; vertical-align: top;">
                                <asp:Label ID="lblSalesTax" runat="server" Text="Sales tax"></asp:Label>
                            </td>
                            <td style="width: 145px; text-align: right; vertical-align: middle;">
                                <asp:Label ID="lblSalesTaxValue" runat="server" Text="$44.20"></asp:Label>
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td style="text-align: left; vertical-align: top;">
                                <asp:Label ID="lblDelivery1" runat="server" Text="Delivery"></asp:Label>
                            </td>
                            <td style="width: 145px; text-align: right; vertical-align: middle;">
                                <asp:Label ID="lblDelivery1Value" runat="server" Text="FREE"></asp:Label>
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td style="text-align: left; vertical-align: top;">
                                <asp:Label ID="lblTotal" Font-Size="Medium" runat="server" Text="TOTAL" Font-Bold="true"></asp:Label>
                            </td>
                            <td style="width: 145px; text-align: right; vertical-align: middle;">
                                <asp:Label ID="lblTotalValue" Font-Size="Medium" runat="server" Text="$564.19" Font-Bold="true"></asp:Label>
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="text-align: center; vertical-align: middle;">
                                <asp:Button ID="btnPlaceOrder" runat="server" Width="220px" BackColor="#0066cc" OnClick="btnPlaceOrder_Click" ForeColor="White" Font-Bold="true" Font-Size="Medium" Text="Place Order" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
