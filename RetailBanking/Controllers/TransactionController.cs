using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RetailBanking.Models;

namespace RetailBanking.Controllers
{
    public class TransactionController : Controller
    {
        DB06TMS127_1718Entities db = new DB06TMS127_1718Entities();
        // GET: Transaction
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Deposit()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Deposit(accnt_transactions a,FormCollection f)
        {

            int amt = Convert.ToInt32(f["amount"]);
            var res = db.account_creation.Where(s => s.accountid == a.account_id).FirstOrDefault();
            if (res != null)
                if(res.accountstatus != "inactive")
                    db.deposit_money(a.account_id,amt);
                else
                   ViewBag.warning = "Transaction Cancelled due to Inactivity of account,Try again";
            return View();
        }

        public ActionResult WithdrawIndex(int id)
        {
            var a = db.account_creation.Where(s => s.accountid == id).FirstOrDefault();
            return View(a);
        }

        public ActionResult Withdraw(int id)
        {
            TempData["id"] = id;
            return View();
        }

        [HttpPost]
        public ActionResult Withdraw(accnt_transactions a, FormCollection f)
        {
            int amt = Convert.ToInt32(f["amount"]);
            int id = Convert.ToInt32(TempData["id"]);

            var res = db.account_creation.Where(s => s.accountid == id).FirstOrDefault();
                if (res.accountstatus != "active")
                    ViewBag.warning = "Transaction Cancelled due to Inactivity of account,Try again";
                else if (res.amount < amt)
                    ViewBag.warning = "Transaction Cancelled due to Insufficient balance,Try again";
                else if (res != null)
                {
                    db.withdraw_money(id, amt);
                    ViewBag.success = "Amount Withdrawn successfully , Current Balance : " + (res.amount - amt).ToString();
                }
            return View();
        }


        public ActionResult Transfer()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Transfer(FormCollection f)
        {
            int amt = Convert.ToInt32(f["amount"]);
            int id = Convert.ToInt32(f["id1"]);
            int targetid = Convert.ToInt32(f["id2"]);
            var res1 = db.account_creation.Where(s => s.accountid == id).FirstOrDefault();
            var res2 = db.account_creation.Where(s => s.accountid == targetid).FirstOrDefault();
            if (res1 != null)
                if (res1.accountstatus != "inactive")
                {
                    if (res2 != null)
                        if(res2.accountstatus!="inactive")
                        {
                            db.transfer_money(id, targetid, amt);
                        }

                }

            return View();
        }

        public ActionResult MiniStatement()
        {
            return View();
        }

        [HttpPost]
        public ActionResult MiniStatement(mini_statement_Result a,FormCollection f)
        {
            string start = (f["start_date"]);
            string end = (f["end_date"]);

            int id = Convert.ToInt32(f["q"]);

            if (start == ""|| end == "")
            {
                int rows = Convert.ToInt32(f["rows"]);
                return View(db.mini_statement(id, null, null, rows).ToList());
            }

            else
            {

                return View(db.mini_statement(id, Convert.ToDateTime(start), Convert.ToDateTime(end), 10).ToList());
            }
        }


    }
}