using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace waking_lane_api.Models
{
    public class SectorReturnInfo
    {

        public SectorReturnInfo()
        {
            this.ReturnInfo = new ReturnMsgInfo();
        }
        public List<SectoerDetails> ListSector { get; set; }
        public ReturnMsgInfo ReturnInfo { get; set; }
    }
}