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
    public partial class EditUser : System.Web.UI.Page
    {
        DateTime MyDate = DateTime.Now;
        SignIn sn = new SignIn();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (sn.Session["UserName"].ToString() == null)
                {
                    Response.Redirect("SignIn.aspx");
                }
                else
                {
                    if (!IsPostBack)
                    {
                        try
                        {
                            int userid = int.Parse(Request.QueryString["UserId"].ToString());
                            string cs = "Data Source=.;Integrated Security=True;Initial catalog=Asp.net_Laitec_Tamrin";
                            SqlConnection cnn = new SqlConnection(cs);
                            SqlDataReader dr;
                            cnn.Open();
                            SqlCommand cmd = new SqlCommand();
                            cmd.Connection = cnn;
                            cmd.CommandText = "select * from [tbl_User] where UserId=@UserId";
                            cmd.Parameters.AddWithValue("@UserId", userid);
                            dr = cmd.ExecuteReader();
                            if (dr.Read() == true)
                            {
                                txtName.Text = dr["FirstName"].ToString();
                                txtFamily.Text = dr["LastName"].ToString();
                                txtUsername.Text = dr["Username"].ToString();
                                txtPassword.Text = dr["Password"].ToString();
                            }
                            else
                            {
                                Response.Redirect("SearchUsers.aspx");
                            }
                            cnn.Dispose();
                            cnn.Close();
                        }
                        catch (Exception)
                        {
                            Response.Redirect("SearchUsers.aspx");
                        }
                    }
                }
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int userid = int.Parse(Request.QueryString["UserId"].ToString());
                string cs = "Data Source=.;Integrated Security=True;Initial catalog=Asp.net_Laitec_Tamrin";
                SqlConnection cnn = new SqlConnection(cs);
                SqlDataReader dr;
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = "UpdateUsers";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserId", userid);
                cmd.Parameters.AddWithValue("@Firstname", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtFamily.Text.Trim());
                cmd.Parameters.AddWithValue("@UserName", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@PassWord", txtPassword.Text.Trim());
                cmd.ExecuteNonQuery();
                cnn.Dispose();
                cnn.Close();
            }
            catch (Exception)
            {

                Response.Redirect("SearchUsers.aspx");
            }
        }
    }
}