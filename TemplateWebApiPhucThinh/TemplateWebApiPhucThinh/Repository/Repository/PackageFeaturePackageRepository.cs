

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class PackageFeaturePackageRepository : GenericRepository<PackageFeaturePackage>, IPackageFeaturePackageRepository
    {
        public PackageFeaturePackageRepository(ChoThueXeContext dbContext) : base(dbContext)
        {
        }
    }
}

