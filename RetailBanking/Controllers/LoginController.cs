using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RetailBanking.Models;

namespace RetailBanking.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult insert()
        {
            return View();
        }

        [HttpPost]
        public ActionResult insert(login_bankexe l)
        {
            DB06TMS127_1718Entities2 ob = new DB06TMS127_1718Entities2();
            string vr = ob.xsplogin13(l.username).First().pwd;
            string tr = ob.xsplogin13(l.username).First().type;
            if (vr == l.pwd && tr == "CAE")
            {
                return RedirectToAction("display", "Banking6");
            }
            else if (vr == l.pwd && tr == "CAS")
            {
                return RedirectToAction("index", "Banking6");
            }

            else
            {
                return View();
            }
        }
    }
}