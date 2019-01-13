using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using ReflectionIT.Mvc.Paging;
using System;
using System.Linq;
using System.Threading.Tasks;
using TemplateWebApiPhucThinh.Data.Model;

using TemplateWebApiPhucThinh.ModelValidation;
using TemplateWebApiPhucThinh.Repository.IRepository;

namespace TemplateWebApiPhucThinh.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class PackageController : ControllerBase
    {
        //ICustomerRepository CustomerRepository;
        //IMapper Mapper;
        //IConfiguration Configuration;
        private readonly IPackageRepository _repository;

        public PackageController(IPackageRepository repository)
        {
            _repository = repository;
        }

        [HttpPost]
        [Route("Create")]
        public IActionResult Create([FromBody] Package Package)
        {
            Package.Id = Guid.NewGuid() + "";
            Package.IsDelete=false;
            return Ok(_repository.Create(Package));
        }
     

        [HttpGet]
        [Route("GetById/{id}")]
        public IActionResult GetById(string id)
        {
            return Ok(_repository.GetById(id));
        }

        [HttpDelete]
        [Route("Delete/{id}")]
        public IActionResult Delete(string id)
        {
            return Ok(_repository.Delete(id));
        }
        [HttpPut]
        [Route("Update/{id}")]
        public IActionResult Update(string id, [FromBody] Package Package)
        {
            return Ok(_repository.Update(id, Package));
        }
        [HttpGet]
        [Route("Paging/pagesize/pageNow")]
        public IActionResult Paging(int pagesize, int pageNow)
        {
            
            
            return Ok(_repository.Paging(pagesize, pageNow, "color"));

        }

         [HttpGet]
        [Route("CountOfPaging/pagesize/pageNow")]
        public IActionResult CountOfPaging(int pagesize, int pageNow)
        {
            
            
            return Ok(_repository.CountOfPaging(pagesize, pageNow));

        }
         [HttpGet]
        [Route("CountAll/pagesize/pageNow")]
        public IActionResult CountAll(int pagesize, int pageNow)
        {
            
            
            return Ok(_repository.CountAll());

        }
        [HttpDelete]
        [Route("DeleteEnable/{id}")]
        public IActionResult DeleteEnable(string id)
        {
            if (string.IsNullOrWhiteSpace(id))
            {
                return BadRequest();
            }
            return Ok(_repository.DeleteEnable(id));
        }

        [HttpGet]
        [Route("PagingCondition/pagesize/pageNow/condition")]
        public IActionResult PagingCondition(int pagesize, int pageNow,string condition)
        {
            
            
            return Ok(_repository.PagingCondition(pagesize, pageNow, condition));

        }

        [HttpGet]
        [Route("CountCondition/condition")]
        public IActionResult CountCondition(string condition)
        {
            return Ok(_repository.CountCondition(condition));
        }


        [HttpGet]
        [Route("PagingConditionPrice/condition/pageIndex/pageSize/sortOrder/priceStart/priceEnd")]
        public IActionResult PagingConditionPrice(string condition, int pageIndex, int pageSize, string sortOrder, int priceStart, int priceEnd)
        {
            
            
            return Ok(_repository.PagingConditionPrice( condition,  pageIndex,  pageSize,  sortOrder,  priceStart,  priceEnd));

        }
    }
}
