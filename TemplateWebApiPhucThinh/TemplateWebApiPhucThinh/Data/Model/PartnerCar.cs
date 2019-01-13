using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class PartnerCar:IEntity
    {
        public int Identity { get; set; }
        public string IdPartner { get; set; }
        public string IsCar { get; set; }
        public bool StatusHire { get; set; }
        public bool IsDelete { get; set; }
        public string Id { get; set; }
    }
}
