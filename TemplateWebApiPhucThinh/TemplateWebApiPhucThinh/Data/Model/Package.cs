using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class Package:IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public bool IsDelete { get; set; }
    }
}
