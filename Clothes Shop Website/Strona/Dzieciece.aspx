<%@ Page Title="" Language="C#" MasterPageFile="~/Strona.Master" AutoEventWireup="true" CodeBehind="Dzieciece.aspx.cs" Inherits="Strona.Dzieciece" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" BorderColor="Black" OnItemCommand="DataList1_ItemCommand" BorderWidth="2px" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="5" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Button ID="Dodaj" CommandName="Dodaj" runat="server" Text="KUP" />
            <br />
            <br />
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Nazwa:
            <asp:Label ID="NazwaLabel" runat="server" Text='<%# Eval("Nazwa") %>' />
            <br />
            Kolor:
            <asp:Label ID="KolorLabel" runat="server" Text='<%# Eval("Kolor") %>' />
            <br />
            Rozmiar:
            <asp:Label ID="RozmiarLabel" runat="server" Text='<%# Eval("Rozmiar") %>' />
            <br />
            Zdjecie:
            <asp:Label ID="ZdjecieLabel" runat="server" Text='<%# Eval("Zdjecie") %>' />
            <br />
            Kategoria:
            <asp:Label ID="KategoriaLabel" runat="server" Text='<%# Eval("Kategoria") %>' />
            <br />
            Cena:
            <asp:Label ID="CenaLabel" runat="server" Text='<%# Eval("Cena") %>' />
<br />
            <img src="Obrazki/Ubrania/Dzieciece/<%# Eval("Zdjecie", "{0}") %>" width="300" height="300" style="text-align: center; float: none"/>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Id], [Nazwa], [Kolor], [Rozmiar], [Zdjecie], [Kategoria], [Cena] FROM [Towary] WHERE ([Kategoria] = @Kategoria)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Dzieciece" Name="Kategoria" QueryStringField="Dzieciece" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
