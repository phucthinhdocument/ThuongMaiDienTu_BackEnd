using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class Payment:IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string NamePayments { get; set; }
        public string Description { get; set; }
        public bool IsDelete { get; set; }
    }
}
