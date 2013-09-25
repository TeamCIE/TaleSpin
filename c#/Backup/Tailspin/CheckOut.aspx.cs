using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tailspin.Data_Access;


namespace Tailspin
{
    public partial class CheckOut : System.Web.UI.Page
    {
        decimal _CartTotal = 0;
        
        //------------------------------------------------------------------------------------------------------------------------------------------+
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                if (_CartTotal <= 0)
                {
                    CheckOutHeader.InnerText = "Your Shopping Cart is Empty";
                    LabelCartHeader.Text = "";
                    CheckoutBtn.Visible = false;
                }
            }         
        }

        //------------------------------------------------------------------------------------------------------------------------------------------+
        protected void CheckoutBtn_Click(object sender, ImageClickEventArgs e)
        {
             Tailspin.Classes.MyShoppingCart usersShoppingCart = new  Tailspin.Classes.MyShoppingCart();
            if (usersShoppingCart.SubmitOrder(User.Identity.Name) == true)
            {
                CheckOutHeader.InnerText = "Thank You - Your Order is Complete.";
                Message.Visible = false;
                CheckoutBtn.Visible = false;
            }
            else
            {
                CheckOutHeader.InnerText = "Order Submission Failed - Please try again. ";
            }

        }

        //------------------------------------------------------------------------------------------------------------------------------------------+
        
        protected void MyList_RowDataBound(object sender, GridViewRowEventArgs e)
        {
if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Tailspin.Data_Access.ViewCart myCart = new Data_Access.ViewCart();
                myCart = (Tailspin.Data_Access.ViewCart)e.Row.DataItem;
                _CartTotal += myCart.UnitCost * myCart.Quantity;
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                if (_CartTotal > 0)
                {
                    CheckOutHeader.InnerText = "Review and Submit Your Order";
                    LabelCartHeader.Text = "Please check all the information below to be sure it&#39;s correct.";
                    CheckoutBtn.Visible = true;
                    e.Row.Cells[5].Text = "Total: " + _CartTotal.ToString("C");
                }
            }
        }



    }
}