using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using waking_lane_api.Models;
using MySql.Data.MySqlClient;
using System.Data;
using waking_lane_api.Models;

namespace waking_lane_api.Helpers
{
    public class TenderDBHelper
    {
        private Connection_Main connection_Main;
        private MySqlConnection con;


        public SectorReturnInfo GetSectoList(LocationInfo obj)
        {
            SectorReturnInfo rinfo = new SectorReturnInfo();
            List<SectoerDetails> list = new List<SectoerDetails>();
//1
            if (obj.ClientID == null || obj.ClientID == "")
            {
                rinfo.ReturnInfo.ReturnValue = "error";
                rinfo.ReturnInfo.ReturnMessage = "Client ID cannot be empty";
            }
            else
            {
                this.connection_Main = new Connection_Main();
                string conString = this.connection_Main.Get_Main_Connection(obj.ClientID);
                if (conString == null || conString == "")
                {
                    rinfo.ReturnInfo.ReturnValue = "Error";
                    rinfo.ReturnInfo.ReturnMessage = this.connection_Main.ErrorMessage;
                }
                else
                {

                    this.con = new MySqlConnection(conString);
                    if (this.con.State.ToString() != "Open")
                    {
                        this.con.Open();
                    }
                    else
                    {
                        rinfo.ReturnInfo.ReturnValue = "Error";
                        rinfo.ReturnInfo.ReturnMessage = "Connection  was already  opened.";
                    }
                    if (this.con != null)
                    {
                        //method body

                        string sql = "SELECT * FROM tbl_procurementservice_sector;";
                        MySqlDataAdapter da = new MySqlDataAdapter(sql, this.con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "btDT");
                        DataTable dt1 = ds.Tables["btDT"];
                        if (dt1.Rows.Count > 0)
                        {
                            rinfo.ReturnInfo.ReturnValue = "OK";
                            rinfo.ReturnInfo.ReturnMessage = "result found";
                            foreach (DataRow r in dt1.Rows)
                            {
                                SectoerDetails sec = new SectoerDetails();
                                sec.SectorID = r["Sector_Id"].ToString();
                                sec.SectorName = r["Sector_Name"].ToString();
                                list.Add(sec);
                            }

                        }
                        else
                        {
                            rinfo.ReturnInfo.ReturnValue = "error";
                            rinfo.ReturnInfo.ReturnMessage = "Invalid Reference ID";
                        }
                        //---------------
                    }
                }

            }

            rinfo.ListSector = list;
            return rinfo;
        }



        public ProcumentReturnInfo GetProcumentList(LocationInfo obj)
        {
            ProcumentReturnInfo rinfo = new ProcumentReturnInfo();
            List<Tender> list = new List<Tender>();
            //1
            if (obj.ClientID == null || obj.ClientID == "")
            {
                rinfo.ReturnInfo.ReturnValue = "error";
                rinfo.ReturnInfo.ReturnMessage = "Client ID cannot be empty";
            }
            else
            {
                this.connection_Main = new Connection_Main();
                string conString = this.connection_Main.Get_Main_Connection(obj.ClientID);
                if (conString == null || conString == "")
                {
                    rinfo.ReturnInfo.ReturnValue = "Error";
                    rinfo.ReturnInfo.ReturnMessage = this.connection_Main.ErrorMessage;
                }
                else
                {

                    this.con = new MySqlConnection(conString);
                    if (this.con.State.ToString() != "Open")
                    {
                        this.con.Open();
                    }
                    else
                    {
                        rinfo.ReturnInfo.ReturnValue = "Error";
                        rinfo.ReturnInfo.ReturnMessage = "Connection  was already  opened.";
                    }
                    if (this.con != null)
                    {
                        //method body

                        string sql = "SELECT Select_option,Procurement_Name,Closing_data_time,Tender_ID FROM tbl_procurementservice_tender WHERE (Closing_data_time >= NOW());";
                        MySqlDataAdapter da = new MySqlDataAdapter(sql, this.con);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "btDT");
                        DataTable dt1 = ds.Tables["btDT"];
                        if (dt1.Rows.Count > 0)
                        {
                            rinfo.ReturnInfo.ReturnValue = "OK";
                            rinfo.ReturnInfo.ReturnMessage = "result found";
                            foreach (DataRow r in dt1.Rows)
                            {
                                Tender sec = new Tender();
                                sec.ProcurementName = r["Procurement_Name"].ToString();
                                sec.ClosingDate = r["Closing_data_time"].ToString();
                                sec.SelectOption = r["Select_option"].ToString();
                                sec.TenderID = r["Tender_ID"].ToString();
                                list.Add(sec);
                            }

                        }
                        else
                        {
                            rinfo.ReturnInfo.ReturnValue = "error";
                            rinfo.ReturnInfo.ReturnMessage = "Invalid Reference ID";
                        }
                        //---------------
                    }
                }

            }

            rinfo.ListSector = list;
            return rinfo;
        }


       
    }
}