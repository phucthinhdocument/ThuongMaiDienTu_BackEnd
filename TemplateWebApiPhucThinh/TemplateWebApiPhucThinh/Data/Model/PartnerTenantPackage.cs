using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class PartnerTenantPackage : IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string IdPartner { get; set; }
        public string IdPackage { get; set; }
        public DateTime DateTenant { get; set; }
        public bool IsDelete { get; set; }
    }
}
