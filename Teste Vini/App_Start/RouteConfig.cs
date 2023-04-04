using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Teste_Vini
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapRoute(
               name: "inserir",
               url: "inserir",
               defaults: new { controller = "Home", action = "InserirEditar" }
           );

            routes.MapRoute(
               name: "editar",
               url: "editar/{id}",
               defaults: new { controller = "Home", action = "InserirEditar", id = UrlParameter.Optional }
           );


            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
