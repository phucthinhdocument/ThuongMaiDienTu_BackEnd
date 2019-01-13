

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class FeaturePackageRepository : GenericRepository<FeaturePackage>, IFeaturePackageRepository
    {
        public FeaturePackageRepository(ChoThueXeContext dbContext) : base(dbContext)
        {
        }
    }
}

