using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TDAKyThuatSource.Startup))]
namespace TDAKyThuatSource
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
