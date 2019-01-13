using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class TypeCar:IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
        public string TypeDescription { get; set; }
        public bool IsDelete { get; set; }
    }
}
