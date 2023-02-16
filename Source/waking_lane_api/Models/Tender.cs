using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace waking_lane_api.Models
{
    public class Tender
    {
        public string TenderID { get; set; }
        public string SelectOption { get; set; }
        public string ProcurementName{ get; set; }
        public string CreateDate { get; set; }
        public string ClosingDate { get; set; }
        public string ApplicationFee { get; set; }
        public string TotalFee { get; set; }
        public string ReferenceDoc { get; set; }
        public string Advertistement { get; set; }
        public string PreQualification { get; set; }
        public string ApplicationReqDoc { get; set; }//Application Request Document
        public string sectorID { get; set; }
        public string CreatedUser { get; set; }
    }
}