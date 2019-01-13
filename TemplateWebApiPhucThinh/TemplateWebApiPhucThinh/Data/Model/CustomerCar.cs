using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class CustomerCar:IEntity
    {
        public string Id { get; set; }
        public string IdCustomer { get; set; }
        public string IdCar { get; set; }
        public string Description { get; set; }
        public string PaymentsCustomer { get; set; }
        public DateTime DateOfHire { get; set; }
        public DateTime CarRepaired { get; set; }
        public bool IsDelete { get; set; }
        public int Identity { get; set; }
    }
}
