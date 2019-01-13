using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;

namespace TemplateWebApiPhucThinh.Configure.Authentication
{
    public static class Authentication
    {
        public static void ConfigureServices(IServiceCollection services)
        {
            services.AddAuthentication().AddJwtBearer(options => {
            
            options.Authority = "appid-oauth.ng.bluemix.net";
        });
           
            }
        

        public static void Configure(IApplicationBuilder app)
        {
           app.UseAuthentication();
        }

    }
    }