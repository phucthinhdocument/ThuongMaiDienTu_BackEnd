

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;
using System.Linq;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class TypeCarRepository : GenericRepository<TypeCar>, ITypeCarRepository
    {
        public TypeCarRepository(ChoThueXeContext dbContext) : base(dbContext)
        {

        }

        public int CountCondition(string condition)
        {
           int qry = this.Extend().
                       Where(s=>s.IsDelete==false && s.Name.Contains(condition)).Count();
           
           
            return qry;
        }

        public IEnumerable<TypeCar> GetAllTypeCar()
        {
            return this.Extend();
        }

        public IEnumerable<TypeCar> PagingCondition(int pageSize, int pageIndex, string condition)
        {
            var qry = this.Extend().
                       OrderBy(d => d.Id).Where(s=>s.IsDelete==false && s.Name.Contains(condition)).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
           
           
            return qry;
        }

        public IEnumerable<TypeCar> PagingConditionPrice(string condition, int pageIndex, int pageSize, string sortOrder, int priceStart, int priceEnd)
        {
             IEnumerable<TypeCar> qry=null;
            if(string.IsNullOrWhiteSpace(condition)){
                condition="";
            }
           
            if(sortOrder.Equals("des")){
                qry = this.Extend().
                       OrderByDescending(d => d.Name).Where(s=>s.IsDelete==false && s.Name.Contains("")

                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                        
            }else{
                 qry = this.Extend().
                       OrderBy(d => d.Name).Where(s=>s.IsDelete==false && s.Name.Contains("")
                       
                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                       
            }
            
           return qry;
           
           
        }
    }
}

