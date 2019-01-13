using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class Car:IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
        public string TypeCar { get; set; }
        public decimal Price { get; set; }
        public string Color { get; set; }
        public string Brank { get; set; }
        public DateTime PurchDate { get; set; }
        public string Description { get; set; }
        public bool IsDelete { get; set; }
        public string ImageLink { get; set; }

    }
}
