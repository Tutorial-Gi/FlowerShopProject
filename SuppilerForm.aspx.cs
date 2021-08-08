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
    public partial class SuppilerForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }       
        protected void btn_SupplierSubmit_Click1(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("InsertSupplierDetailIntoSupplier", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Name", txt_SupplierName.Text);
                    cmd.Parameters.AddWithValue("@SupplierAddress", txt_SupplierAddress.Text);
                    cmd.Parameters.AddWithValue("@City", txt_SupplierCity.Text);
                    cmd.Parameters.AddWithValue("@Pincode", txt_SupplierPincode.Text);                                 
                    cmd.Parameters.AddWithValue("@SupplierState", txt_SupplierState.Text);                  
                    cmd.Parameters.AddWithValue("@MobileNo", txt_SupplierNumber.Text);
                    cmd.ExecuteNonQuery();
                    lbl_Message.Text = "Data Inserted Successfully";
                    lbl_Message.Visible = true;
                    lbl_Error.Visible = false;
                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }
        }
        protected void btn_SupplierReset_Click(object sender, EventArgs e)
        {
            txt_SupplierName.Text = "";
            txt_SupplierNumber.Text = "";
            txt_SupplierAddress.Text = "";
            txt_SupplierCity.Text = "";
            txt_SupplierPincode.Text = "";
            txt_SupplierState.Text = "";
           
        }
    }
}