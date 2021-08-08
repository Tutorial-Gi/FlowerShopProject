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
    public partial class PurchasePayment : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSupplierName();
            }
        }
        private void BindSupplierName()
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlDataAdapter da = new SqlDataAdapter("SelectSupplierIDSupplierNameFromSupplier", SqlConn);
                    da.SelectCommand.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    ddl_SupplierName.DataTextField = "Name";
                    ddl_SupplierName.DataValueField = "SupplierId";
                    ddl_SupplierName.DataSource = dt;
                    ddl_SupplierName.DataBind();
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }

        protected void ddl_SupplierName_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("SelectAllRemainingPaymentOfSupplier",SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@SupplierId", int.Parse(ddl_SupplierName.SelectedValue));
                    SqlDataReader dr = cmd.ExecuteReader();
                    gv_PurchasePayment.DataSource = dr;
                    gv_PurchasePayment.DataBind();
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }

        protected void gv_PurchasePayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gv_PurchasePayment.SelectedRow;
            txt_BillId.Text = row.Cells[1].Text;           
            txt_BillNo.Text = row.Cells[2].Text;           
            txt_Amount.Text = row.Cells[5].Text;           
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("InsertPaymentDetailIntoPurchasePayment", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PaymentDate", txt_PaymentDate.Text);
                    cmd.Parameters.AddWithValue("@BillId", txt_BillId.Text);
                    cmd.Parameters.AddWithValue("@SupplierId", ddl_SupplierName.SelectedValue);
                    cmd.Parameters.AddWithValue("@PaymentType", ddl_PaymentType.SelectedValue);
                    cmd.Parameters.AddWithValue("@TransactionNo", txt_TransactionNo.Text);
                    cmd.Parameters.AddWithValue("@Amount", txt_Payment.Text);
                    cmd.ExecuteNonQuery();
                    lbl_Message.Text = "Payment Success.";
                    lbl_Message.Visible = true;
                    lbl_Error.Visible = false;

                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
    }
}
