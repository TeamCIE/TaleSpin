using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tailspin.Data_Access;
using Tailspin.Classes;
using System.Collections.Specialized;

namespace Tailspin
{
    public partial class MyShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Classes.MyShoppingCart usersShoppingCart = new Classes.MyShoppingCart();
            String cartId = usersShoppingCart.GetShoppingCartId();
            decimal cartTotal = 0;
            cartTotal = usersShoppingCart.GetTotal(cartId);
            if (cartTotal > 0)
            {
                lblTotal.Text = String.Format("{0:c}", usersShoppingCart.GetTotal(cartId));
            }
            else
            {
                LableTotalText.Text = "";
                lblTotal.Text = "";
                ShoppingCartTitle.InnerText = "Shopping Cart is Empty";
                UpdateBtn.Visible = false;
                CheckoutBtn.Visible = false;
            }


        }

        protected void UpdateBtn_Click(object sender, ImageClickEventArgs e)
        {
            Tailspin.Classes.MyShoppingCart usersShoppingCart = new Tailspin.Classes.MyShoppingCart();

            String cartId = usersShoppingCart.GetShoppingCartId();

            Tailspin.Classes.MyShoppingCart.ShoppingCartUpdates[] cartUpdates = new Tailspin.Classes.MyShoppingCart.ShoppingCartUpdates[MyList.Rows.Count];
            for (int i = 0; i < MyList.Rows.Count; i++)
            {
             
                IOrderedDictionary rowValues = new OrderedDictionary();
                rowValues = GetValues(MyList.Rows[i]);
                cartUpdates[i].ProductId = Convert.ToInt32(rowValues["ProductID"]);
                cartUpdates[i].PurchaseQantity = Convert.ToInt32(rowValues["Quantity"]);

                CheckBox cbRemove = new CheckBox();
                cbRemove = (CheckBox)MyList.Rows[i].FindControl("Remove");
                cartUpdates[i].RemoveItem = cbRemove.Checked;
            }

            usersShoppingCart.UpdateShoppingCartDatabase(cartId, cartUpdates);
            MyList.DataBind();
            lblTotal.Text = String.Format("{0:c}", usersShoppingCart.GetTotal(cartId));
        }

        public static IOrderedDictionary GetValues(GridViewRow row)
        {
            IOrderedDictionary values = new OrderedDictionary();
            foreach (DataControlFieldCell cell in row.Cells)
            {
                if (cell.Visible)
                {
                    // Extract values from the cell
                    cell.ContainingField.ExtractValuesFromCell(values, cell, row.RowState, true);
                }
            }
            return values;
        }
        protected void CheckoutBtn_Click(object sender, ImageClickEventArgs e)
        {

        }

    }
}