//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TDAKyThuatSource.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Chuyen
    {
        public Chuyen()
        {
            this.ThietBi = new HashSet<ThietBi>();
        }
    
        public int iMaChuyen { get; set; }
        public string sTenChuyen { get; set; }
        public Nullable<int> iMaDonVi { get; set; }
    
        public virtual DonVi DonVi { get; set; }
        public virtual ICollection<ThietBi> ThietBi { get; set; }
    }
}
