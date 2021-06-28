using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShopFinal_v._02
{
    public partial class Favourites : Page
    {
        //on page load we get the current user's id.
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = Context.User.Identity.GetUserId();
        }

        // on delete button click we delete the current users flowers
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string flowerID = ((sender as Button).CommandArgument);
            String a;
            a = ConfigurationManager.ConnectionStrings["ConnectionStringFlowers"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FlowersFavourites FROM FlowersFavourites INNER JOIN Favourites ON Favourites.favourite_id = FlowersFavourites.favourite_id INNER JOIN Users ON Users.user_id = Favourites.user_id WHERE Users.user_id = '" + HttpContext.Current.User.Identity.GetUserId().ToString() + "' AND FlowersFavourites.flower_id='" + flowerID + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            con.Close();
            con.Dispose();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
        //on button click we add items to the current user's cart
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionStringFlowers"].ConnectionString;
            string flowerID = ((sender as System.Web.UI.WebControls.Button).CommandArgument);

            using (var conn = new SqlConnection(constr))
            using (var cmd2 = new SqlCommand("SELECT flower_quantity FROM Flowers WHERE flower_id = '" + flowerID + "'", conn))
            {
                conn.Open();
                int flowerStock = Int32.Parse(cmd2.ExecuteScalar().ToString());
                if (flowerStock > 0)
                {
                    lblTest.Visible = false;
                    SqlCommand cmd = new SqlCommand("INSERT INTO FlowersCarts (flower_id, cart_id) VALUES ('" + flowerID + "', (SELECT cart_id FROM [Carts] WHERE [Carts].user_id='" + HttpContext.Current.User.Identity.GetUserId().ToString() + "'))", conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    dr.Read();
                    dr.Close();

                    SqlCommand cmdUpdateQuantity = new SqlCommand("Update Flowers SET flower_quantity= " + (flowerStock - 1) + " WHERE flower_id='" + flowerID + "'", conn);
                    SqlDataReader dr2 = cmdUpdateQuantity.ExecuteReader();
                    dr2.Read();
                    dr2.Close();
                }
                else
                {
                    lblTest.Visible = true;
                }
            }
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}