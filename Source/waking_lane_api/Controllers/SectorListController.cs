using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using waking_lane_api.Helpers;
using waking_lane_api.Models;


namespace waking_lane_api.Controllers
{
    public class SectorListController : ApiController
    {
        
        // POST api/sector
        public SectorReturnInfo Post([FromBody] LocationInfo loginfo)
        {
            TenderDBHelper db = new TenderDBHelper();
            return db.GetSectoList(loginfo);
 
        }

       
    }
}
