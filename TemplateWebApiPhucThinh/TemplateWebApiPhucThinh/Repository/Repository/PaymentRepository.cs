

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;
using System.Linq;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class PaymentRepository : GenericRepository<Payment>, IPaymentRepository
    {
        public PaymentRepository(ChoThueXeContext dbContext) : base(dbContext)
        {

        }

        public int CountCondition(string condition)
        {
           int qry = this.Extend().
                       Where(s=>s.IsDelete==false && s.NamePayments.Contains(condition)).Count();
           
           
            return qry;
        }

        public IEnumerable<Payment> GetAllPayment()
        {
            return this.Extend();
        }

        public IEnumerable<Payment> PagingCondition(int pageSize, int pageIndex, string condition)
        {
            var qry = this.Extend().
                       OrderBy(d => d.Id).Where(s=>s.IsDelete==false && s.NamePayments.Contains(condition)).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
           
           
            return qry;
        }

        public IEnumerable<Payment> PagingConditionPrice(string condition, int pageIndex, int pageSize, string sortOrder, int priceStart, int priceEnd)
        {
             IEnumerable<Payment> qry=null;
            if(string.IsNullOrWhiteSpace(condition)){
                condition="";
            }
           
            if(sortOrder.Equals("des")){
                qry = this.Extend().
                       OrderByDescending(d => d.NamePayments).Where(s=>s.IsDelete==false && s.NamePayments.Contains("")
                       
                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                        
            }else{
                 qry = this.Extend().
                       OrderBy(d => d.NamePayments).Where(s=>s.IsDelete==false && s.NamePayments.Contains("")
                       
                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
                       
            }
            
           return qry;
           
           
        }
    }
}

