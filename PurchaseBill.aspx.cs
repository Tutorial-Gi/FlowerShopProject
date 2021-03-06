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
    public partial class PurchaseBill : System.Web.UI.Page
    {
        private bool _IsSupress;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                BindProductName();
                BindSupplierName();
                BindGridView();
            }         
        }
        private void BindGridView()
        {
            DataTable oDT = new DataTable();
            oDT.Columns.Add("ProductId");
            oDT.Columns.Add("ProductName");
            oDT.Columns.Add("Quantity");
            oDT.Columns.Add("Rate");
            oDT.Columns.Add("Discount");
            oDT.Columns.Add("Total");
            gv_PurchaseBill.DataSource = oDT;
            gv_PurchaseBill.DataBind();
            ViewState["detail"] = oDT;

        }
        private void BindProductName()
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlDataAdapter sda = new SqlDataAdapter("SelectProductIdProductName", SqlConn);
                    sda.SelectCommand.CommandType =CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    ddl_ProductName.DataTextField = "Name";
                    ddl_ProductName.DataValueField = "ProductId";
                    ddl_ProductName.DataSource = dt;                  
                    ddl_ProductName.DataBind();                   
                 
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
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
        protected void btn_PurchaseProductAdd_Click1(object sender, EventArgs e)
        {
            DataTable oDT = ViewState["detail"] as DataTable;
            DataRow oDR = oDT.NewRow();
            oDR["ProductId"] = ddl_ProductName.SelectedValue;
            oDR["ProductName"] = ddl_ProductName.SelectedItem.Text;
            oDR["Quantity"] = txt_Quantity.Text;
            oDR["Rate"] = txt_Rate.Text;
            oDR["Discount"] = txt_Discount.Text;
            oDR["Total"] = txt_Total.Text;
            oDT.Rows.Add(oDR);
            gv_PurchaseBill.DataSource = oDT;
            gv_PurchaseBill.DataBind();
            ViewState["detail"] = oDT;
           
            CalculationFinalAmount(txt_Total.Text.ToDecimal());
            ClearDetailControl();
        }
        private void CalculationFinalAmount(decimal total)
        {
           
            decimal billamt = txt_BillAmount.Text.ToDecimal();
            billamt = billamt + total;
            txt_BillAmount.Text = billamt.ToString();
            decimal final = Math.Round(billamt, 0);
            txt_RoundUp.Text = (final - billamt).ToString();
            txt_FinalAmount.Text = final.ToString();
        }
       
        private void CalculationTotal()
        {
            if (!_IsSupress)
            {
                int qty = txt_Quantity.Text.ToInt();
                decimal rate = txt_Rate.Text.ToDecimal();
                decimal total = qty * rate;
                decimal dis = txt_Discount.Text.ToDecimal();
                decimal discount = total * dis / 100;
                decimal totalAmount = total - discount;
                txt_Total.Text = totalAmount.ToString();
            }
        }
        protected void Quantity_TextChanged(object sender, EventArgs e)
        {

            CalculationTotal();
            txt_Rate.Focus();

        }
        protected void txt_Rate_TextChanged(object sender, EventArgs e)
        {
            CalculationTotal();
            txt_Discount.Focus();
        }

        protected void txt_Discount_TextChanged(object sender, EventArgs e)
        {
            CalculationTotal();
            txt_Total.Focus();
        }
        private void ClearDetailControl()
        {
            _IsSupress = true;
            ddl_ProductName.SelectedIndex = 0;
            txt_Rate.Text = "";
            txt_Quantity.Text = "";
            txt_Discount.Text = "";
            txt_Total.Text = "";
            _IsSupress = false;
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("InsertIntoPurchaseBill", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BillNo",txt_PurchaseBillNo.Text);
                    cmd.Parameters.AddWithValue("@BillDate", txt_PurchaseBillDate.Text);
                    cmd.Parameters.AddWithValue("@BillMode",ddl_BillMode.SelectedValue);
                    cmd.Parameters.AddWithValue("@SupplierId", ddl_SupplierName.SelectedValue);
                    cmd.Parameters.AddWithValue("@BillAmount", txt_BillAmount.Text);
                    cmd.Parameters.AddWithValue("@RoundupAmount", txt_RoundUp.Text);
                    cmd.Parameters.AddWithValue("@FinalAmount",txt_FinalAmount.Text);
                    cmd.Parameters.AddWithValue("@DetailXML",(ViewState["detail"] as DataTable).ToXML());
                    cmd.ExecuteNonQuery();
                    lbl_Message.Text = "Bill Inserted Successfully";
                    lbl_Message.Visible = true;
                    lbl_Error.Visible = false;
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
                lbl_Error.Visible = false;
                lbl_Message.Visible = true;
            }
        }
        protected void gv_PurchaseBill_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
                DataTable oDT = ViewState["detail"] as DataTable;
                DataRow oDR = oDT.Rows[e.RowIndex];
                decimal total = oDR["Total"].ToDecimal() * -1;
                CalculationFinalAmount(total);
                oDR.Delete();               
                gv_PurchaseBill.DataSource = oDT;
                gv_PurchaseBill.DataBind();     
        }
        protected void gv_PurchaseBill_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv_PurchaseBill.PageIndex = e.NewPageIndex;
            BindGridView();
            gv_PurchaseBill.DataBind();
        }
    }
}