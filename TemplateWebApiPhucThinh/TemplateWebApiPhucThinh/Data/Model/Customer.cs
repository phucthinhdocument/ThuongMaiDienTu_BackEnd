using System;
using System.Collections.Generic;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class Customer:IEntity
    {
        public int Identity { get; set; }
        public string Id { get; set; }
        public string FistNameAndLastName { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public bool IsDelete { get; set; }
    }
}
