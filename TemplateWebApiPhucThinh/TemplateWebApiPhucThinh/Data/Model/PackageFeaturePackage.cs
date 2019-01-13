using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class PackageFeaturePackage:IEntity
    {
        public int Identity { get; set; }
        public string IdPackage { get; set; }
        public string IdFeaturePackage { get; set; }
        public string Name { get; set; }
        public bool IsDelete { get; set; }
        public string Id { get; set; }
    }
}
