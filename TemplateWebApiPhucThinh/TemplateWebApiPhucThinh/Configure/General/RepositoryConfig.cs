
using Microsoft.Extensions.DependencyInjection;
using TemplateWebApiPhucThinh.Repository.IRepository;
using TemplateWebApiPhucThinh.Repository.Repository;

namespace TemplateWebApiPhucThinh.Configure.General
{
    public static class RepositoryConfig
    {
        public static void ConfigureServices(IServiceCollection service)
        {
            service.AddScoped<ICarRepository, CarRepository>();
            service.AddScoped<IFeatureRepository, FeatureRepository>();
            service.AddScoped<ICarFeatureRepository, CarFeatureRepository>();
            service.AddScoped<ICustomerRepository, CustomerRepository>();
            service.AddScoped<ICustomerCarRepository, CustomerCarRepository>();
            service.AddScoped<IFeaturePackageRepository, FeaturePackageRepository>();
            service.AddScoped<ILocationRepository, LocationRepository>();
            service.AddScoped<IPackageRepository, PackageRepository>();
            service.AddScoped<IPackageFeaturePackageRepository, PackageFeaturePackageRepository>();
            service.AddScoped<IPartnerRepository, PartnerRepository>();
            service.AddScoped<IPartnerCarRepository, PartnerCarRepository>();
            service.AddScoped<IPartnerPaymentRepository, PartnerpaymentRepository>();
            service.AddScoped<IPaymentRepository, PaymentRepository>();
            service.AddScoped<IPaymentsCustomerRepository, PaymentsCustomerRepository>();
            service.AddScoped<IProcedureRepository, ProcedureRepository>();
            service.AddScoped<ITypeCarRepository, TypeCarRepository>();
            service.AddScoped<IOrdersRepository, OrdersRepository>();
            service.AddScoped<IPartnerTenantPackageRepository, PartnerTenantPackageRepository>();
        }
    }
}
