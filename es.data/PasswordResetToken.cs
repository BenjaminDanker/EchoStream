//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace es.data
{
    using System;
    using System.Collections.Generic;
    
    public partial class PasswordResetToken
    {
        public int TokenID { get; set; }
        public int UserID { get; set; }
        public string ResetToken { get; set; }
        public System.DateTime ExpirationDate { get; set; }
        public Nullable<bool> IsUsed { get; set; }
    
        public virtual User User { get; set; }
    }
}
