using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RetailBanking.Models
{
    public class StateCityModel
    {
        public SelectList States { get; set; }
        public int StateID { get; set; }

        public StateCityModel()
        {
            using (StateCityEntities db = new StateCityEntities())
            {
                var states = db.States.ToList();
                States = new SelectList(states, "StateDesc", "StateDesc");
            }

        }

        public static SelectList Citys(string stateName)
        {
            using (StateCityEntities db = new StateCityEntities())
            {
                var State = db.States.Where(s => s.StateDesc == stateName).FirstOrDefault();
                int Stateid = State.StateID;
                var cityList = db.Cities.Where(x => x.StateID == Stateid).ToList();
                var citys = new SelectList(cityList, "CityDesc", "CityDesc");
                return citys;
            }
        }
    }
}