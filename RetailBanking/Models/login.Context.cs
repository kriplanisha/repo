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
    
    public partial class DB06TMS127_1718Entities2 : DbContext
    {
        public DB06TMS127_1718Entities2()
            : base("name=DB06TMS127_1718Entities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<login_bankexe> login_bankexe { get; set; }
    
        public virtual ObjectResult<xsplogin12_Result1> xsplogin12(string username)
        {
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<xsplogin12_Result1>("xsplogin12", usernameParameter);
        }
    
        public virtual ObjectResult<xsplogin13_Result> xsplogin13(string username)
        {
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<xsplogin13_Result>("xsplogin13", usernameParameter);
        }

        public System.Data.Entity.DbSet<RetailBanking.Models.xsplogin13_Result> xsplogin13_Result { get; set; }

        public System.Data.Entity.DbSet<RetailBanking.Models.account_creation> account_creation { get; set; }
    }
}
