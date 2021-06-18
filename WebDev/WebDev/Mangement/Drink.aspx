<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Drink.aspx.cs" Inherits="WebDev.Mangement.Drink" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPBody" runat="server">
    <div class="row justify-content-center">
        <div class="col-8">
            <h2 class="text-center">Selected Drink</h2>
            <fieldset>
                
                <asp:FormView ID="FVDrinkItem" RenderOuterTable="false"
                    ItemType="WebDev.Models.Drink" DataKeyNames="drinkId" SelectMethod="FVDrinkItem_GetItem">
                    <ItemTemplate>

                    </ItemTemplate>
                    <InsertItemTemplate></InsertItemTemplate>
                    <EditItemTemplate></EditItemTemplate>
                    <EmptyDataTemplate></EmptyDataTemplate>
                </asp:FormView>
                
            </fieldset>
        </div>
    </div>
</asp:Content>
