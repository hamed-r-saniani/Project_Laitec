using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using Project_Laitec.Class;


namespace Project_Laitec.Templates
{
    public partial class RegistNews : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Date = ShamsiDate.GetDateTimeStringInPersian(DateTime.Now);
            string Connct = "Data Source=.;Initial Catalog=Asp.net_Laitec_Tamrin;Integrated Security=True";
            SqlConnection cnn = new SqlConnection(Connct);
            cnn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "InsertnewNews";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@NewsTitle", txtTitle.Text.Trim());
            cmd.Parameters.AddWithValue("@SmallText", txtSmallText.Text.Trim());
            cmd.Parameters.AddWithValue("@NewsText", txtNewsText.Text.Trim());
            cmd.Parameters.AddWithValue("@NewsDate", Date);
            cmd.ExecuteNonQuery();
            cnn.Close();
            cnn.Dispose();
            lblResult.Text = "ثبت با موفقیت انجام شد";
            txtTitle.Text = "";
            txtSmallText.Text = "";
            txtNewsText.Text = "";
            txtTitle.Focus();
        }
    }
}