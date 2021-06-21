using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_Laitec.Templates
{
    public partial class Register : System.Web.UI.Page
    {
        string imgurl;
        DateTime MyDate = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (fliPicture.FileName != null)
                {
                    fliPicture.SaveAs(Server.MapPath("/Templates/ClientPhotos/" + fliPicture.FileName));
                    Image1.ImageUrl = "~/Templates/ClientPhotos/" + fliPicture.FileName;
                }
            }
            catch (Exception)
            {

                lblResult.Text = "لطفا از آپلود تصویر اطمینان حاصل کنید";
            }
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtName.Text.Trim() != "" && txtUserName.Text.Trim() != "" && txtLastName.Text.Trim() != "" && txtPassword.Text.Trim() != "" && fliPicture.FileName != "")
                {
                    if (fliPicture.FileName != null)
                    {
                        imgurl = "~/Templates/ClientPhotos/" + fliPicture.FileName;
                    }
                    string Connct = "Data Source=.;Initial Catalog=Asp.net_Laitec_Tamrin;Integrated Security=True";
                    SqlConnection cnn = new SqlConnection(Connct);
                    cnn.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = cnn;
                    cmd.CommandText = "Insert into tbl_User (FirstName,LastName,Username,Password,Image,RegistDate) values (@FirstName,@LastName,@Username,@Password,@Image,@Registdate)";
                    cmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
                    cmd.Parameters.AddWithValue("@FirstName", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Image", imgurl);
                    cmd.Parameters.AddWithValue("@Registdate", MyDate.ToString());
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                    cnn.Dispose();
                    lblResult.Text = "ثبت نام شما با موفقیت انجام شد";
                }
                else
                {
                    lblResult.Text = "لطفا مشخصات خواسته شده را تکمیل نمایید";
                }
            }
            catch (Exception)
            {

                lblResult.Text = "ارتباط با دیتابیس امکان پذیر نمی باشد";
            }
            
        }
    }
}