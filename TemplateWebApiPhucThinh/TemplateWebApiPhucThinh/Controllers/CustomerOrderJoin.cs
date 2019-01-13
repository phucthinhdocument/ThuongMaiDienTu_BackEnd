
using Microsoft.AspNetCore.Mvc;
using TemplateWebApiPhucThinh.Data.Model;
using System.Linq;
using TemplateWebApiPhucThinh.Data.ModelJoin;
using TemplateWebApiPhucThinh.Common;
using System.Collections.Generic;

namespace TemplateWebApiPhucThinh.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class CustomerOrderJoinController : ControllerBase
    {
        ChoThueXeContext context = new ChoThueXeContext();


        [HttpGet]
        [Route("Join")]
        public IActionResult Join(string idCar)
        {

            var categorizedProducts =
            (from _procedure in context.Procedure
             join _partner in context.Partner on _procedure.IdPartner equals _partner.Id
             join _partnerCar in context.PartnerCar on _partner.Id equals _partnerCar.IdPartner
             join _car in context.Car on _partnerCar.IsCar equals _car.Id
             join _carFeature in context.CarFeature on _car.Id equals _carFeature.IdCar
             join _feature in context.Feature on _carFeature.IdFeature equals _feature.Id
             where _car.Id == idCar


             select new
             {

                 Name = _procedure.Name,
                 Price = _car.Price,
                 feature= _feature.NameFeature,
                 Procedure = _procedure.Name

             }).ToList();
            if (categorizedProducts == null)
            {
                return Ok("rong");
            }

            ModelJoin modelJoin = new ModelJoin();
            string pro = "";
            string fea = "";
            string hashsetProcedure = "";
            modelJoin.name = categorizedProducts[0].Name;
            modelJoin.price = categorizedProducts[0].Price;
            HashSet<string>  hash = new HashSet<string>();
            //modelJoin.feature = "thinh*ku*ka";
            var ListFeature =
            (from  _carFeature in context.CarFeature
             join _feature in context.Feature on _carFeature.IdFeature equals _feature.Id
             where _carFeature.IdCar == idCar

             select new
             {

                 
                 feature = _feature.NameFeature
              

             }).ToList();
            foreach (var item in ListFeature)
            {
                fea += item.feature + "*";
            }
            foreach (var item in categorizedProducts)
            {
                
                hash.Add(item.Procedure+"*");
                
            }
            foreach (string item in hash)
            {
                hashsetProcedure += item;
            }
            modelJoin.feature = MethodCommon.catCHuoi(fea);
            modelJoin.procedure = MethodCommon.catCHuoi(hashsetProcedure);

            return Ok(modelJoin);

        }


    }
}
