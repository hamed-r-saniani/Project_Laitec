using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Core.services
{
    public class User
    {
        private string name;
        private string family;
        public string fullname()
        {
            return name + " " + family;
        }
    }
}