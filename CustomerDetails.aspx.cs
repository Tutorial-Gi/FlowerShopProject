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
    public partial class CustomerDetails : System.Web.UI.Page
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
                    SqlDataAdapter sda = new SqlDataAdapter("SelectCustomerDetailsFromCustomer", SqlConn);
                    sda.SelectCommand.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gv_CustomerDetails.DataSource = dt;
                    gv_CustomerDetails.DataSourceID = null;
                }
            }

            catch (Exception ex)
            {
                lbl_CustomerDetails.Text = ex.Message;
            }

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gv_CustomerDetails.Rows[index];
                Response.Redirect("UpdateCustomer.aspx?CustomerId=" + row.Cells[0].Text);
            }
            if (e.CommandName == "DeleteButton")
            {
                try
                {
                    using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                    {

                        SqlConn.Open();
                        int index = Convert.ToInt32(e.CommandArgument);
                        GridViewRow row = gv_CustomerDetails.Rows[index];
                        int CustomerID = Convert.ToInt32(row.Cells[0].Text);
                        SqlCommand cmd = new SqlCommand("DeleteFromCustomer",SqlConn);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("CustomerId",CustomerID);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("CustomerDetails.aspx");

                    }
                }
                catch (Exception ex)
                {
                    lbl_CustomerDetails.Text = ex.Message;
                }
            }
        }
        protected void gv_CustomerDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_CustomerDetails.PageIndex = e.NewPageIndex;
            BindGridView();
            gv_CustomerDetails.DataBind();
        }
    }
}