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
    
    public partial class Hinh
    {
        public int iID { get; set; }
        public string igHinh { get; set; }
        public Nullable<int> iMaTSKT { get; set; }
    
        public virtual ThongSoKT ThongSoKT { get; set; }
    }
}
