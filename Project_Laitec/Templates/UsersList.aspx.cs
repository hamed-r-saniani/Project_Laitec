using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Laitec.Templates
{
    public partial class UsersList : System.Web.UI.Page
    {
        SignIn sn = new SignIn();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (sn.Session["UserName"] == null)
                {
                    Response.Redirect("SignIn.aspx");
                }
            }
            catch (Exception)
            {

                Response.Redirect("SignIn.aspx");
            }
            
        }
    }
}