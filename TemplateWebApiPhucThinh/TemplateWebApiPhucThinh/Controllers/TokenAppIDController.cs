using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using TemplateWebApiPhucThinh.Data.ModelIdentityToken;
using TemplateWebApiPhucThinh.MethodAllwaysUse;

namespace TemplateWebApiPhucThinh.Controllers
{

    [Route("[controller]")]
    [ApiController]
    public class TokenAppIDController :ControllerBase
    { 


        
        private string getIDAccessToken(){
             var claims = User.Claims.Select(claim => new { claim.Type, claim.Value }) .ToDictionary( t => t.Type, t => t.Value );;
           
            // System.Console.WriteLine(obj.id);
            return GetDataFromToken.GetDataIdentityFormToken(claims);

        }
        [Authorize]
        [HttpGet]
        [Route("HaveAuthorize")]
        public IActionResult HaveAuthorize(){

           
                
         return Ok(getIDAccessToken());
        }

        [Authorize]
        [HttpGet]
        [Route("khongco")]

        public IActionResult KhongcoAuthen(){
            return Ok(new JsonResult(from c in User.Claims select new { c.Type, c.Value }));
        }
        
    }
}