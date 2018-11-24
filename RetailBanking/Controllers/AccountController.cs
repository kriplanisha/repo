using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RetailBanking.Models;
using System.Data.Entity.Core.Objects;

namespace RetailBanking.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Insert()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Insert(account_creation ain)
        {
            DB06TMS127_1718Entities db = new DB06TMS127_1718Entities();
            var a = db.account_creation.Where(s => s.customerid == ain.customerid && s.accounttype1==ain.accounttype1 ).FirstOrDefault();
            if (a != null)
            {
                ViewBag.warning = "You already have an account of same type!!";
                return View();
            }
            else
            {
                ObjectParameter ob = new ObjectParameter("accountid", typeof(Int32));
                db.account_insertion(ain.customerid, ain.accounttype1, ob);
                return RedirectToAction("Display");

            }
        }
        public ActionResult Display()
        {
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities();
            var a = ob.viewingaccount().ToList();
            return View(a);
        }

        public ActionResult Delete(int id)
        { 
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities();
            int accounts=(ob.account_creation.Where(s => s.accountid == id && s.amount>0)).Count();
            if(accounts==0)
                ob.deleting_account(id);
            else
            {
                ViewBag.warning = "You already have an account of same type!!";
     
            }
            return RedirectToAction("Display");
        }
    }
}