
using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;
using System.Linq;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class OrdersRepository : GenericRepository<Orders>, IOrdersRepository
    {
        public OrdersRepository(ChoThueXeContext dbContext) : base(dbContext)
        {

        }

        public int CountCondition(string condition)
        {
           int qry = this.Extend().
                       Where(s=>s.IsDelete==false && s.NameCustomer.Contains(condition)).Count();
           
           
            return qry;
        }

        public IEnumerable<Orders> GetAllOrders()
        {
            return this.Extend();
        }

        public IEnumerable<Orders> PagingCondition(int pageSize, int pageIndex, string condition)
        {
            var qry = this.Extend().
                       OrderBy(d => d.Id).Where(s=>s.IsDelete==false && s.NameCustomer.Contains(condition)).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
           
           
            return qry;
        }

        public IEnumerable<Orders> PagingConditionPrice(string condition, int pageIndex, int pageSize, string sortOrder, int priceStart, int priceEnd)
        {
             IEnumerable<Orders> qry=null;
            if(string.IsNullOrWhiteSpace(condition)){
                condition="";
            }
           
            if(sortOrder.Equals("des")){
                qry = this.Extend().
                       OrderByDescending(d => d.PriceOrder).Where(s=>s.IsDelete==false && s.NameCustomer.Contains("")
                       && s.PriceOrder>=priceStart && s.PriceOrder<=priceEnd
                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                        
            }else{
                 qry = this.Extend().
                       OrderBy(d => d.PriceOrder).Where(s=>s.IsDelete==false && s.NameCustomer.Contains("")
                       && s.PriceOrder>=priceStart && s.PriceOrder<=priceEnd
                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                       
            }
            
           return qry;
           
           
        }
    }
}

