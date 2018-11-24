using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RetailBanking.Models;
using System.Data.Entity.Core.Objects;

namespace RetailBanking.Controllers
{
    public class Banking6Controller : Controller
    {
        // GET: Banking6
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult insert()
        {
            StateCityEntities db = new StateCityEntities();
            var states = db.States.ToList();
            ViewBag.States = new SelectList(states, "StateDesc", "StateDesc");
            return View();
        }

        [HttpPost]
        public ActionResult insert(customer_account_creation cin)
        {
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities ();
            var search = ob.customer_account_creation.Where(s => s.customerssnid == cin.customerssnid).FirstOrDefault();
            if (search == null)
            {
                ObjectParameter out1 = new ObjectParameter("customerid", typeof(Int32));
                ob.customer_creation(cin.customerssnid, cin.customername, cin.customerage, cin.addressline1, cin.addressline2, cin.city, cin.cstate, out1);
                return RedirectToAction("display");
            }
            else
            {
                ViewBag.warning = "Customer Already Exists";
                return View();
            }
        }

        public ActionResult display()
        {
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities();

            var a = ob.customerview().ToList();
            return View(a);
        }

        public ActionResult Edit(int id)
        {
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities();
            var found = ob.customer_account_creation.Where(c => c.customerid == id).FirstOrDefault();
            
            return View(found);
        }

        [HttpPost]
        public ActionResult Edit(customer_account_creation found)
        {
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities();
            ob.update_customer(found.customerid, found.customername, found.addressline1, found.addressline2, found.city, found.city);
            return RedirectToAction("display");
        }
        public ActionResult Delete(int id)
        {
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities();
            var a = ob.delete_customer(id);

            return RedirectToAction("display");
        }

        public ActionResult Allocate(int id)
        {
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities();
            ob.readd_customer(id);
            return RedirectToAction("display");
        }

        public ActionResult search()
        {
            return View();
        }

        [HttpPost]
        public ActionResult search(FormCollection form)
        {
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities();
            int id = Convert.ToInt32(Request["SearchType"]);
            int s = Convert.ToInt32(Request["q"]);
            switch (id)
            {
                case 0:
                    var obj = ob.xsearch_custproc(s).ToList();
                    return View(obj.ToList());

                case 1:
                    var obj1 = ob.xsearch_ssnid(s);
                    return View(obj1.ToList());

            }
            return View();
        }


        public ActionResult Search1(List<xsearch_custproc_Result> list)
        {
            return View(list);
        }

        public ActionResult SearchAccount()
        {
            return View();
        }

        [HttpPost]
        public ActionResult SearchAccount(FormCollection f)
        {
            DB06TMS127_1718Entities ob = new DB06TMS127_1718Entities();
            int id = Convert.ToInt32(Request["SearchType"]);
            int s = Convert.ToInt32(Request["q"]);
            switch (id)
            {
                case 0:
                    var obj = ob.searchbyacc(s).ToList();
                    return View(obj.ToList());

                case 1:
                    var obj1 = ob.searchbycust(s).ToList();
                    return View(obj1.ToList());

            }
            return View();
        }


    }
}