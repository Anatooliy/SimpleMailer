<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimpleMailer.Default" %>

<asp:Content ID="DefaultContent" ContentPlaceHolderID="MainContent" runat="server">    
    <uc:MailControl runat="server" ID="MailControl"></uc:MailControl>
</asp:Content>
