using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Core.model
{
    public class UserModel
    {
        private int _id;
        public int id
        {
            get { return _id; }
            set { _id = value; }
        }
        private string _name;
        public string name
        {
            get { return _name; }
            set { _name = value; }
        }
        private string _family;
        public string family
        {
            get { return _family; }
            set { _family = value; }
        }
        private int _tell;
        public int tell
        {
            get { return _tell; }
            set { _tell = value; }
        }
        private int _mobile;
        public int mobile
        {
            get { return _mobile; }
            set { _mobile = value; }
        }
        private int _national_code;
        public int national_code
        {
            get { return _national_code; }
            set { _national_code = value; }
        }
        private string _username;
        public string username
        {
            get { return _username; }
            set { _username = value; }
        }
        private string _password;
        public string password
        {
            get { return _password; }
            set { _password = value; }
        }
        private int _role_id;
        public int role_id
        {
            get { return _role_id; }
            set { _role_id = value; }
        }
    }
}