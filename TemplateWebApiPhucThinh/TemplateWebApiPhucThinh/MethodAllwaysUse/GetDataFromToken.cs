using System.Collections.Generic;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using TemplateWebApiPhucThinh.Data.ModelIdentityToken;

namespace TemplateWebApiPhucThinh.MethodAllwaysUse
{
    public static class GetDataFromToken
    {
        public static string GetDataIdentityFormToken(Dictionary<string,string> claims){

            var identities=claims["identities"];
            JObject coverJson = JObject.Parse(identities);
            var json=JsonConvert.SerializeObject(coverJson);
            var obj = Newtonsoft.Json.JsonConvert.DeserializeObject<IDentityToken>(json);
            return obj.id;

        }

        public static string GetDataByKey(Dictionary<string,string> claims,string key){

            var identities=claims[key];
            
            return key;

        }
    }
}