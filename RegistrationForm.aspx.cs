using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Flower_Shop
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("SelectUserCount", SqlConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count > 0)
                    {
                        Response.Redirect("LoginPage.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
        protected void btn_Register_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("InsertIntoUserLogin", SqlConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Name", txt_UName.Text);
                    cmd.Parameters.AddWithValue("@LoginName", txt_UserName.Text);
                    cmd.Parameters.AddWithValue("@UserPassword", txt_UserPassword.Text);
                    cmd.Parameters.AddWithValue("@MobileNo", txt_UserNumber.Text);
                    cmd.Parameters.AddWithValue("@Email", txt_UserEmail.Text);                    
                    cmd.ExecuteNonQuery();
                    Response.Redirect("LoginPage.aspx");                    
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
    }
}
