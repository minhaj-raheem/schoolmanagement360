﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace S360Entity
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class S360Entities : DbContext
    {
        public S360Entities()
            : base("name=S360Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AssignedPermission> AssignedPermissions { get; set; }
        public virtual DbSet<PageEnumerator> PageEnumerators { get; set; }
        public virtual DbSet<Student> Students { get; set; }
        public virtual DbSet<UserCredential> UserCredentials { get; set; }
    }
}
