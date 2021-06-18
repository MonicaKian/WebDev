﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllDrinks.aspx.cs" Inherits="WebDev.Mangement.AllDrinks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPBody" runat="server">
    <h3 > Drinks List<asp:GridView ID="GVDrinks" runat="server" AutoGenerateColumns="False" ItemType="WebDev.Models.Drink">
        <Columns>
            <asp:TemplateField HeaderText="DrinkId">
                <ItemTemplate>
                    <a href="AllDrinks.aspx?ID=<%# Item.drinkId %>" target="_blank">
                        <%# Item.drinkId.ToString() %>
                    </a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Drink Name">
               <ItemTemplate>
                    <a href="AllDrinks.aspx?ID=<%# Item.name %>">
                        <%# Item.name.ToString() %>
                    </a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <%# Item.description.Length > 100
                        ? Item.description.Substring(0,100)+ "..."
                        : Item.description %>    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <%# Item.image %>    
                </ItemTemplate>

            </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </h3>


</asp:Content>
