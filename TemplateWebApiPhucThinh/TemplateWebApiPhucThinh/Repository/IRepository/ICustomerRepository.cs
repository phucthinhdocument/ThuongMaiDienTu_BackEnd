using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TemplateWebApiPhucThinh.Data.Model;

using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Repository.IRepository
{
    public interface ICustomerRepository : IGenericRepository<Customer>
    {
       IEnumerable<Customer> GetAllCustomer();
        IEnumerable<Customer> PagingCondition(int pageSize, int pageIndex, string condition);
        int CountCondition(string condition);

        IEnumerable<Customer> PagingConditionPrice(string condition, int pageIndex, int pageSize,string sortOrder,int priceStart,int priceEnd);
        

    }
}
