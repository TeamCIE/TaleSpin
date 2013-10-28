using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Security.Permissions;
using System.Threading;
using Microsoft.IdentityModel.Claims;
using System.Security;


namespace Tailspin
{
    public partial class _Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(User.Identity.Name.ToString());
            //Response.Write(Thread.CurrentPrincipal.Identity.Name.ToString()); 
        }
    }
}
