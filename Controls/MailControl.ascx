<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MailControl.ascx.cs" Inherits="SimpleMailer.Controls.MailControl" %>

<div class="form-group">
    <asp:Label
        Id="EmailLabel"
        AssociatedControlID="Email"
        meta:resourceKey="EmailLabel"
        runat="server"></asp:Label>
    
    <asp:TextBox 
        ID="Email"
        AutoPostBack="true"
        OnTextChanged="TextChanged"
        EnableViewState="false"
        Width="60%"
        runat="server"
        ></asp:TextBox>
    
    <asp:Label 
        ID="ErrorLabel" 
        CssClass="error-text"    
        Visible="False" 
        meta:resourceKey="ErrorLabel"
        runat="server" Font-Size="12px" ForeColor="Red"></asp:Label>
</div>
<div class="form-group">
    <asp:Label
        Id="MessageLabel"
        AssociatedControlID="MailText"
        meta:resourceKey="MessageLabel"
        runat="server"></asp:Label>

    <asp:TextBox 
        ID="MailText" 
        TextMode="MultiLine" 
        Rows="10"
        Width="100%"
        CssClass="text-area"
        AutoPostBack="true"
        OnTextChanged="TextChanged"
        EnableViewState="false"
        runat="server"></asp:TextBox>
</div>
<asp:Button 
    ID="SendButton" 
    meta:resourceKey="SendButton"
    OnClick="SendButton_Click" 
    runat="server" /> 