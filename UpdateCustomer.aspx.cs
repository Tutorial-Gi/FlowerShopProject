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
    public partial class UpdateCustomer : System.Web.UI.Page
    {
        string CustomerID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            CustomerID = Request.QueryString["CustomerId"].ToString();
            if (!IsPostBack)
            {
                BindTextBoxValue();
            }
        }

        private void BindTextBoxValue()
        {
            try
            {
                using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
                {
                    SqlConn.Open();
                    SqlCommand cmd = new SqlCommand("SelectCustomerIdForUpdate", SqlConn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@CustomerId", CustomerID);
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    txt_CustomerID.Text = dt.Rows[0]["CustomerId"].ToString();
                    txt_CustomerName.Text = dt.Rows[0]["Name"].ToString();
                    txt_CustomerAddress.Text = dt.Rows[0]["CustomerAddress"].ToString();
                    txt_CustomerCity.Text = dt.Rows[0]["City"].ToString();
                    txt_CustomerPincode.Text = dt.Rows[0]["Pincode"].ToString();
                    txt_CustomerState.Text = dt.Rows[0]["CustomerState"].ToString();
                    txt_CustomerNumber.Text = dt.Rows[0]["MobileNo"].ToString();                   


                }
            }
            catch (Exception ex)
            {
                lbl_Error.Text = ex.Message;
            }

        }

        protected void btn_CustomerUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["Primary"].ConnectionString))
            {

                SqlConn.Open();
                SqlCommand cmd = new SqlCommand("UpdateCustomerDataFromCustomer", SqlConn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CustomerId", txt_CustomerID.Text);
                cmd.Parameters.AddWithValue("@Name",  txt_CustomerName.Text);
                cmd.Parameters.AddWithValue("@CustomerAddress", txt_CustomerAddress.Text);
                cmd.Parameters.AddWithValue("@City", txt_CustomerCity.Text);
                cmd.Parameters.AddWithValue("@Pincode", txt_CustomerPincode.Text);
                cmd.Parameters.AddWithValue("@CustomerState", txt_CustomerState.Text);
                cmd.Parameters.AddWithValue("@MobileNo",txt_CustomerNumber.Text);                
                cmd.ExecuteNonQuery();
                Response.Redirect("CustomerDetails.aspx");
            }
        }
    }
}