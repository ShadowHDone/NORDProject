using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NORDProject.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        static string nordp = "NORDP | ";

        public ActionResult Index()
        {
            ViewData["Message"] = "Все ленты новостей";
            ViewData["Title"] = nordp + "Все ленты новостей";

            return View();
        }

        public ActionResult About()
        {
            ViewData["Message"] = "Про NORD Project";
            ViewData["Title"] = nordp + "Про NORD Project";

            return View();
        }

        public ActionResult ViewPage1()
        {
            return View();
        }
    }
}
