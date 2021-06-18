<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Drink.aspx.cs" Inherits="WebDev.Mangement.Drink" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPBody" runat="server">
    <div class="row justify-content-center">
        <div class="col-8">
            <h2 class="text-center">Selected Drink</h2>
            <fieldset>

                <asp:FormView ID="FVDrinkItem" RenderOuterTable="false"
                    ItemType="WebDev.Models.Drink" DataKeyNames="drinkId" SelectMethod="FVDrinkItem_GetItem"
                    UpdateMethod="FVDrinkItem_UpdateItem" InsertMethod="FVDrinkItem_InsertItem" DeleteMethod="FVDrinkItem_DeleteItem" runat="server">
                    <ItemTemplate>
                        <legend>Item #:<%# Item.drinkId.ToString("D4") %></legend>
                        <div class="form-group">
                            <label>Item:</label><%# Item.name %>
                        </div>
                        <div class="form-group">
                            <label>Description:</label><%# Item.description %>
                        </div>
                        
                        <div class="form-group">
                            <label>Image:</label><img src="<%# Item.image %>" alt="<%# Item.name %>" />
                        </div>
                        
                        <div class="form-group">
                            <asp:Button runat="server" CommandName="Delete" CssClass="btn btn-danger" Text="Delete" />
                            <asp:Button runat="server" CommandName="Edit" CssClass="btn btn-primary" Text="Edit" />
                            <a href="AllDrinks.aspx" class="btn btn-secondary">Back To Drinks</a>
                        </div>

                    </ItemTemplate>
                    <InsertItemTemplate></InsertItemTemplate>
                    <EditItemTemplate></EditItemTemplate>
                    <EmptyDataTemplate></EmptyDataTemplate>
                </asp:FormView>

            </fieldset>
        </div>
    </div>
</asp:Content>
