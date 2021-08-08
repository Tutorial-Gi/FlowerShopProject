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
    public partial class PurchaseBillForm : System.Web.UI.Page
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
                    SqlCommand cmd = new SqlCommand("SelectBillIdForPurchaseBill", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BillId",BillId);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    txt_BillId.Text = dt.Rows[0]["BillId"].ToString();
                    txt_PurchaseBillNo.Text = dt.Rows[0]["BillNo"].ToString();
                    txt_BillMode.Text = dt.Rows[0]["BillMode"].ToString();
                    txt_PurchaseBillDate.Text = dt.Rows[0]["BillDate"].ToString();
                    txt_SupplierName.Text = dt.Rows[0]["SupplierId"].ToString();
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
                    SqlCommand cmd = new SqlCommand("SelectDetailsFromPurchaseBillDetails", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BillId", BillId);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();                  
                    sda.Fill(dt);
                    gv_PurchaseBill.DataSource = dt;
                    gv_PurchaseBill.DataBind();
                    gv_PurchaseBill.DataSourceID = null;
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
        protected void btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("PurchaseBillReport.aspx");
        }
    }       
}
