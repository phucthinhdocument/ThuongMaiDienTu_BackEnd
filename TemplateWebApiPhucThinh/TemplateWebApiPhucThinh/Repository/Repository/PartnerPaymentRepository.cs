

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class PartnerpaymentRepository : GenericRepository<PartnerPayment>, IPartnerPaymentRepository
    {
        public PartnerpaymentRepository(ChoThueXeContext dbContext) : base(dbContext)
        {
        }
    }
}

