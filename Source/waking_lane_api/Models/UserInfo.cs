using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace waking_lane_api.Models
{
    public class UserInfo
    {
        public int id { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string tel { get; set; }
        public string locationID { get; set; }
        public string type { get; set; }
    }
}