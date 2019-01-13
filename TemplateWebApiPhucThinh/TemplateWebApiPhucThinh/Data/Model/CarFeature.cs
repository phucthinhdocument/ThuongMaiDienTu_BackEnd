using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class CarFeature:IEntity
    {
        public int Identity { get; set; }
        public string IdCar { get; set; }
        public string IdFeature { get; set; }
        public bool IsDelete { get; set; }
        public string Id { get; set; }
    }
}
