﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RetailBanking.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class DB06TMS127_1718Entities : DbContext
    {
        public DB06TMS127_1718Entities()
            : base("name=DB06TMS127_1718Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<customer_account_creation> customer_account_creation { get; set; }
        public virtual DbSet<account_creation> account_creation { get; set; }
        public virtual DbSet<accnt_transactions> accnt_transactions { get; set; }
    
        public virtual int customer_creation(Nullable<int> customerssnid, string customername, Nullable<int> customerage, string addressline1, string addressline2, string city, string cstate, ObjectParameter customerid)
        {
            var customerssnidParameter = customerssnid.HasValue ?
                new ObjectParameter("customerssnid", customerssnid) :
                new ObjectParameter("customerssnid", typeof(int));
    
            var customernameParameter = customername != null ?
                new ObjectParameter("customername", customername) :
                new ObjectParameter("customername", typeof(string));
    
            var customerageParameter = customerage.HasValue ?
                new ObjectParameter("customerage", customerage) :
                new ObjectParameter("customerage", typeof(int));
    
            var addressline1Parameter = addressline1 != null ?
                new ObjectParameter("addressline1", addressline1) :
                new ObjectParameter("addressline1", typeof(string));
    
            var addressline2Parameter = addressline2 != null ?
                new ObjectParameter("addressline2", addressline2) :
                new ObjectParameter("addressline2", typeof(string));
    
            var cityParameter = city != null ?
                new ObjectParameter("city", city) :
                new ObjectParameter("city", typeof(string));
    
            var cstateParameter = cstate != null ?
                new ObjectParameter("cstate", cstate) :
                new ObjectParameter("cstate", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("customer_creation", customerssnidParameter, customernameParameter, customerageParameter, addressline1Parameter, addressline2Parameter, cityParameter, cstateParameter, customerid);
        }
    
        public virtual ObjectResult<view_customer_Result> view_customer()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<view_customer_Result>("view_customer");
        }
    
        public virtual ObjectResult<view_customer_Result> customerview()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<view_customer_Result>("customerview");
        }
    
        public virtual int update_customer(Nullable<int> customerid, string customername, string addressline1, string addressline2, string city, string cstate)
        {
            var customeridParameter = customerid.HasValue ?
                new ObjectParameter("customerid", customerid) :
                new ObjectParameter("customerid", typeof(int));
    
            var customernameParameter = customername != null ?
                new ObjectParameter("customername", customername) :
                new ObjectParameter("customername", typeof(string));
    
            var addressline1Parameter = addressline1 != null ?
                new ObjectParameter("addressline1", addressline1) :
                new ObjectParameter("addressline1", typeof(string));
    
            var addressline2Parameter = addressline2 != null ?
                new ObjectParameter("addressline2", addressline2) :
                new ObjectParameter("addressline2", typeof(string));
    
            var cityParameter = city != null ?
                new ObjectParameter("city", city) :
                new ObjectParameter("city", typeof(string));
    
            var cstateParameter = cstate != null ?
                new ObjectParameter("cstate", cstate) :
                new ObjectParameter("cstate", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("update_customer", customeridParameter, customernameParameter, addressline1Parameter, addressline2Parameter, cityParameter, cstateParameter);
        }
    
        public virtual int delete_customer(Nullable<int> customerid)
        {
            var customeridParameter = customerid.HasValue ?
                new ObjectParameter("customerid", customerid) :
                new ObjectParameter("customerid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("delete_customer", customeridParameter);
        }
    
        public virtual ObjectResult<customer_account_creation> del(Nullable<int> customerid)
        {
            var customeridParameter = customerid.HasValue ?
                new ObjectParameter("customerid", customerid) :
                new ObjectParameter("customerid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<customer_account_creation>("del", customeridParameter);
        }
    
        public virtual ObjectResult<customer_account_creation> del(Nullable<int> customerid, MergeOption mergeOption)
        {
            var customeridParameter = customerid.HasValue ?
                new ObjectParameter("customerid", customerid) :
                new ObjectParameter("customerid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<customer_account_creation>("del", mergeOption, customeridParameter);
        }
    
        public virtual int readd_customer(Nullable<int> customerid)
        {
            var customeridParameter = customerid.HasValue ?
                new ObjectParameter("customerid", customerid) :
                new ObjectParameter("customerid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("readd_customer", customeridParameter);
        }
    
        public virtual ObjectResult<xsplogin13_Result> xsplogin13(string username)
        {
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<xsplogin13_Result>("xsplogin13", usernameParameter);
        }
    
        public virtual int account_insert(Nullable<int> customerid, string accounttype1, ObjectParameter accountid)
        {
            var customeridParameter = customerid.HasValue ?
                new ObjectParameter("customerid", customerid) :
                new ObjectParameter("customerid", typeof(int));
    
            var accounttype1Parameter = accounttype1 != null ?
                new ObjectParameter("accounttype1", accounttype1) :
                new ObjectParameter("accounttype1", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("account_insert", customeridParameter, accounttype1Parameter, accountid);
        }
    
        public virtual int account_insertion(Nullable<int> customerid, string accounttype1, ObjectParameter accountid)
        {
            var customeridParameter = customerid.HasValue ?
                new ObjectParameter("customerid", customerid) :
                new ObjectParameter("customerid", typeof(int));
    
            var accounttype1Parameter = accounttype1 != null ?
                new ObjectParameter("accounttype1", accounttype1) :
                new ObjectParameter("accounttype1", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("account_insertion", customeridParameter, accounttype1Parameter, accountid);
        }
    
        public virtual ObjectResult<account_view_Result> account_view()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<account_view_Result>("account_view");
        }
    
        public virtual ObjectResult<account_view_Result> viewingaccount()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<account_view_Result>("viewingaccount");
        }
    
        public virtual int delete_account(Nullable<int> accountid)
        {
            var accountidParameter = accountid.HasValue ?
                new ObjectParameter("accountid", accountid) :
                new ObjectParameter("accountid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("delete_account", accountidParameter);
        }
    
        public virtual ObjectResult<account_creation> Delaccount(Nullable<int> accountid)
        {
            var accountidParameter = accountid.HasValue ?
                new ObjectParameter("accountid", accountid) :
                new ObjectParameter("accountid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<account_creation>("Delaccount", accountidParameter);
        }
    
        public virtual ObjectResult<account_creation> Delaccount(Nullable<int> accountid, MergeOption mergeOption)
        {
            var accountidParameter = accountid.HasValue ?
                new ObjectParameter("accountid", accountid) :
                new ObjectParameter("accountid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<account_creation>("Delaccount", mergeOption, accountidParameter);
        }
    
        public virtual int deleting_account(Nullable<int> accountid)
        {
            var accountidParameter = accountid.HasValue ?
                new ObjectParameter("accountid", accountid) :
                new ObjectParameter("accountid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("deleting_account", accountidParameter);
        }
    
        public virtual int deposit_money(Nullable<int> accntid, Nullable<int> amt)
        {
            var accntidParameter = accntid.HasValue ?
                new ObjectParameter("accntid", accntid) :
                new ObjectParameter("accntid", typeof(int));
    
            var amtParameter = amt.HasValue ?
                new ObjectParameter("amt", amt) :
                new ObjectParameter("amt", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("deposit_money", accntidParameter, amtParameter);
        }
    
        public virtual int transfer_money(Nullable<int> accntid, Nullable<int> targetid, Nullable<int> amt)
        {
            var accntidParameter = accntid.HasValue ?
                new ObjectParameter("accntid", accntid) :
                new ObjectParameter("accntid", typeof(int));
    
            var targetidParameter = targetid.HasValue ?
                new ObjectParameter("targetid", targetid) :
                new ObjectParameter("targetid", typeof(int));
    
            var amtParameter = amt.HasValue ?
                new ObjectParameter("amt", amt) :
                new ObjectParameter("amt", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("transfer_money", accntidParameter, targetidParameter, amtParameter);
        }
    
        public virtual int withdraw_money(Nullable<int> accntid, Nullable<int> amt)
        {
            var accntidParameter = accntid.HasValue ?
                new ObjectParameter("accntid", accntid) :
                new ObjectParameter("accntid", typeof(int));
    
            var amtParameter = amt.HasValue ?
                new ObjectParameter("amt", amt) :
                new ObjectParameter("amt", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("withdraw_money", accntidParameter, amtParameter);
        }
    
        public virtual ObjectResult<searchbyacc_Result> searchbyacc(Nullable<int> accountid)
        {
            var accountidParameter = accountid.HasValue ?
                new ObjectParameter("accountid", accountid) :
                new ObjectParameter("accountid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<searchbyacc_Result>("searchbyacc", accountidParameter);
        }
    
        public virtual ObjectResult<searchbyacc_Result> searchbycust(Nullable<int> customerid)
        {
            var customeridParameter = customerid.HasValue ?
                new ObjectParameter("customerid", customerid) :
                new ObjectParameter("customerid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<searchbyacc_Result>("searchbycust", customeridParameter);
        }
    
        public virtual ObjectResult<xsearch_custproc_Result> xsearch_custproc(Nullable<int> customerid)
        {
            var customeridParameter = customerid.HasValue ?
                new ObjectParameter("customerid", customerid) :
                new ObjectParameter("customerid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<xsearch_custproc_Result>("xsearch_custproc", customeridParameter);
        }
    
        public virtual ObjectResult<xsearch_custproc_Result> xsearch_ssnid(Nullable<int> customerssnid)
        {
            var customerssnidParameter = customerssnid.HasValue ?
                new ObjectParameter("customerssnid", customerssnid) :
                new ObjectParameter("customerssnid", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<xsearch_custproc_Result>("xsearch_ssnid", customerssnidParameter);
        }
    
        public virtual ObjectResult<mini_statement_Result> mini_statement(Nullable<int> id, Nullable<System.DateTime> startdate, Nullable<System.DateTime> enddate, Nullable<int> num)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            var startdateParameter = startdate.HasValue ?
                new ObjectParameter("startdate", startdate) :
                new ObjectParameter("startdate", typeof(System.DateTime));
    
            var enddateParameter = enddate.HasValue ?
                new ObjectParameter("enddate", enddate) :
                new ObjectParameter("enddate", typeof(System.DateTime));
    
            var numParameter = num.HasValue ?
                new ObjectParameter("num", num) :
                new ObjectParameter("num", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<mini_statement_Result>("mini_statement", idParameter, startdateParameter, enddateParameter, numParameter);
        }

        public System.Data.Entity.DbSet<RetailBanking.Models.mini_statement_Result> mini_statement_Result { get; set; }
    }
}