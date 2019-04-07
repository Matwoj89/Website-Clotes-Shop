<%@ Page Title="" Language="C#" MasterPageFile="~/Strona.Master" AutoEventWireup="true" CodeBehind="Logowanie.aspx.cs" Inherits="Strona.Logowanie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" >
    </asp:Login>
</asp:Content>
