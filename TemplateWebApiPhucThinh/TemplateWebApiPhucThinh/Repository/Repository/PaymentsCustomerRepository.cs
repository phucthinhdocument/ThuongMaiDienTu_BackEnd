

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class PaymentsCustomerRepository : GenericRepository<PaymentsCustomer>, IPaymentsCustomerRepository
    {
        public PaymentsCustomerRepository(ChoThueXeContext dbContext) : base(dbContext)
        {
        }
    }
}

