using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Project_Laitec.UserControl
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Trim() == "" || txtPassword.Text.Trim() == "")
            {
                lblResult.Text = "نام کاربری یا رمز عبور خود را وارد کنید";
            }
            else
            {
                string Connct = "Data Source=.;Initial Catalog=Asp.net_Laitec_Tamrin;Integrated Security=True";
                SqlConnection cnn = new SqlConnection(Connct);
                SqlDataReader dr;
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = "select * from tbl_User where Username=@User and Password=@Pass";
                cmd.Parameters.AddWithValue("@User", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@Pass", txtPassword.Text.Trim());
                dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    lblResult.Text = "خوش آمدید";
                }
                else
                {
                    lblResult.Text = "نام کاربری یا رمز عبور اشتباه است";
                }
                cnn.Close();
                cnn.Dispose();
            }
        }
    }
}