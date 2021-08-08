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
    public partial class UpdateProduct : System.Web.UI.Page
    {
        string ProductID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductID = Request.QueryString["ProductId"].ToString();
            if (!IsPostBack)
            {
                BindTextBoxValue();
            }
        }
        private void BindTextBoxValue()
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {

                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("SelectProductIdForUpdate", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProductId", ProductID);
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    txt_ProductID.Text = dt.Rows[0]["ProductId"].ToString();
                    txt_ProductName.Text = dt.Rows[0]["Name"].ToString();
                    rb_Category.Text = dt.Rows[0]["Category"].ToString();
                    ddl_Occasion.Text = dt.Rows[0]["Occassion"].ToString();
                    txt_Color.Text = dt.Rows[0]["Color"].ToString();
                    txt_Material.Text = dt.Rows[0]["Material"].ToString();                  
                    txt_Rate.Text = dt.Rows[0]["SaleRate"].ToString();
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
        protected void btn_ProductUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
            {

                SqlConn.Open();
                SqlCommand cmd = new SqlCommand("UpdateProductData", SqlConn);
                cmd.CommandType = CommandType.StoredProcedure;             
                cmd.Parameters.AddWithValue("@ProductId", txt_ProductID.Text);
                cmd.Parameters.AddWithValue("@Name", txt_ProductName.Text);
                cmd.Parameters.AddWithValue("@Category", rb_Category.Text);
                cmd.Parameters.AddWithValue("@Occassion",ddl_Occasion.Text);
                cmd.Parameters.AddWithValue("@Color", txt_Color.Text);
                cmd.Parameters.AddWithValue("@Material",  txt_Material.Text);             
                cmd.Parameters.AddWithValue("@SaleRate", txt_Rate.Text);
                cmd.ExecuteNonQuery();
                Response.Redirect("ProductDetails.aspx");
            }
        }
    }
}