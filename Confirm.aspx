<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="SimpleMailer.Confirm" %>

<asp:Content ID="ConfirmContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink
        ID="BackLink"
        NavigateUrl="~/"
        meta:resourceKey="BackLink"
        runat="server"></asp:HyperLink>
    <div class="confirm-text"><%= GetLocalResourceObject("ConfirmText") %></div>
</asp:Content>
