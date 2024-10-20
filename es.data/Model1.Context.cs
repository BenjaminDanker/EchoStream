﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class DataEntities : DbContext
    {
        public DataEntities()
            : base("name=DataEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AuditLogs> AuditLogs { get; set; }
        public virtual DbSet<BuildVersion> BuildVersion { get; set; }
        public virtual DbSet<Categories> Categories { get; set; }
        public virtual DbSet<Content> Content { get; set; }
        public virtual DbSet<ErrorLog> ErrorLog { get; set; }
        public virtual DbSet<HtmlPosts> HtmlPosts { get; set; }
        public virtual DbSet<Referrals> Referrals { get; set; }
        public virtual DbSet<Users> Users { get; set; }
        public virtual DbSet<Videos> Videos { get; set; }
        public virtual DbSet<database_firewall_rules> database_firewall_rules { get; set; }
    
        [DbFunction("DataEntities", "ufnGetAllCategories")]
        public virtual IQueryable<ufnGetAllCategories_Result> ufnGetAllCategories()
        {
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<ufnGetAllCategories_Result>("[DataEntities].[ufnGetAllCategories]()");
        }
    
        [DbFunction("DataEntities", "ufnGetCustomerInformation")]
        public virtual IQueryable<ufnGetCustomerInformation_Result> ufnGetCustomerInformation(Nullable<int> customerID)
        {
            var customerIDParameter = customerID.HasValue ?
                new ObjectParameter("CustomerID", customerID) :
                new ObjectParameter("CustomerID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<ufnGetCustomerInformation_Result>("[DataEntities].[ufnGetCustomerInformation](@CustomerID)", customerIDParameter);
        }
    
        public virtual int uspLogError(ObjectParameter errorLogID)
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("uspLogError", errorLogID);
        }
    
        public virtual int uspPrintError()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("uspPrintError");
        }
    }
}
