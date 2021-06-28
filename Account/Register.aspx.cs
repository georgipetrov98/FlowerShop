using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using FlowerShopFinal_v._02.Models;
using System.Data.SqlClient;

namespace FlowerShopFinal_v._02.Account
{
    public partial class Register : Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\flowerdbfinal.mdf;Integrated Security=True";

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "Customer");
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Users (user_id, user_email) VALUES  ('"+user.Id+ "', '"+user.Email+"')", connection);
                    SqlDataReader dr = cmd.ExecuteReader();
                    dr.Read();
                    dr.Close();
                    SqlCommand cartCMD = new SqlCommand("INSERT INTO Carts (cart_total, user_id) VALUES  (0, '"+user.Id+"')", connection);
                    SqlDataReader cartDR = cartCMD.ExecuteReader();
                    cartDR.Read();
                    cartDR.Close();
                    SqlCommand favouriteCMD = new SqlCommand("INSERT INTO Favourites (user_id) VALUES  ('" + user.Id + "')", connection);
                    SqlDataReader favouriteDR = favouriteCMD.ExecuteReader();
                    favouriteDR.Read();
                    favouriteDR.Close();
                    connection.Close();
                }
                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}