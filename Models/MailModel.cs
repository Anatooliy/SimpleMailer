using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SimpleMailer.Models
{
    [Serializable]
    public class MailModel
    {
        public string Email { get; set; }
        public string MailText { get; set; }

        public MailModel(string email, string text)
        {
            Email = email;
            MailText = text;
        }
    }
}