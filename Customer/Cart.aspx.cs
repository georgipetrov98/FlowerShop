using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace FlowerShopFinal_v._02
{
    public partial class Cart : Page
    {
        //on page load we get the current user id
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = Context.User.Identity.GetUserId();
        }
        //on clicking the delete button, we delete the current user's selected flowers
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string flowerID = ((sender as Button).CommandArgument);
            String constr = ConfigurationManager.ConnectionStrings["ConnectionStringFlowers"].ConnectionString;
            using (var conn = new SqlConnection(constr))
            using (var cmd2 = new SqlCommand("SELECT flower_quantity FROM Flowers WHERE flower_id = '" + flowerID + "'", conn))
            {
                conn.Open();
                int flowerStock = Int32.Parse(cmd2.ExecuteScalar().ToString());

                SqlCommand cmd = new SqlCommand("DELETE TOP (1) FlowersCarts FROM FlowersCarts INNER JOIN Carts ON Carts.cart_id = FlowersCarts.cart_id INNER JOIN Users ON Users.user_id = Carts.user_id WHERE Users.user_id = '" + Session["UserID"] + "' AND FlowersCarts.flower_id='" + flowerID + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                dr.Close();

                SqlCommand cmdUpdateQuantity = new SqlCommand("Update Flowers SET flower_quantity= " + (flowerStock + 1) + " WHERE flower_id='" + flowerID + "'", conn);
                SqlDataReader dr2 = cmdUpdateQuantity.ExecuteReader();
                dr2.Read();
                dr2.Close();
            }
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}