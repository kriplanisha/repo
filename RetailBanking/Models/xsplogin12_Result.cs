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

    public partial class xsplogin12_Result
    {
        public int id { get; set; }

        [Required(ErrorMessage = "You forgot to enter a username.")]
        [Display(Name = "User name")]
        public string username { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string pwd { get; set; }
        public Nullable<System.DateTime> login_detail { get; set; }
    }
}
