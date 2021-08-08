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
    public partial class SaleBillDetails : System.Web.UI.Page
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
                    SqlDataAdapter sda = new SqlDataAdapter("SelectSaleBillDetailsFromSaleBill", SqlConn);
                    sda.SelectCommand.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gv_SaleBillDetail.DataSource = dt;
                    gv_SaleBillDetail.DataSourceID = null;
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }

        protected void gv_SaleBillDetail_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_SaleBillDetail.PageIndex = e.NewPageIndex;
            BindGridView();
            gv_SaleBillDetail.DataBind();
        }
    }
}