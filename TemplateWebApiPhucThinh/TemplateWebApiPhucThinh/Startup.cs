using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using TemplateWebApiForMy.Configure.General;
using TemplateWebApiPhucThinh.Configure.AppID;
using TemplateWebApiPhucThinh.Configure.Authentication;
using TemplateWebApiPhucThinh.Configure.General;
using TemplateWebApiPhucThinh.Configure.Mapper;
using TemplateWebApiPhucThinh.Configure.Validation;
using TemplateWebApiPhucThinh.Data.Model;



namespace TemplateWebApiPhucThinh
{
    public class Startup
    {
         static string tenantId = "d5b87848-1b6b-4b73-9f62-bd230025746c";
        static string endponit = "https://appid-oauth.ng.bluemix.net/oauth/v3/";
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            
            CORSConfig.ConfigureServices(services);
            services.AddMvcCore()
                .AddAuthorization()
                .AddJsonFormatters();

            services.AddAuthentication("Bearer")
                .AddIdentityServerAuthentication(options =>
                {
                    options.Authority = endponit + tenantId;
                    options.RequireHttpsMetadata = false;
                });
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
            Paging.ConfigureServices(services);
            SwaggerConfig.ConfigureServices(services);
            AppIDConfigUrl.ConfigureServices(services);
           
            services.AddDbContext<ChoThueXeContext>(options =>
            options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection")));
            RepositoryConfig.ConfigureServices(services);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
           
            CORSConfig.Configure(app);
            Authentication.Configure(app);
            app.UseMvc();
            SwaggerConfig.Configure(app);
        }
    }
}
