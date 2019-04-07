<%@ Page Title="" Language="C#" MasterPageFile="~/Strona.Master" AutoEventWireup="true" CodeBehind="Meskie.aspx.cs" Inherits="Strona.Meskie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" BorderColor="Black" BorderWidth="2px" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Both" RepeatDirection="Horizontal" Height="160px">
        <ItemTemplate>
            <asp:Button ID="Dodaj" runat="server" Height="32px" OnClick="Button1_Click" Text="KUP " CommandName="Dodaj" Width="76px" />
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
             <img src="Obrazki/Ubrania/Meskie/<%# Eval("Zdjecie", "{0}") %>" width="300" height="300" style="text-align: center; float: none"/>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Id], [Nazwa], [Kolor], [Rozmiar], [Zdjecie], [Kategoria], [Cena] FROM [Towary] WHERE ([Kategoria] = @Kategoria)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Meskie" Name="Kategoria" QueryStringField="Meskie" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
