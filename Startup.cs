using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FlowerShopFinal_v._02.Startup))]
namespace FlowerShopFinal_v._02
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
