using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Microsoft.AspNet.Identity;

namespace FlowerShopFinal_v._02
{
    public partial class ShopSearch : Page
    {
        //if there's no search value, a label with the message 'Error' is displayed
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {

                    lblError.Visible = false;
                    this.BindListView();
                }
                catch { BindListViewDefault(); }
            }
        }
        //gets the session variable for the search value from another page and searches the database for that specific flower name
        private void BindListView()
        {
            string searchValue = Session["SearchValue"].ToString();
            string constr = ConfigurationManager.ConnectionStrings["ConnectionStringFlowers"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM [Flowers] WHERE flower_name LIKE '%" + searchValue + "%'";
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        ListView2.DataSource = dt;
                        ListView2.DataBind();
                    }
                }
            }
        }
        //thus is executed if there's no search value, displaying all the flowers
        private void BindListViewDefault()
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionStringFlowers"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM [Flowers]";
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        ListView2.DataSource = dt;
                        ListView2.DataBind();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        //Upon clicking the add-to-cart button, the id of the flower is taken and the cart items are updated based on it
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

        //Upon clicking the add-to-favourites button, the id of the flower is taken and the favourites' list is updated based on it
        protected void Button2_Click(object sender, EventArgs e)
        {
            string flowerID = ((sender as System.Web.UI.WebControls.Button).CommandArgument);
            String a;
            a = ConfigurationManager.ConnectionStrings["ConnectionStringFlowers"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            SqlCommand favouritecmd = new SqlCommand("INSERT INTO FlowersFavourites (flower_id, favourite_id) VALUES ('" + flowerID + "', (SELECT favourite_id FROM [Favourites] WHERE [Favourites].user_id='" + HttpContext.Current.User.Identity.GetUserId().ToString() + "'))", con);
            SqlDataReader favouritedr = favouritecmd.ExecuteReader();
            favouritedr.Read();
            con.Close();
            con.Dispose();
            Page.Response.Redirect(Page.Request.Url.ToString(), true);

        }
    }
}