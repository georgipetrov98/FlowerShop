using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace FlowerShopFinal_v._02
{
    public class BundleConfig
    {
        // For more information on Bundling, visit https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/Scripts/WebForms/WebForms.js",
                            "~/Scripts/WebForms/WebUIValidation.js",
                            "~/Scripts/WebForms/MenuStandards.js",
                            "~/Scripts/WebForms/Focus.js",
                            "~/Scripts/WebForms/GridView.js",
                            "~/Scripts/WebForms/DetailsView.js",
                            "~/Scripts/WebForms/TreeView.js",
                            "~/Scripts/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/Scripts/js").Include(
                                  "~/Scripts/bootstrap.js",
                                  "~/Scripts/own-js/vendor/jquery-1.11.3.min.js",
                                  "~/Scripts/own-js/jquery.meanmenu.js",
                                  "~/Scripts/own-js/jquery.easing.1.3.min.js",
                                  "~/Scripts/own-js/jquery.knob.js",
                                  "~/Scripts/own-js/jquery.fancybox.pack.js",
                                  "~/Scripts/own-js/price-slider.js",
                                  "~/Scripts/own-js/jquery.nivo.slider.pack.js",
                                  "~/Scripts/own-js/wow.js",
                                  "~/Scripts/own-js/nivo-plugin.js",
                                  "~/Scripts/own-js/jquery.scrollUp.js",
                                  "~/Scripts/own-js/owl.carousel.min.js",
                                  "~/Scripts/own-js/plugins.js",
                                  "~/Scripts/own-js/main.js"));

        }
    }
}

