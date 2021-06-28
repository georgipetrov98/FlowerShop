using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShopFinal_v._02.Customer
{
    public partial class Quotations : Page
    {
        //establishing connection to the sql server
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            //used to get the current users id
            Session["UserID"] = Context.User.Identity.GetUserId();
        }

        //on button click update the gridviews status field
        protected void Button2_Click(object sender, EventArgs e)
        {
            String a;
            a = ConfigurationManager.ConnectionStrings["ConnectionStringFlowers"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();

            SqlCommand cmd = new SqlCommand("UPDATE [QUOTATIONS] SET [QUOTATIONS].quotation_status = '" + ddlStatus.Text + "' WHERE quotation_id = " + ddlQuotationID.SelectedValue, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            /*lblProductName.Text = dr.GetString(0);*/
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
            con.Close();
            con.Dispose();


        }
        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        //on button show the quotations of the user
        protected void Button1_Click(object sender, EventArgs e)
        {
            string con = ConfigurationManager.ConnectionStrings["ConnectionStringFlowers"].ConnectionString;
            string quotation_id = ((sender as Button).CommandArgument);
            SqlConnection Con = new SqlConnection(con);
            Con.Open();
            DataTable tab = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM [FlowersQuotations], [QUOTATIONS] where [FlowersQuotations].quotation_id = " + quotation_id + " AND [Quotations].quotation_id = " + quotation_id, Con);
            da.Fill(tab);
            GridView1.DataSource = tab;
            GridView1.DataBind();
            Con.Close();
            Con.Dispose();
        }
    }
}