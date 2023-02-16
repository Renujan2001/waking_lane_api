using waking_lane_api.Models;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace waking_lane_api.Helpers
{
    public class Connection_Main
    {   
        public  string ErrorMessage { set; get; }
        public string Get_Connection(string locationID)
        {
            String conString = "";
            if (locationID == null)
            {
                ErrorMessage = "Loction Identifiction Number(LIN) cannot be null";
            }
            else
            {
                if (locationID == "")
                {
                    ErrorMessage = "Loction Identifiction Number(LIN) cannot be empty";
                }
                else
                {
                    ConnectionStringSettingsCollection connections = ConfigurationManager.ConnectionStrings;
                    if (connections.Count != 0)
                    {
                        foreach (ConnectionStringSettings c in ConfigurationManager.ConnectionStrings)
                        {
                            string conName = c.Name.ToString();
                            if (conName == locationID)
                            {
                                conString = c.ConnectionString;
                                //DatabaseDetailsInfo dbInfo = this.GetConnectionInfoForLocationID(locationID);
                                //ConnectionInfo.DBInfo = dbInfo;
                                //ConnectionInfo.BankAPIInfo = dbInfo.BankAPIInfo;
                                ErrorMessage = "Success";
                            }
                        }
                    }
                    else
                    {
                        ErrorMessage = "Cannot found any connection string details. Please update the web.config";
                    }
                }
            }
            return conString;
        }
        public string Get_Main_Connection(string locationID)
        {           
            String conString = "";
            if (locationID == null)
            {
                ErrorMessage = "Loction Identifiction Number(LIN) cannot be null";
            }
            else
            {
                if (locationID == "")
                {
                    ErrorMessage = "Loction Identifiction Number(LIN) cannot be empty";
                }
                else
                {
                    ConnectionStringSettingsCollection connections = ConfigurationManager.ConnectionStrings;
                    if (connections.Count != 0)
                    {
                        foreach (ConnectionStringSettings c in ConfigurationManager.ConnectionStrings)
                        {
                            string conName = c.Name.ToString();
                            if (conName == locationID)
                            {
                                conString = c.ConnectionString;
                                DatabaseDetailsInfo dbInfo = this.GetConnectionInfoForLocationID(locationID);
                                ConnectionInfo.DBInfo = dbInfo;
                                ConnectionInfo.BankAPIInfo = dbInfo.BankAPIInfo;
                                ErrorMessage = "Success";
                            }

                        }
                        if (conString == "" || conString == "")
                        {
                            ErrorMessage = "Cannot found any connection string details. Please update the web.config";
                        }
                    }
                    else
                    {
                        ErrorMessage = "Cannot found any connection string details. Please update the web.config";
                    }
                }
            }

            return conString;
        }

        private string GetMainLocationID(string locationID)
        {
            string locID = "";
            DataTable dt1 = null;
            MySqlConnection con = null;
            MySqlTransaction trans;
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["DB_Details"].ConnectionString;
                if (conString != null || conString != "")
                {
                    con = new MySqlConnection(conString);
                    if (con.State.ToString() != "Open")
                    {
                        con.Open();
                    }
                    else
                    {
                        trans = con.BeginTransaction();
                        this.ErrorMessage = "Connection  was already  opened.";
                    }
                    if (con != null)
                    {
                        string sqlUser = "SELECT * from all_keys where branch_key='" + locationID + "';";
                        MySqlDataAdapter da = new MySqlDataAdapter(sqlUser, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "DT");
                        dt1 = ds.Tables["DT"];
                    }
                }
            }
            catch (MySqlException myEx)
            {
                this.ErrorMessage = myEx.Message;

            }
            catch (Exception ee)
            {

                this.ErrorMessage = ee.Message;
            }
            finally
            {
                if (con != null)
                {
                    if (con.State.ToString() == "Open")
                    {
                        con.Close();
                    }
                }
            }
            if (dt1.Rows.Count > 0)
            {
                foreach (DataRow r in dt1.Rows)
                {
                   locID = r["council_key"].ToString();
                }
            }
            else
            {
                this.ErrorMessage = "Invalid Location ID";
            }
            return locID;
        }
        public string ConvertToEncode(string sInput)
        {
            return Convert.ToBase64String(Encoding.UTF8.GetBytes(sInput));
        }
        public string ConvertToDecode(string sInput)
        {
            string decodedLocId = "";
            if (sInput != "")
            {              
                try
                {
                    decodedLocId = Encoding.UTF8.GetString(Convert.FromBase64String(sInput));
                }
                catch (Exception e)
                {
                    ErrorMessage = "Invalid LocationID";
                }
            }
            else
            {
                ErrorMessage = "LocationID Cannot be a empty";
            }
            return decodedLocId;
        }

        private DatabaseDetailsInfo GetConnectionInfoForLocationID(string LocationID)
        {
            DatabaseDetailsInfo dbInfo = new DatabaseDetailsInfo();
            dbInfo = new DatabaseDetailsInfo();
            BankAPIInfo bankAPIInfo = new BankAPIInfo();
            DataTable dt1 = null;
            MySqlConnection con = null;
            MySqlTransaction trans;
            try
            {
                string conString =  ConfigurationManager.ConnectionStrings["DB_Details"].ConnectionString;
                if (conString != null || conString != "")
                {
                    con = new MySqlConnection(conString);
                    if (con.State.ToString() != "Open")
                    {
                        con.Open();
                    }
                    else
                    {
                        trans = con.BeginTransaction();
                        this.ErrorMessage = "Connection  was already  opened.";
                    }
                    if (con != null)
                    {
                        string sqlUser = "SELECT * from all_keys where branch_key='" + LocationID + "';";
                        MySqlDataAdapter da = new MySqlDataAdapter(sqlUser, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "DT");
                        dt1 = ds.Tables["DT"];                       
                    }
                }
            }
            catch (MySqlException myEx)
            {
                this.ErrorMessage =  myEx.Message;

            }
            catch (Exception ee)
            {
                
               this.ErrorMessage = ee.Message;
            }
            finally
            {
                if (con != null)
                {
                    if (con.State.ToString() == "Open")
                    {
                        con.Close();
                    }
                }
            }
            if (dt1.Rows.Count > 0)
            {               
                foreach (DataRow r in dt1.Rows)
                {
                    dbInfo.BranchName = r["branch_name"].ToString();
                    dbInfo.CouncilName = r["council_name"].ToString();
                    dbInfo.EncriptedLocationID = r["branch_key"].ToString();
                    dbInfo.DecriptedLocationID = this.ConvertToDecode(LocationID);
                    dbInfo.LocationID = LocationID;           
                    bankAPIInfo = new BankAPIInfo();
                    bankAPIInfo.MerID = r["MerID"].ToString();
                    bankAPIInfo.AcqID = r["AcqID"].ToString();
                    bankAPIInfo.Password = r["BankPassword"].ToString();
                    bankAPIInfo.Version = System.Web.Configuration.WebConfigurationManager.AppSettings["Version"];
                    bankAPIInfo.PurchaseCurrency = System.Web.Configuration.WebConfigurationManager.AppSettings["PurchaseCurrency"];
                    bankAPIInfo.PurchaseCurrencyExponent = System.Web.Configuration.WebConfigurationManager.AppSettings["PurchaseCurrencyExponent"];
                    bankAPIInfo.SignatureMethod = System.Web.Configuration.WebConfigurationManager.AppSettings["SignatureMethod"];
                    string conPercentage = r["ConvenienceFeePercentage"].ToString();
                    string viewPercentage = r["ViewPercentage"].ToString();
                    dbInfo.ConvenienceFeePercentage = decimal.Parse(conPercentage);
                    dbInfo.ViewPercentage = decimal.Parse(viewPercentage);
                    dbInfo.Post_fee = decimal.Parse(r["Post_fee"].ToString());
                    dbInfo.ClientMask = r["ClientMask"].ToString();
                    dbInfo.URL = r["URL"].ToString();
                    dbInfo.FromEmail = r["FromEmail"].ToString();
                    dbInfo.EmailContactNo = r["EmailContactNo"].ToString();
                }
            }
            else
            {
                this.ErrorMessage = "Invalid Location ID";
            }


            dbInfo.BankAPIInfo = bankAPIInfo;
            return dbInfo;

        }

     
    }
}