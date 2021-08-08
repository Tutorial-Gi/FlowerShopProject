using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Flower_Shop
{
    public partial class ProductForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ProductSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("InsertProductDetailIntoProduct", SqlConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Name", txt_ProductName.Text);
                    cmd.Parameters.AddWithValue("@Category ",rb_Category.SelectedValue);
                    cmd.Parameters.AddWithValue("@Color", txt_Color.Text);
                    cmd.Parameters.AddWithValue("@Occassion", ddl_Occasion.SelectedValue);
                    cmd.Parameters.AddWithValue("@Material",ddl_Material.SelectedValue);                                    
                    cmd.Parameters.AddWithValue("@SaleRate", txt_Rate.Text);
                    cmd.ExecuteNonQuery();
                    lbl_Message.Text = "Data Inserted Successfully";
                    lbl_Message.Visible = true;
                    lbl_Error.Visible = false;
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
        protected void btn_ResetProduct_Click(object sender, EventArgs e)
        {
            txt_ProductName.Text="";
            rb_Category.SelectedValue = "";
            txt_Color.Text = "";
            ddl_Occasion.SelectedIndex = 0;
            ddl_Material.SelectedIndex = 0;           
            txt_Rate.Text = "";
        }

       
    }
}