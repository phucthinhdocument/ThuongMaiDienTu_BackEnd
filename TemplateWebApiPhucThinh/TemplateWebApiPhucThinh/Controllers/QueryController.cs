using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TemplateWebApiPhucThinh.Data.Model;

namespace TemplateWebApiPhucThinh.Controllers
{
    [Route("[controller]")]
    [ApiController]

    public class QueryController : ControllerBase
    {
        ChoThueXeContext context = new ChoThueXeContext();
        [HttpGet]
        [Route("LayDanhSachGanHetHan")]
        public IActionResult LayDanhSachGanHetHan()
        {
            DateTime today = System.DateTime.Now;
           


            var List =
          (from _partner in context.Partner
           join _partnerTenantPackage in context.PartnerTenantPackage on _partner.Id equals _partnerTenantPackage.Id
           join _package in context.Package on _partnerTenantPackage.IdPackage equals _package.Id



           select new
           {
               idPackage= _partnerTenantPackage.IdPackage,
               NameParnert = _partner.NameCompany,
               Email = _partner.Email,
               DayHetHan =(_partnerTenantPackage.DateTenant.AddDays(Int32.Parse(_package.Name))-today).Days,


           }).Where(s=>s.DayHetHan<=10).ToList();
           
            return Ok(List);
        }

        [HttpGet]
        [Route("LocThanhPhoVaNgayXeRanh")]
        public IActionResult LocThanhPhoVaNgayXeRanh(string location ,string dateStart)
        {
            DateTime bd = Convert.ToDateTime(dateStart);
            
            var ListCar =
         (from _partner in context.Partner
          join _partnerCar in context.PartnerCar on _partner.Id equals _partnerCar.IsCar
          join _car in context.Car on _partnerCar.IsCar equals _car.Id
          join _location in context.Location on _partner.Id equals _location.Country
          where _location.City == location
          where _car.PurchDate <bd 


          select _car );

            return Ok(ListCar);
        }
    }
}