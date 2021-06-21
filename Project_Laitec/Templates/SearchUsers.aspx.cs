using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Laitec.Templates
{
    public partial class SearchUsers : System.Web.UI.Page
    {
        SignIn sn = new SignIn();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (sn.Session["UserName"] == null)
                {
                    
                }
            }
            catch (Exception)
            {

                Response.Redirect("SignIn.aspx");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}