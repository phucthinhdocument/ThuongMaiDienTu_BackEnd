using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using Microsoft.Extensions.DependencyInjection;

namespace TemplateWebApiPhucThinh.Configure.AppID
{
    public static class AppIDConfigUrl
    {
         public static void ConfigureServices(IServiceCollection services)
        {
            services.AddHttpClient();
                services.AddHttpClient("appID", c =>
                {
                    c.BaseAddress = new Uri("https://iam.bluemix.net/");
                    c.DefaultRequestHeaders
                .Accept
                .Add(new MediaTypeWithQualityHeaderValue("application/json"));//ACCEPT header
                   
                });
               
                services.AddHttpClient("appIDUser", c =>
                {
                    c.BaseAddress = new Uri("https://appid-management.ng.bluemix.net/");
                    c.DefaultRequestHeaders
                .Accept
                .Add(new MediaTypeWithQualityHeaderValue("application/json"));//ACCEPT header
                   
                });
                services.AddHttpClient("appIDUserLogin", c =>
                {
                    c.BaseAddress = new Uri("https://appid-oauth.ng.bluemix.net/");
                    c.DefaultRequestHeaders
                .Accept
                .Add(new MediaTypeWithQualityHeaderValue("application/json"));//ACCEPT header
                   
                });
        }
    }
}