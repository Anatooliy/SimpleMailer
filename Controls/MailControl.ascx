<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MailControl.ascx.cs" Inherits="SimpleMailer.Controls.MailControl" %>

<asp:TextBox 
    ID="Email"
    AutoPostBack="true"
    OnTextChanged="TextChanged"
    EnableViewState="false"
    runat="server"
    ></asp:TextBox>
<asp:Label ID="ErrorLabel" CssClass="error-text" runat="server" Visible="false" Text="Not Valid"></asp:Label>
<asp:RegularExpressionValidator    
    ControlToValidate="Email"
    EnableClientScript="false"
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
    Display="None"
    runat="server"></asp:RegularExpressionValidator>
<asp:RequiredFieldValidator    
    ControlToValidate="Email" 
    EnableClientScript="False"
    Display="None"
    runat="server"></asp:RequiredFieldValidator>
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