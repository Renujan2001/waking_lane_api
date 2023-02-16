using waking_lane_api.Helpers;
using waking_lane_api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waking_lane_api
{
    public partial class HelpAPI : System.Web.UI.Page
    {
        private Connection_Main connection_Main;
        protected void Page_Load(object sender, EventArgs e)
       {
            this.connection_Main = new Connection_Main();
            string s = this.connection_Main.ConvertToEncode("BeruwalaUC/1");
            //var OrderId = data["ReteurnOderInfo"]["OrderID"];
            string OrderId = "201113024";
            string total = "000000050600";
            string merchant = "1000000000390";
            string acq = "454486";
            string currency = "144";


            string abc = "s1r2W5B." + merchant + acq + OrderId + total + currency;
            string b = "s1r2W5B.1000000000390454486201112050000000000100144";
            string x = HashCode(abc);
        }

        public static string HashCode(string str)
        {
            string rethash = "";
            try
            {
                System.Security.Cryptography.SHA1 hash = System.Security.Cryptography.SHA1.Create();
                System.Text.ASCIIEncoding encoder = new System.Text.ASCIIEncoding();
                byte[] combined = encoder.GetBytes(str);

                hash.ComputeHash(combined);
                rethash = Convert.ToBase64String(hash.Hash);
            }
            catch (Exception ex)
            {
                string strerr = "Error in HashCode : " + ex.Message;
            }
            return rethash;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //SmtpClient client = new SmtpClient("relay-hosting.secureserver.net", 465); 
                int port = int.Parse(txtPort.Text);
                SmtpClient client = new SmtpClient(txtServwe.Text, port);
                client.EnableSsl = chSSL.Checked;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential(txtSendEmail.Text, txtPwd.Text);

                MailMessage message = new MailMessage(txtSendEmail.Text,txtTomail.Text);
                message.Subject = "test Subject - " + DateTime.Now.ToString();
                message.Body = "Test Body";
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.Send(message);
                Label1.Text = "Mail sent";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}