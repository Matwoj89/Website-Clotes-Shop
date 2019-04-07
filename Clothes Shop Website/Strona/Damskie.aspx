<%@ Page Title="" Language="C#" MasterPageFile="~/Strona.Master" AutoEventWireup="true" CodeBehind="Damskie.aspx.cs" Inherits="Strona.Damskie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" BorderColor="Black" BorderWidth="2px" CellPadding="4" CellSpacing="2" ForeColor="#333333" GridLines="Both" RepeatDirection="Horizontal">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
    <ItemTemplate>
        <asp:Button ID="Dodaj" CommandName="Dodaj" runat="server" Text="KUP" OnClick="Dodaj_Click" />
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
        <img src="Obrazki/Ubrania/Damskie/<%# Eval("Zdjecie", "{0}") %>" width="300" height="300" style="text-align: center; float: none"/>
        <br />
    </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Id], [Nazwa], [Kolor], [Rozmiar], [Zdjecie], [Kategoria], [Cena] FROM [Towary] WHERE ([Kategoria] = @Kategoria)">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="Damskie" Name="Kategoria" QueryStringField="Damskie" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>


   
</asp:Content>
