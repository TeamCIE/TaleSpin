using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure.Diagnostics;
using System.Diagnostics;
using Tailspin.Classes;


namespace Tailspin
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rawId = Request.QueryString["ProductID"];
            int productId;

            if (!String.IsNullOrEmpty(rawId) && Int32.TryParse(rawId, out productId))
            {

                Tailspin.Classes.MyShoppingCart usersShoppingCart = new Classes.MyShoppingCart();
                String cartId = usersShoppingCart.GetShoppingCartId();
                usersShoppingCart.AddItem(cartId, productId, 1);
            }
            else 
            {
                Debug.Fail("Error : We should never get to AddToCart.aspx without a ProductId.");

                throw new Exception("Error : It is illegal to load AddToCart.aspx without setting a ProductId");
            }

            Response.Redirect("MyShoppingCart.aspx");
        }



    }
}

