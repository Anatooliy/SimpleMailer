using SimpleMailer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleMailer.Controls
{
    public partial class MailControl : System.Web.UI.UserControl
    {
        public MailModel MailState 
        {
            get 
            {                
                return Session["mail_state"] as MailModel;
            }
            set 
            {
                Session["mail_state"] = value;
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
            if(!Page.IsValid)
            {
                ErrorLabel.Visible = true;
            }    
            else
            {
                MailState = null;
                ErrorLabel.Visible = false;
            }
        }
    }
}