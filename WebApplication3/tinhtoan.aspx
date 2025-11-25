<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="tinhtoan.aspx.cs" Inherits="WebApplication3.tinhtoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Tinh toan
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <h2>Tinh binh phuong</h2>
    <asp:TextBox ID="number" runat="server" />
    <asp:Button ID="b1" Text="Tinh binh phuong" runat="server" PostBackUrl="~/tinhbp.aspx"/>
</asp:Content>
