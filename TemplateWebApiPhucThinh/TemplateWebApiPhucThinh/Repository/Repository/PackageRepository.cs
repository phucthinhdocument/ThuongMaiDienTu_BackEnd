

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;
using System.Linq;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class PackageRepository : GenericRepository<Package>, IPackageRepository
    {
        public PackageRepository(ChoThueXeContext dbContext) : base(dbContext)
        {

        }

        public int CountCondition(string condition)
        {
           int qry = this.Extend().
                       Where(s=>s.IsDelete==false && s.Name.Contains(condition)).Count();
           
           
            return qry;
        }

        public IEnumerable<Package> GetAllPackage()
        {
            return this.Extend();
        }

        public IEnumerable<Package> PagingCondition(int pageSize, int pageIndex, string condition)
        {
            var qry = this.Extend().
                       OrderBy(d => d.Id).Where(s=>s.IsDelete==false && s.Name.Contains(condition)).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
           
           
            return qry;
        }

        public IEnumerable<Package> PagingConditionPrice(string condition, int pageIndex, int pageSize, string sortOrder, int priceStart, int priceEnd)
        {
             IEnumerable<Package> qry=null;
            if(string.IsNullOrWhiteSpace(condition)){
                condition="";
            }
           
            if(sortOrder.Equals("des")){
                qry = this.Extend().
                       OrderByDescending(d => d.Price).Where(s=>s.IsDelete==false && s.Name.Contains("")
                       && s.Price>=priceStart && s.Price<=priceEnd
                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                        
            }else{
                 qry = this.Extend().
                       OrderBy(d => d.Price).Where(s=>s.IsDelete==false && s.Name.Contains("")
                       && s.Price>=priceStart && s.Price<=priceEnd
                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                       
            }
            
           return qry;
           
           
        }
    }
}

