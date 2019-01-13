using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TemplateWebApiPhucThinh.Data.Model;

using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Repository.IRepository
{
    public interface IPaymentRepository : IGenericRepository<Payment>
    {
       IEnumerable<Payment> GetAllPayment();
        IEnumerable<Payment> PagingCondition(int pageSize, int pageIndex, string condition);
        int CountCondition(string condition);

        IEnumerable<Payment> PagingConditionPrice(string condition, int pageIndex, int pageSize,string sortOrder,int priceStart,int priceEnd);
        

    }
}
