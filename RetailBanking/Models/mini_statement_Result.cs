//------------------------------------------------------------------------------
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
    using System.ComponentModel.DataAnnotations;

    public partial class mini_statement_Result
    {
        public Nullable<System.DateTime> transaction_date { get; set; }
        public Nullable<int> prev_balance { get; set; }
        public Nullable<int> current_balance { get; set; }
        public string type { get; set; }
        public string description { get; set; }
        [Key]
        public int transaction_id { get; set; }
        public int account_id { get; set; }
    }
}
