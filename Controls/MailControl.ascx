<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MailControl.ascx.cs" Inherits="SimpleMailer.Controls.MailControl" %>

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
    runat="server" 
    Visible="false" 
    Text="Not Valid"></asp:Label>
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
<asp:Button ID="SendButton" Text="Send" OnClick="SendButton_Click" runat="server" /> 