using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using waking_lane_api.Models;
using waking_lane_api.Helpers;

namespace waking_lane_api.Controllers
{
    public class  GetProcumentController : ApiController
    {
       
        public ProcumentReturnInfo Post([FromBody]LocationInfo loginfo1)
        {
           TenderDBHelper db1 = new TenderDBHelper();
           return db1.GetProcumentList(loginfo1);

          
        }

      
    }
}
