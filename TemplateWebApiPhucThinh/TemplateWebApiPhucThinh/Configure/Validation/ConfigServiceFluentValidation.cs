using FluentValidation.AspNetCore;
using Microsoft.Extensions.DependencyInjection;

namespace TemplateWebApiPhucThinh.Configure.Validation
{
    public static class ConfigServiceFluentValidation
    {
        public static void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc(options =>
            {
                options.Filters.Add(typeof(ValidateModelAttribute));
            })
         .AddFluentValidation(fv => fv.RegisterValidatorsFromAssemblyContaining<ValidateModelAttribute>());
        }
    }
}
