<%@ Page Title="" Language="C#" MasterPageFile="~/MSite.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="CoffeeStore1.Reports" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Height="600px" Width="950px">
        <LocalReport ReportPath="Report1.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="sqlDBCoffee" Name="dsProductTotals" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="sqlDBCoffee" runat="server" ConnectionString="<%$ ConnectionStrings:CoffeeConnectionStringReport %>" DeleteCommand="usp_SelectProduct_Quanity_TotalAmount" DeleteCommandType="StoredProcedure" SelectCommand="usp_SelectProduct_Quanity_TotalAmount" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
