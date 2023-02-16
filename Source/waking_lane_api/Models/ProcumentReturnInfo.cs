using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using waking_lane_api.Models;

namespace waking_lane_api.Models

{
    public class ProcumentReturnInfo
    {
        public ProcumentReturnInfo()
        {
            this.ReturnInfo = new ReturnMsgInfo();
        }
        public List<Tender> ListSector { get; set; }
        public ReturnMsgInfo ReturnInfo { get; set; }

    }
}