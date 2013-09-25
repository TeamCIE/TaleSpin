using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tailspin.Classes;
using System.Web.Security;

namespace Tailspin.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);

               if (!Page.IsPostBack)
            {
                if (Page.Request.UrlReferrer != null)
                {
                    
                   Session["LoginReferrer"] = Page.Request.UrlReferrer.ToString();
                }
            }
           
            if (User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut();
                Response.Redirect("~/");
            }

        }

        protected void LoginUser_LoggedIn(object sender, EventArgs e)
        {
            Tailspin.Classes.MyShoppingCart usersShoppingCart = new Tailspin.Classes.MyShoppingCart();
            String cartId = usersShoppingCart.GetShoppingCartId();
            usersShoppingCart.MigrateCart(cartId, LoginUser.UserName);
            string rawId = Request.QueryString["ReturnUrl"];

            if(Session["LoginReferrer"] != null)
            {
               // Response.Redirect(Session["LoginReferrer"].ToString());
                Response.Redirect(rawId);
            }

            Session["UserName"] = LoginUser.UserName;
        }

        }
    }
