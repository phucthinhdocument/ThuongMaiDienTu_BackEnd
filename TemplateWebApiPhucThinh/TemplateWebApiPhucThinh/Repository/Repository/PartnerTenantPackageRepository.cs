

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;
using System.Linq;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class PartnerTenantPackageRepository : GenericRepository<PartnerTenantPackage>, IPartnerTenantPackageRepository
    {
        public PartnerTenantPackageRepository(ChoThueXeContext dbContext) : base(dbContext)
        {

        }

        public int CountCondition(string condition)
        {
            int qry = this.Extend().
                        Where(s => s.IsDelete == false && s.Id.Contains(condition)).Count();


            return qry;
        }

        public IEnumerable<PartnerTenantPackage> GetAllPartnerTenantPackage()
        {
            return this.Extend();
        }

        public IEnumerable<PartnerTenantPackage> PagingCondition(int pageSize, int pageIndex, string condition)
        {
            var qry = this.Extend().
                       OrderBy(d => d.Id).Where(s => s.IsDelete == false && s.Id.Contains(condition)).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();


            return qry;
        }

        public IEnumerable<PartnerTenantPackage> PagingConditionPrice(string condition, int pageIndex, int pageSize, string sortOrder, int priceStart, int priceEnd)
        {
            IEnumerable<PartnerTenantPackage> qry = null;
            if (string.IsNullOrWhiteSpace(condition))
            {
                condition = "";
            }

            if (sortOrder.Equals("des"))
            {
                qry = this.Extend().
                       OrderByDescending(d => d.Id).Where(s => s.IsDelete == false && s.Id.Contains("")

                       ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();

            }
            else
            {
                qry = this.Extend().
                      OrderBy(d => d.Id).Where(s => s.IsDelete == false && s.Id.Contains("")

                      ).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();

            }

            return qry;


        }
    }
}

