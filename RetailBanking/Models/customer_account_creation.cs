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
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class customer_account_creation
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public customer_account_creation()
        {
            this.account_creation = new HashSet<account_creation>();
        }
    
        [Key]
        public int customerid { get; set; }
        public Nullable<int> customerssnid { get; set; }
        public string customername { get; set; }
        public Nullable<int> customerage { get; set; }
        public string addressline1 { get; set; }
        public string addressline2 { get; set; }
        public string city { get; set; }
        public string cstate { get; set; }
        public string errormessage { get; set; }
        public Nullable<System.DateTime> lastupdated { get; set; }
        public string activationstatus { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<account_creation> account_creation { get; set; }
    }
}