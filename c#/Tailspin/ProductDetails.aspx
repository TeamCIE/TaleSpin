<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Tailspin.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView_Product" runat="server" DataKeyNames="ProductID" 
        DataSourceID="EDS_Product" 
        onpageindexchanging="FormView_Product_PageIndexChanging">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" 
                Text='<%# Eval("ProductID") %>' />
            <br />
            CategoryID:
            <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                Text='<%# Bind("CategoryID") %>' />
            <br />
            ModelNumber:
            <asp:TextBox ID="ModelNumberTextBox" runat="server" 
                Text='<%# Bind("ModelNumber") %>' />
            <br />
            ModelName:
            <asp:TextBox ID="ModelNameTextBox" runat="server" 
                Text='<%# Bind("ModelName") %>' />
            <br />
            ProductImage:
            <asp:TextBox ID="ProductImageTextBox" runat="server" 
                Text='<%# Bind("ProductImage") %>' />
            <br />
            UnitCost:
            <asp:TextBox ID="UnitCostTextBox" runat="server" 
                Text='<%# Bind("UnitCost") %>' />
            <br />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" 
                Text='<%# Bind("Description") %>' />
            <br />
            Category:
            <asp:TextBox ID="CategoryTextBox" runat="server" 
                Text='<%# Bind("Category") %>' />
            <br />
            Reviews:
            <asp:TextBox ID="ReviewsTextBox" runat="server" Text='<%# Bind("Reviews") %>' />
            <br />
            ShoppingCarts:
            <asp:TextBox ID="ShoppingCartsTextBox" runat="server" 
                Text='<%# Bind("ShoppingCarts") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
       
        <ItemTemplate>
            <div class="ContentHead"><%# Eval("ModelName") %></div> <br />
            <table border="0">
            <tr>
            <td style=" vertical-align: top;">
            <image src='<%# Eval("ProductImage") %>' border="0" alt='<%# Eval("ModelName") %>' />
            </td>
            </tr>
            </table>
            <sapn calass="UnitCost"><b>Your Price :</b>&nbsp;<%# Eval("UnitCost","{0:c}") %></sapn><br />
            <a href='AddToCart.aspx?ProductID=<%# Eval("ProductID") %>' style=" border :0 none white">
            <img id="Img1" src="~/Styles/Images/add_to_cart.gif" runat="server" alt="" style=" border-width: 0" />
            </a>
            <br /><br />
       </ItemTemplate>

    </asp:FormView>
    <asp:entitydatasource runat="server" ID="EDS_Product" 
        ConnectionString="name=COMMERCEEntities" 
        DefaultContainerName="COMMERCEEntities" EnableFlattening="False" AutoGenerateWhereClause="True"
        EntitySetName="Products" Select="" Where="">
        
        <WhereParameters>
        <asp:QueryStringParameter Name="ProductID" QueryStringField="productID" Type="Int32" />
        </WhereParameters>
        </asp:entitydatasource>


</asp:Content>
