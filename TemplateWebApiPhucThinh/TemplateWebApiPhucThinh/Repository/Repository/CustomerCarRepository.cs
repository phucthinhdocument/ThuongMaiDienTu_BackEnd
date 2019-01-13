

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class CustomerCarRepository : GenericRepository<CustomerCar>, ICustomerCarRepository
    {
        public CustomerCarRepository(ChoThueXeContext dbContext) : base(dbContext)
        {
        }
    }
}

