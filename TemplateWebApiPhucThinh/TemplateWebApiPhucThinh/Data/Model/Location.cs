using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class Location:IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public string Address { get; set; }
        public bool IsDelete { get; set; }
    }
}
