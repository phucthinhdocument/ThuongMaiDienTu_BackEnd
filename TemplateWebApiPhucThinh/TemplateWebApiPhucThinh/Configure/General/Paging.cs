using Microsoft.Extensions.DependencyInjection;
using ReflectionIT.Mvc.Paging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TemplateWebApiPhucThinh.Configure.General
{
    public static class Paging
    {
        public static void ConfigureServices(IServiceCollection services)
        {
            services.AddPaging();
        }
    }
}
