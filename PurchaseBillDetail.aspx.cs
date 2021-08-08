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
    public partial class PurchaseBillDetail : System.Web.UI.Page
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
                    SqlDataAdapter sda = new SqlDataAdapter("SelectPurchaseBillDetailsFromPurchaseBill", SqlConn);
                    sda.SelectCommand.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gv_PurchaseBillDetail.DataSource = dt;
                    gv_PurchaseBillDetail.DataSourceID = null;
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
       
        protected void gv_PurchaseBillDetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_PurchaseBillDetail.PageIndex = e.NewPageIndex;
            BindGridView();
            gv_PurchaseBillDetail.DataBind();
        }
    }
}