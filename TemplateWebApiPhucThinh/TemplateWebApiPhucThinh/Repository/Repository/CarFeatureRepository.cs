

using System.Collections.Generic;
using TemplateWebApiPhucThinh.Data.Model;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.RepositoryGeneric;

namespace TemplateWebApiPhucThinh.Repository.Repository
{
    public class CarFeatureRepository : GenericRepository<CarFeature>, ICarFeatureRepository
    {
        public CarFeatureRepository(ChoThueXeContext dbContext) : base(dbContext)
        {
        }
    }
}

