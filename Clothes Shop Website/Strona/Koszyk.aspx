<%@ Page Title="" Language="C#" MasterPageFile="~/Strona.Master" AutoEventWireup="true" CodeBehind="Koszyk.aspx.cs" Inherits="Strona.Koszyk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="gvShoppingCart" AutoGenerateColumns="False" EmptyDataText="Koszyk jest pusty" GridLines="Vertical" Width="100%" CellPadding="3" ShowFooter="True" DataKeyNames="ProductId" OnRowDataBound="gvShoppingCart_RowDataBound" OnRowCommand="gvShoppingCart_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black">
                <HeaderStyle HorizontalAlign="Left" BackColor="Black" ForeColor="#FFFFFF" Font-Bold="True" />
                <FooterStyle HorizontalAlign="Right" BackColor="#CCCCCC" />
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
 
                    <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" >
                    <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    <ItemStyle VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Ilość">
                        <ItemTemplate>
                            <asp:TextBox runat="server" ID="txtQuantity" Columns="5" Text='<%# Eval("Quantity") %>'></asp:TextBox><br />
                            <asp:LinkButton runat="server" ID="btnRemove" Text="Usuń" CommandName="Remove" CommandArgument='<%# Eval("ProductId") %>' style="font-size:12px;"></asp:LinkButton>
 
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="UnitPrice" HeaderText="Cena" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" >
<HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle"></HeaderStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="TotalPrice" HeaderText="Suma" ItemStyle-HorizontalAlign="Right" HeaderStyle-HorizontalAlign="Right" DataFormatString="{0:C}" >
<HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle"></HeaderStyle>

<ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                </Columns>
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
    <asp:Button ID="btnUpdateCart" runat="server" Text="Oblicz" OnClick="btnUpdateCart_Click"/>
</asp:Content>
