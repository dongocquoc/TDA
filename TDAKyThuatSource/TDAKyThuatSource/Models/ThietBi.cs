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
    
    public partial class ThietBi
    {
        public ThietBi()
        {
            this.CumThietBi = new HashSet<CumThietBi>();
        }
    
        public int iMaThietBi { get; set; }
        public string sTenThietBi { get; set; }
        public Nullable<int> iMaChuyen { get; set; }
    
        public virtual ICollection<CumThietBi> CumThietBi { get; set; }
        public virtual Chuyen Chuyen { get; set; }
    }
}
