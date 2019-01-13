using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TemplateWebApiPhucThinh.ModelValidation
{
    public class CustomerModelValidation : AbstractValidator<CustomerModel>
    {
        public CustomerModelValidation()
        {
            RuleFor(p => p.Name).NotEmpty();
            RuleFor(p => p.Phone).Length(10);

        }
    }
}
