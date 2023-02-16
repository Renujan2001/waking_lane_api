using waking_lane_api.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waking_lane_api
{
    public partial class TestMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EmailInfo mailInfo = new EmailInfo();
            mailInfo.CouncilName = "yiyuiy";
            mailInfo.ToMail = "dolaninibm@gmail.com";
            if (mailInfo.CouncilName != "")
            {
                //this.SendEmail(mailInfo);
                string toAdd = mailInfo.ToMail;
                try
                {
                    var fromAddress = "nekfahrm@gmail.com";
                    // var fromAddress = "no-reply@nekfa.com";
                    const string fromPassword = "Nekfa@2020";
                    string subject = "" + mailInfo.CouncilName + "|Regarding the Garbage Disposal Request";
                    string body = "<html>" +
                                    "<head>" +
                                        "<meta http-equiv=Content-Type content=text/html; charset=utf-8 />" +
                                        "<title>" + "</title>" +
                                    "</head>" +
                                    "<body>" +
                                        "<div class='col-md-6'  style='border:solid 1px black;padding:15px;'>" +
                                            "<div class='text-center' ><h4><b>" + mailInfo.CouncilName + "</b></h4></div>" +
                                            "<div class='text-center' ><h5>Online Request</h4></div><hr/>" +


            "<br/>" +
            "<span style='color:red;font-size:10px;'>Please DO NOT REPLY to this mail.</span>" +
             "<span style='color:black;font-size:10px;'>as this automatically generated mail.For any clarification contact 0112-932275.</span>" +
        "</div>" +

                                    "</body>" +
                           "</html>";


                    MailMessage MyMailMessage = new MailMessage();
                    MyMailMessage.From = new MailAddress(fromAddress);
                    MyMailMessage.To.Add(new MailAddress("dolaninibm@gmail.com"));
                    MyMailMessage.Subject = "Notes";
                    MyMailMessage.IsBodyHtml = true;
                    MyMailMessage.Body = "Test";
                    SmtpClient SmtpServer = new SmtpClient();
                    SmtpServer.UseDefaultCredentials = false;
                    SmtpServer.Credentials = new System.Net.NetworkCredential(fromAddress, fromPassword);
                    SmtpServer.Host = "smtp.gmail.com";
                    SmtpServer.EnableSsl = true;
                    SmtpServer.Send(MyMailMessage);
                    MyMailMessage.Dispose();
                    Label1.Text = "successs";
                }
                catch (Exception ee)
                {
                  
                    Label1.Text = ee.Message.ToString();
                }

            }
        }
    }
}