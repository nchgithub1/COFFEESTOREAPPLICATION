<%@ Page Title="" Language="C#" MasterPageFile="~/MSite.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="CoffeeStore1.Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="client_section layout_padding">
            <div class="container">
                <div class="row">
                    <br />
                    <asp:Label ID="lblErrorMessage" runat="server" Text="Please, contact System administrator for further details." Font-Bold="true" ForeColor="Blue" Font-Size="Large"></asp:Label>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
