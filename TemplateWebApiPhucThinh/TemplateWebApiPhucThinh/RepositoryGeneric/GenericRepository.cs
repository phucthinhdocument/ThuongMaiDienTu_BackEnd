using Microsoft.EntityFrameworkCore;
using ReflectionIT.Mvc.Paging;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using TemplateWebApiPhucThinh.Data.Model;


namespace TemplateWebApiPhucThinh.RepositoryGeneric
{
    public class GenericRepository<TEntity> : IGenericRepository<TEntity>
       where TEntity : class, IEntity
    {
        private readonly ChoThueXeContext _dbContext ;

        public GenericRepository(ChoThueXeContext dbContext)
        {
            _dbContext = dbContext;
        }

        public IQueryable<TEntity> Extend()
        {
            return _dbContext.Set<TEntity>().AsNoTracking();
        }

        public TEntity GetById(string id)
        {
           
            return  _dbContext.Set<TEntity>()
                .AsNoTracking().Where(s=>s.Id.Equals(id) && s.IsDelete==false).FirstOrDefault();
                
        }

        public bool Create(TEntity entity)
        {
            try
            {
                _dbContext.Set<TEntity>().Add(entity);
                 _dbContext.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
             
        }

        public bool Update(string id, TEntity entity)
        {
            var tEntity= _dbContext.Set<TEntity>()
                .AsNoTracking()
                .FirstOrDefault(e => e.Id.Equals(id));
            if (tEntity != null)
            {
                try
                {
                    _dbContext.Set<TEntity>().Update(entity).Property(x => x.Identity).IsModified = false;
                    _dbContext.SaveChanges();
                    return true;
                }
                catch (Exception)
                {
                    return false;
                }
               
            }
            return false;
        }
        public bool Delete(string id)
        {
            var entity = _dbContext.Set<TEntity>().FirstOrDefault(e => e.Id.Equals(id));
            if (entity != null) { 
            try
            {
                _dbContext.Set<TEntity>().Remove(entity);
                _dbContext.SaveChanges();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
            }
            return false;

        }

        public IEnumerable<TEntity> Paging(int pageSize, int pageIndex, string sortExpression)
        {
            var qry = _dbContext.Set<TEntity>().
                       OrderBy(d => d.Id).Where(s=>s.IsDelete==false).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
           
           
            return qry;
        }

        public bool DeleteEnable(string id)
        {
            var tEntity = _dbContext.Set<TEntity>()
               .AsNoTracking()
               .FirstOrDefault(e => e.Id.Equals(id));
            if (tEntity != null)
            {
                tEntity.IsDelete = true;
                try
                {
                    _dbContext.Set<TEntity>().Update(tEntity).Property(x => x.Identity).IsModified = false;
                    _dbContext.SaveChanges();
                    return true;
                }
                catch (Exception)
                {
                    return false;
                }
            }
            return false;

        }

        public int CountOfPaging(int pageSize, int pageIndex)
        {
          int qry = _dbContext.Set<TEntity>().
                       OrderBy(d => d.Id).Where(s=>s.IsDelete==false).Skip((pageIndex - 1) * pageSize).Take(pageSize).Count();
                       return qry;
        }

        public int CountAll()
        {
            return _dbContext.Set<TEntity>().Where(s=>s.IsDelete==false).Count();
        }

        
    }
}
