using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TemplateWebApiPhucThinh.RepositoryGeneric
{
    public interface IEntity
    {

        int Identity { get; set; }
        string Id { get; set; }
        bool IsDelete { get; set; }
        
    }
}
