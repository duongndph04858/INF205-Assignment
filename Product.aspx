<%@ Page Title="Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <link type="text/css" rel="stylesheet" href="Content/css/product.css">
    <hgroup class="title">
    </hgroup>
    <div class="content">
        <div id="laptop">
            <h1>Laptop</h1>
            <hr />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server">
                        <div class="sp">
                            <div class="imgsp">
                                <asp:Image ID="imgLabel" runat="server" ImageUrl='<%# Eval("img") %>' />
                            </div>
                            <div class="description">
                                <asp:Label ID="nameLabel" CssClass="tensp" runat="server" Text='<%# Eval("name") %>' />
                                <br />
                                <asp:Label ID="priceLabel" CssClass="gia" runat="server" Text='<%# Eval("price") %>' />
                                <asp:Label CssClass="gia" ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                                <br />
                                Mô tả:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <div class="btn">
                                    <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </div>
                            </div>
                        </div>
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="">
                        <div class="editsp">
                            id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            product_category_id:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="product_category_idTextBox" runat="server" Text='<%# Bind("product_category_id") %>' />
                            <br />
                            sku:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="skuTextBox" runat="server" Text='<%# Bind("sku") %>' />
                            <br />
                            name:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            price:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            <br />
                            description:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                            <br />
                            img:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                            <br />
                            <div style="text-align: center">
                                <asp:Button CssClass="button2" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button CssClass="button2" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </div>
                            <br />
                        </div>
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <div class="sp">
                            <div class="imgsp">
                                <asp:Image ID="imgLabel" runat="server" ImageUrl='<%# Eval("img") %>' />
                            </div>
                            <div class="description">
                                <asp:Label CssClass="tensp" ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                <br />
                                <asp:Label ID="priceLabel" CssClass="gia" runat="server" Text='<%# Eval("price") %>' />
                                <asp:Label CssClass="gia" ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                                <br />
                                Mô tả:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <div class="btn">
                                    <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                    <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </div>
                            </div>
                        </div>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <div>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 100%; text-align: center">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="">id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        product_category_id:
                    <asp:Label ID="product_category_idLabel" runat="server" Text='<%# Eval("product_category_id") %>' />
                        <br />
                        sku:
                    <asp:Label ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                        <br />
                        name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        <br />
                        img:
                    <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Nhom3_QuanLyBanHang.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [PRODUCT] WHERE [id] = @id" InsertCommand="INSERT INTO [PRODUCT] ([product_category_id], [sku], [name], [price], [description], [img]) VALUES (@product_category_id, @sku, @name, @price, @description, @img)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [product_category_id], [sku], [name], [price], [description], [img] FROM [PRODUCT] WHERE ([product_category_id] = @product_category_id)" UpdateCommand="UPDATE [PRODUCT] SET [product_category_id] = @product_category_id, [sku] = @sku, [name] = @name, [price] = @price, [description] = @description, [img] = @img WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="product_category_id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product_category_id" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div id="smartphone">
            <h1>Điện thoại</h1>
            <hr />
            <asp:ListView ID="ListView2" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource2" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td id="Td1" runat="server">
                        <div class="sp">
                            <div class="imgsp">
                                <asp:Image ID="imgLabel" runat="server" ImageUrl='<%# Eval("img") %>' />
                            </div>
                            <div class="description">
                                <asp:Label ID="nameLabel" CssClass="tensp" runat="server" Text='<%# Eval("name") %>' />
                                <br />
                                <asp:Label ID="priceLabel" CssClass="gia" runat="server" Text='<%# Eval("price") %>' />
                                <asp:Label CssClass="gia" ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                                <br />
                                Mô tả:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <div class="btn">
                                <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </div>
                            </div>
                        </div>
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td id="Td2" runat="server" style="">
                        <div class="editsp">
                            id:
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            product_category_id:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="product_category_idTextBox" runat="server" Text='<%# Bind("product_category_id") %>' />
                            <br />
                            sku:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="skuTextBox" runat="server" Text='<%# Bind("sku") %>' />
                            <br />
                            name:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            price:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            <br />
                            description:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                            <br />
                            img:
                        <br />
                            <asp:TextBox CssClass="textfield" ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                            <br />
                            <div style="text-align: center">
                                <asp:Button CssClass="button2" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button CssClass="button2" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </div>
                            <br />
                        </div>
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table id="Table1" runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td id="Td3" runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td id="Td4" runat="server">
                        <div class="sp">
                            <div class="imgsp">
                                <asp:Image ID="imgLabel" runat="server" ImageUrl='<%# Eval("img") %>' />
                            </div>
                            <div class="description">
                                <asp:Label CssClass="tensp" ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                <br />
                                <asp:Label ID="priceLabel" CssClass="gia" runat="server" Text='<%# Eval("price") %>' />
                                <asp:Label CssClass="gia" ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                                <br />
                                Mô tả:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <div class="btn">
                                <asp:Button CssClass="button" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button CssClass="button" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                </div>
                            </div>
                        </div>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <div>
                        <table id="Table2" runat="server">
                            <tr id="Tr2" runat="server">
                                <td id="Td5" runat="server">
                                    <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="groupPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td id="Td6" runat="server" style=""></td>
                            </tr>
                        </table>
                    </div>
                    <div style="width: 100%; text-align: center">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonCssClass="pager" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td id="Td7" runat="server" style="">id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        <br />
                        product_category_id:
                    <asp:Label ID="product_category_idLabel" runat="server" Text='<%# Eval("product_category_id") %>' />
                        <br />
                        sku:
                    <asp:Label ID="skuLabel" runat="server" Text='<%# Eval("sku") %>' />
                        <br />
                        name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        description:
                    <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        <br />
                        img:
                    <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PRODUCT] WHERE [id] = @id" InsertCommand="INSERT INTO [PRODUCT] ([product_category_id], [sku], [name], [price], [description], [img]) VALUES (@product_category_id, @sku, @name, @price, @description, @img)" SelectCommand="SELECT [id], [product_category_id], [sku], [name], [price], [description], [img] FROM [PRODUCT] WHERE ([product_category_id] = @product_category_id)" UpdateCommand="UPDATE [PRODUCT] SET [product_category_id] = @product_category_id, [sku] = @sku, [name] = @name, [price] = @price, [description] = @description, [img] = @img WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="product_category_id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="product_category_id" Type="Int32" />
                    <asp:Parameter Name="sku" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
