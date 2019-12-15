<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MailControl.ascx.cs" Inherits="SimpleMailer.Controls.MailControl" %>

<asp:Label
    Id="EmailLabel"
    AssociatedControlID="Email"
    meta:resourceKey="EmailLabel"
    runat="server"></asp:Label>
<br />
<asp:TextBox 
    ID="Email"
    AutoPostBack="true"
    OnTextChanged="TextChanged"
    EnableViewState="false"
    runat="server"
    ></asp:TextBox>
<br />
<asp:Label 
    ID="ErrorLabel" 
    CssClass="error-text"    
    Visible="false" 
    meta:resourceKey="ErrorLabel"
    runat="server"></asp:Label>
<br />
<asp:Label
    Id="MessageLabel"
    AssociatedControlID="MailText"
    meta:resourceKey="MessageLabel"
    runat="server"></asp:Label>
<br />
<asp:TextBox 
    ID="MailText" 
    TextMode="MultiLine" 
    Rows="10" 
    AutoPostBack="true"
    OnTextChanged="TextChanged"
    EnableViewState="false"
    runat="server"></asp:TextBox>
<br />
<asp:Button 
    ID="SendButton" 
    meta:resourceKey="SendButton"
    OnClick="SendButton_Click" 
    runat="server" /> 