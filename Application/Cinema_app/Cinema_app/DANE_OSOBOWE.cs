//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Cinema_app
{
    using System;
    using System.Collections.Generic;
    
    public partial class DANE_OSOBOWE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DANE_OSOBOWE()
        {
            this.KLIENCI = new HashSet<KLIENCI>();
        }
    
        public string EMAIL { get; set; }
        public string IMIE { get; set; }
        public string NAZWISKO { get; set; }
        public decimal NUMER_TEL { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<KLIENCI> KLIENCI { get; set; }
    }
}
