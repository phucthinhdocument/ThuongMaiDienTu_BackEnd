using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TemplateWebApiPhucThinh.RepositoryGeneric
{
    public interface IGenericRepository<TEntity>
       where TEntity : class
    {
        IEnumerable<TEntity> Paging(int pageSize, int pageIndex, string sortExpression);
        
        IQueryable<TEntity> Extend();

        TEntity GetById(string id);

        bool Create(TEntity entity);

        bool Update(string id, TEntity entity);

        bool Delete(string id);

        bool DeleteEnable(string id);

        int CountOfPaging(int pageSize, int pageIndex);

         int CountAll();

    }
}
