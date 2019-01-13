using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TemplateWebApiPhucThinh.Data.Model;

using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Repository.IRepository
{
    public interface IPackageRepository : IGenericRepository<Package>
    {
       IEnumerable<Package> GetAllPackage();
        IEnumerable<Package> PagingCondition(int pageSize, int pageIndex, string condition);
        int CountCondition(string condition);

        IEnumerable<Package> PagingConditionPrice(string condition, int pageIndex, int pageSize,string sortOrder,int priceStart,int priceEnd);
        

    }
}
