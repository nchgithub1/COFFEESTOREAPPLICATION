﻿<%@ Page Title="Products" Language="C#" MasterPageFile="~/MSite.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="CoffeeStore1.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="contact_section layout_padding">
            <div class="container">
                <h6 class="contact_text">EXCLUSIVE COFFEE BLENDS</h6>
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

                                <table border="0" width="100%">
                                    <tr>
                                        <td style="vertical-align: top; text-align: left; width: 30%;">
                                            <img src="Images/coffee1.png" style="width: 100%; height: 100%;" />
                                        </td>
                                        <td style="vertical-align: top; text-align: left; width: 30%;">
                                            <img src="Images/coffee2.png" style="width: 100%; height: 100%;" />
                                        </td>
                                        <td style="vertical-align: top; text-align: left; width: 30%;">
                                            <img src="Images/coffee3.png" style="width: 100%; height: 100%;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Label ID="lblCoffee1" runat="server" Text="$25.00" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Label ID="lblCoffee2" runat="server" Text="$30.00" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Label ID="lblCoffee3" runat="server" Text="$36.00" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Button ID="btnCoffee1" runat="server" Text="Buy" Font-Bold="true" OnClick="btnCoffee1_Click" />
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Button ID="btnCoffee2" runat="server" Text="Buy" Font-Bold="true" OnClick="btnCoffee2_Click" />
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Button ID="btnCoffee3" runat="server" Text="Buy" Font-Bold="true" OnClick="btnCoffee3_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: left; width: 30%;">
                                            <img src="Images/coffee4.png" style="width: 68%; height: 68%;" />
                                        </td>
                                        <td style="vertical-align: top; text-align: left; width: 30%;">
                                            <img src="Images/coffee5.png" style="width: 100%; height: 100%;" />
                                        </td>
                                        <td style="vertical-align: top; text-align: left; width: 30%;">
                                            <img src="Images/coffee6.png" style="width: 100%; height: 100%;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Label ID="lblCoffee4" runat="server" Text="$28.84" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Label ID="lblCoffee5" runat="server" Text="$48.95" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Label ID="lblCoffee6" runat="server" Text="$19.28" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Button ID="btnCoffee4" runat="server" Text="Buy" Font-Bold="true" OnClick="btnCoffee4_Click" />
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Button ID="btnCoffee5" runat="server" Text="Buy" Font-Bold="true" OnClick="btnCoffee5_Click" />
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Button ID="btnCoffee6" runat="server" Text="Buy" Font-Bold="true" OnClick="btnCoffee6_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: top; text-align: left; width: 30%;">
                                            <img src="Images/coffee7.png" style="width: 100%; height: 100%;" />
                                        </td>
                                        <td style="vertical-align: top; text-align: left; width: 30%;">
                                            <img src="Images/coffee8.png" style="width: 100%; height: 100%;" />
                                        </td>
                                        <td style="vertical-align: top; text-align: left; width: 30%;">
                                            <img src="Images/coffee9.png" style="width: 68%; height: 68%;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Label ID="lblCoffee7" runat="server" Text="$14.72" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Label ID="lblCoffee8" runat="server" Text="$26.99" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Label ID="lblCoffee9" runat="server" Text="$23.49" Font-Bold="true"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Button ID="btnCoffee7" runat="server" Text="Buy" Font-Bold="true" OnClick="btnCoffee7_Click" />
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Button ID="btnCoffee8" runat="server" Text="Buy" Font-Bold="true" OnClick="btnCoffee8_Click" />
                                        </td>
                                        <td style="vertical-align: middle; text-align: center; width: 30%;">
                                            <asp:Button ID="btnCoffee9" runat="server" Text="Buy" Font-Bold="true" OnClick="btnCoffee9_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
