using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShopFinal_v._02
{
    public partial class ErrorPage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Session["SearchValue"] = txtSearch.Text;
            Response.Redirect("~/Customer/ShopSearch.aspx");
        }
    }
}