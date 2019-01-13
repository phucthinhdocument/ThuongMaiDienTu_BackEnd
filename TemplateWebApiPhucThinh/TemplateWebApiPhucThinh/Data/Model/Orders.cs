using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class Orders : IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string NameCustomer { get; set; }
        public string NameCar { get; set; }
        public decimal PriceOrder { get; set; }
        public DateTime DateOrder { get; set; }
        public DateTime DateOfhire { get; set; }
        public DateTime CarReturnDay { get; set; }
        public string LocationReceive { get; set; }
        public bool IsDelete { get; set; }
    }
}
