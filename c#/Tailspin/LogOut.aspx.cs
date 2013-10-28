using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using Microsoft.IdentityModel.Web;
using System.IdentityModel.Services;
using System.IdentityModel.Services.Configuration;
using System.Web.Security;
using System.Configuration;

namespace Tailspin
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Load Identity Configuration
            FederationConfiguration config = FederatedAuthentication.FederationConfiguration;

            // Get wtrealm from WsFederationConfiguation Section
            string wtrealm = config.WsFederationConfiguration.Realm;
            string wreply;

            // Construct wreply value from wtrealm
            if (wtrealm.Last().Equals('/'))
            {
                wreply = wtrealm + "default.aspx";
            }
            else
            {
                wreply = wtrealm + "/default.aspx";
            }

            // Read the ACS Ws-Federation endpoint from web.Config
            string wsFederationEndpoint = ConfigurationManager.AppSettings["ida:Issuer"];

            SignOutRequestMessage signoutRequestMessage = new SignOutRequestMessage(new Uri(wsFederationEndpoint));

            signoutRequestMessage.Parameters.Add("wreply", wreply);
            signoutRequestMessage.Parameters.Add("wtrealm", wtrealm);

            FederatedAuthentication.SessionAuthenticationModule.SignOut();

            Response.Redirect(signoutRequestMessage.WriteQueryString());   
            
        }
    }
}