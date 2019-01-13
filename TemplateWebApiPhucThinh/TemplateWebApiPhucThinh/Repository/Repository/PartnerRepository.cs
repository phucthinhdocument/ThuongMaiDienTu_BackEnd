

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;
using System.Linq;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class PartnerRepository : GenericRepository<Partner>, IPartnerRepository
    {
        public PartnerRepository(ChoThueXeContext dbContext) : base(dbContext)
        {

        }

        public int CountCondition(string condition)
        {
           int qry = this.Extend().
                       Where(s=>s.IsDelete==false && s.NameCompany.Contains(condition)).Count();
           
           
            return qry;
        }

        public IEnumerable<Partner> GetAllPartner()
        {
            return this.Extend();
        }

        public IEnumerable<Partner> PagingCondition(int pageSize, int pageIndex, string condition)
        {
            var qry = this.Extend().
                       OrderBy(d => d.Id).Where(s=>s.IsDelete==false && s.NameCompany.Contains(condition)).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
           
           
            return qry;
        }

        public IEnumerable<Partner> PagingConditionPrice(string condition, int pageIndex, int pageSize, string sortOrder, int priceStart, int priceEnd)
        {
             IEnumerable<Partner> qry=null;
            if(string.IsNullOrWhiteSpace(condition)){
                condition="";
            }
           
            if(sortOrder.Equals("des")){
                qry = this.Extend().
                       OrderByDescending(d => d.NameCompany).Where(s=>s.IsDelete==false && s.NameCompany.Contains("")
                 
                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                        
            }else{
                 qry = this.Extend().
                       OrderBy(d => d.NameCompany).Where(s=>s.IsDelete==false && s.NameCompany.Contains("")
                       
                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                       
            }
            
           return qry;
           
           
        }
    }
}

