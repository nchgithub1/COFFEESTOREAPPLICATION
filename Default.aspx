<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoffeeStore1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="contact_section layout_padding">
            <div class="container">
                <h11 class="contact_text">EXCLUSIVE COFFEE BLENDS</h11>
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
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </main>
</asp:Content>

