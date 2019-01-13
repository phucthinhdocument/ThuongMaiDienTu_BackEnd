using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class Feature :IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string NameFeature { get; set; }
        public string Description { get; set; }
        public bool IsDelete { get; set; }
    }
}
