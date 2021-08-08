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
    public partial class SaleBillForm : System.Web.UI.Page
    {
        string BillId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            BillId = Request.QueryString["BillId"].ToString();
            if (!IsPostBack)
            {
                BindValue();
                BindGridView();
            }
        }
        private void BindValue()
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("SelectBillIdForSaleBill", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BillId", BillId);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    txt_BillId.Text = dt.Rows[0]["BillId"].ToString();
                    txt_BillNo.Text = dt.Rows[0]["BillNo"].ToString();
                    txt_BillMode.Text = dt.Rows[0]["BillMode"].ToString();
                    txt_BillDate.Text = dt.Rows[0]["BillDate"].ToString();
                    txt_Name.Text = dt.Rows[0]["CustomerId"].ToString();
                    txt_BillAmount.Text = dt.Rows[0]["BillAmount"].ToString();
                    txt_RoundUp.Text = dt.Rows[0]["RoundupAmount"].ToString();
                    txt_FinalAmount.Text = dt.Rows[0]["FinalAmount"].ToString();
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
        private void BindGridView()
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {

                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("SelectDetailsFromSaleBillDetail", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BillId", BillId);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gv_SaleBill.DataSource = dt;
                    gv_SaleBill.DataBind();
                    gv_SaleBill.DataSourceID = null;
                }
            }

            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }

        }

        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("SaleBillReport.aspx");
        }
    }
}