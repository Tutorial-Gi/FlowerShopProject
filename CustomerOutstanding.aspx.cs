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
    public partial class CustomerOutstanding : System.Web.UI.Page
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
                    SqlDataAdapter sda = new SqlDataAdapter("SelectAllCustomerOutstanding", SqlConn);
                    sda.SelectCommand.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gv_Outstanding.DataSource = dt;
                    gv_Outstanding.DataSourceID = null;
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
        protected void gv_Outstanding_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_Outstanding.PageIndex = e.NewPageIndex;
            BindGridView();
            gv_Outstanding.DataBind();
        }
    }
}