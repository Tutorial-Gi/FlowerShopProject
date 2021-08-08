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
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
              
            }
        }
        private void BindGridView()
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {

                    SqlConn.Open();                  
                    SqlDataAdapter sda = new SqlDataAdapter("SelectProductDetailsFromProduct", SqlConn);
                    sda.SelectCommand.CommandType = CommandType.StoredProcedure;                    
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gv_ProductDetails.DataSource = dt;
                    gv_ProductDetails.DataSourceID = null;
                }
            }
            catch (Exception ex)
            {
                lbl_ProductDetails.Text = ex.Message;
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gv_ProductDetails.Rows[index];
                Response.Redirect("UpdateProduct.aspx?ProductId=" + row.Cells[0].Text);
            }
            if (e.CommandName == "DeleteButton")
            {
                try
                {
                    using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                    {

                        SqlConn.Open();
                        int index = Convert.ToInt32(e.CommandArgument);
                        GridViewRow row = gv_ProductDetails.Rows[index];
                        int ProductID = Convert.ToInt32(row.Cells[0].Text);
                        SqlCommand cmd = new SqlCommand("DeleteFromProduct", SqlConn);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ProductId",ProductID);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("ProductDetails.aspx");

                    }
                }
                catch (Exception ex)
                {
                    lbl_ProductDetails.Text = ex.Message;
                }
            }
        }

        protected void gv_ProductDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_ProductDetails.PageIndex = e.NewPageIndex;
            BindGridView();
            gv_ProductDetails.DataBind();
        }
    }
}