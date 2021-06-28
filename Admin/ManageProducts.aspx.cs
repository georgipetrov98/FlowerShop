using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlowerShopFinal_v._02
{
    public partial class ManageProducts : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Button used for browsing your own computer in order to upload a picture into the database.
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            FileUpload FileUpload1 = (FileUpload)(FormView3.FindControl("FileUpload1"));
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/Content/Img/product/" + FileUpload1.FileName.ToString());

            TextBox flower_image_urlTextBox = (TextBox)(FormView3.FindControl("flower_image_urlTextBox"));
            flower_image_urlTextBox.Text = "~/Content/Img/product/" + FileUpload1.FileName.ToString();
        }
    }
}