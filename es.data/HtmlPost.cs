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
    
    public partial class HtmlPost
    {
        public int PostID { get; set; }
        public string Title { get; set; }
        public string ShortDescription { get; set; }
        public string ContentBody { get; set; }
        public Nullable<System.DateTime> PublishedDate { get; set; }
        public bool IsActive { get; set; }
        public Nullable<int> CategoryID { get; set; }
        public Nullable<int> UserID { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual User User { get; set; }
    }
}
