using SimpleMailer.Models;
using System;
using System.Text.RegularExpressions;

namespace SimpleMailer.Controls
{
    public partial class MailControl : System.Web.UI.UserControl
    {
        public string ConfirmLink { get; set; } = "~/Confirm.aspx";
        private const string mailStateKey = "mail_state";
        private MailModel MailState 
        {
            get 
            {                
                return Session[mailStateKey] as MailModel;
            }
            set 
            {
                Session[mailStateKey] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack && MailState != null)
            {
                Email.Text = MailState.Email;
                MailText.Text = MailState.MailText;
            }            
        }

        protected void TextChanged(object sender, EventArgs e)
        {
            MailState = new MailModel(Email.Text, MailText.Text);
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            string emailPattern = @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*";

            if(string.IsNullOrEmpty(Email.Text) || !Regex.IsMatch(Email.Text, emailPattern))
            {
                ErrorLabel.Visible = true;
            } 
            else
            {
                MailState = null;
                Response.Redirect(ConfirmLink);
            }
        }
    }
}