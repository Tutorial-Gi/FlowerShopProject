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
    public partial class UpdateSuppiler : System.Web.UI.Page
    {
        string SupplierId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SupplierId = Request.QueryString["SupplierId"].ToString();
            if(!IsPostBack)
            {
                BindValue();
            }    
        }
        private void BindValue()
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {               
                    SqlConn.Open();                   
                    SqlCommand cmd = new SqlCommand("SelectSupplierIdForUpdate", SqlConn);   
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@SupplierId", SupplierId);
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    txt_SupplierID.Text = dt.Rows[0]["SupplierId"].ToString();
                    txt_SupplierName.Text = dt.Rows[0]["Name"].ToString();
                    txt_SupplierAddress.Text = dt.Rows[0]["SupplierAddress"].ToString();
                    txt_SupplierCity.Text = dt.Rows[0]["City"].ToString();
                    txt_SupplierPincode.Text = dt.Rows[0]["Pincode"].ToString();
                    txt_SupplierState.Text = dt.Rows[0]["SupplierState"].ToString();                   
                    txt_SupplierNumber.Text = dt.Rows[0]["MobileNo"].ToString();
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
        protected void btn_SupplierUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {

                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("UpdateSupplierData", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@SupplierId", txt_SupplierID.Text);
                    cmd.Parameters.AddWithValue("@Name", txt_SupplierName.Text);
                    cmd.Parameters.AddWithValue("@SupplierAddress", txt_SupplierAddress.Text);
                    cmd.Parameters.AddWithValue("@City", txt_SupplierCity.Text);
                    cmd.Parameters.AddWithValue("@Pincode", txt_SupplierPincode.Text);
                    cmd.Parameters.AddWithValue("@SupplierState", txt_SupplierState.Text);
                    cmd.Parameters.AddWithValue("@MobileNo", txt_SupplierNumber.Text);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("SupplierDetails.aspx");
                }
            }
            catch(Exception ex)
            {
                lbl_Error.Text = ex.Message;

            }

            
        }
    }
}