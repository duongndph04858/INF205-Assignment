<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <AlternatingItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="product_category_idLabel" runat="server" Text='<%# Eval("product_category_id") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:TextBox ID="product_category_idTextBox" runat="server" Text='<%# Bind("product_category_id") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>
                <asp:TextBox ID="product_category_idTextBox" runat="server" Text='<%# Bind("product_category_id") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="product_category_idLabel" runat="server" Text='<%# Eval("product_category_id") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                        <tr runat="server" style="">
                            <th runat="server">product_category_id</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="">
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="product_category_idLabel" runat="server" Text='<%# Eval("product_category_id") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [product_category_id] FROM [PRODUCT]">
</asp:SqlDataSource>
</asp:Content>


