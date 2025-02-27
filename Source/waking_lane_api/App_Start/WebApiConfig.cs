﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using WebApiContrib.Formatting.Jsonp;
namespace waking_lane_api
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
             //Web API configuration and services
            config.EnableCors();

            //test
             //Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                //routeTemplate: "abc/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
        //public static void Register(HttpConfiguration config)
        //{
        //    // New code
        //    config.EnableCors();

        //    config.Routes.MapHttpRoute(
        //        name: "DefaultApi",
        //        routeTemplate: "api/{controller}/{id}",
        //        defaults: new { id = RouteParameter.Optional }
        //    );
        //    //var jsonpFormatter = new JsonpMediaTypeFormatter(config.Formatters.JsonFormatter);
        //    //config.Formatters.Insert(0, jsonpFormatter);
        //}

        //public static void Register(HttpConfiguration config)
        //{
        //    config.Routes.MapHttpRoute(
        //        name: "DefaultApi",
        //        routeTemplate: "api/{controller}/{action}/{id}",
        //        defaults: new { id = RouteParameter.Optional }
        //    );
        //}  
    }
}
