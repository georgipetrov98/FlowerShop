using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShopFinal_v._02.Admin
{
    public partial class ManageQuotations : Page
    {
        /*SqlCommand cmd = new SqlCommand();
SqlConnection con = new SqlConnection();
protected void Page_Load(object sender, EventArgs e)
{
   for (var i = 0; i < GridView1.Rows.Count; i++)
   {
       Label lblProductName = GridView1.Rows[i].FindControl("lblProductName") as Label;

       if (lblProductName != null)
       {
           String a;
           a = ConfigurationManager.ConnectionStrings["ConnectionStringFlowers"].ToString();
           SqlConnection con = new SqlConnection(a);

           string query = "SELECT flower_name FROM [Flowers], [FlowersQuotations] WHERE [FlowersQuotations].flower_id = [Flowers].flower_id";

           con.Open();
           SqlCommand cmd = new SqlCommand(query, con);
           SqlDataReader dr = cmd.ExecuteReader();

           *//*lblProductName.Text = dr.GetString(0);*//*

           con.Close();
           con.Dispose();
           Page.Response.Redirect(Page.Request.Url.ToString(), true);
       }
   }
}*/
    }
}