using RetailBanking.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RetailBanking.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult index()
        {
            StateCityModel stateCityModel = new StateCityModel();
            return View(stateCityModel);
        }
        public JsonResult Cities(string stateName)
        {
            var cityList = StateCityModel.Citys(stateName);
            return Json(cityList, JsonRequestBehavior.AllowGet);
        }
    }
}