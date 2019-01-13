using System;
using System.Collections.Generic;

namespace TemplateWebApiPhucThinh.Data.Model
{
    public partial class Account
    {
        public int Identity { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public bool IsActive { get; set; }
        public string Role { get; set; }
        public bool IsDelete { get; set; }
    }
}
