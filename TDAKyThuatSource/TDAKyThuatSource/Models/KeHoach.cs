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
    
    public partial class KeHoach
    {
        public int iMaKH { get; set; }
        public Nullable<System.DateTime> dNgay { get; set; }
        public string sNoiDung { get; set; }
        public string sTrangThai { get; set; }
        public Nullable<int> iMaCum { get; set; }
        public Nullable<int> iMaThietBi { get; set; }
    
        public virtual CumThietBi CumThietBi { get; set; }
    }
}
