using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flower_Shop
{
    public partial class PurchaseBillReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    Label2.Text = "";
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("SelectDataFromDateToDateFromPurchaseBill", SqlConn);
                    cmd.Parameters.AddWithValue("@FromDate", txt_From.Text);
                    cmd.Parameters.AddWithValue("@ToDate", txt_To.Text);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {

                        gv_PurchaseBillDetail.DataSource = dt;
                        gv_PurchaseBillDetail.DataSourceID = null;
                        gv_PurchaseBillDetail.DataBind();
                      
                    }
                    else
                        Label2.Text = "Record Not found ";                   
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
        protected void gv_PurchaseBillDetail_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        protected void gv_PurchaseBillDetail_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectButton")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gv_PurchaseBillDetail.Rows[index];
                Response.Redirect("PurchaseBillForm.aspx?BillId=" + row.Cells[1].Text);
            }
        }      
    }

}
   
           
