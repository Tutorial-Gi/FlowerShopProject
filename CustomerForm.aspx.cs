using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Flower_Shop
{
    public partial class CustomerForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_CustomerSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("InsertCustomerDetailIntoCustomer", SqlConn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Name", txt_CustomerName.Text);
                    cmd.Parameters.AddWithValue("@CustomerAddress", txt_CustomerAddress.Text);
                    cmd.Parameters.AddWithValue("@City", txt_CustomerCity.Text);
                    cmd.Parameters.AddWithValue("@Pincode", txt_CustomerPincode.Text);
                    cmd.Parameters.AddWithValue("@CustomerState", txt_CustomerState.Text);
                    cmd.Parameters.AddWithValue("@MobileNo", txt_CustomerNumber.Text);                  
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

        protected void btn_CustomerReset_Click1(object sender, EventArgs e)
        {
            txt_CustomerName.Text = "";
            txt_CustomerAddress.Text = "";
            txt_CustomerNumber.Text = "";
            txt_CustomerCity.Text = "";
            txt_CustomerState.Text = "";
            txt_CustomerPincode.Text = "";
        }
    }
}