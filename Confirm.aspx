<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="SimpleMailer.Confirm" %>

<asp:Content ID="ConfirmContent" ContentPlaceHolderID="MainContent" runat="server">
    <p><%= GetLocalResourceObject("ConfirmText") %></p>
</asp:Content>
