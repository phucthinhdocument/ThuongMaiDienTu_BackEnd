using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class Partner:IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string NameCompany { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string PartnerPayment { get; set; }
        public bool IsDelete { get; set; }
    }
}
