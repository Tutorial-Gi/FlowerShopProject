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
    public partial class SuppilerDetails : System.Web.UI.Page
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
                    SqlDataAdapter sda = new SqlDataAdapter("SelectSupplierDetailsFromSupplier", SqlConn);
                    sda.SelectCommand.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gv_SupplierDetails.DataSource = dt;
                    gv_SupplierDetails.DataSourceID = null;                  
                }
            }
            catch (Exception ex)
            {
                lbl_labelSuppilerDetails.Text = ex.Message;
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="EditButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gv_SupplierDetails.Rows[index];
                Response.Redirect("UpdateSuppiler.aspx?SupplierId=" + row.Cells[0].Text);
            }
            if (e.CommandName == "DeleteButton")
            {
                try
                {
                    using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                    {

                        SqlConn.Open();
                        int index = Convert.ToInt32(e.CommandArgument);
                        GridViewRow row = gv_SupplierDetails.Rows[index];
                        int SupplierId = Convert.ToInt32(row.Cells[0].Text);
                        SqlCommand cmd = new SqlCommand("DeleteFromSupplier", SqlConn);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@SupplierId",SupplierId);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("SupplierDetails.aspx");                        
                    }
                }
                catch (Exception ex)
                {
                    lbl_labelSuppilerDetails.Text = ex.Message;
                }
            }
        }
        protected void gv_SupplierDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_SupplierDetails.PageIndex = e.NewPageIndex;
            BindGridView();
            gv_SupplierDetails.DataBind();
           
        }
    }
}