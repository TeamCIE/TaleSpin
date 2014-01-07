<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyShoppingCart.aspx.cs" Inherits="Tailspin.MyShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="ShoppingCartTitle" runat="server" class="ContentHead">Shopping Cart</div>
    <asp:GridView ID="MyList" runat="server" AutoGenerateColumns="False" ShowFooter="True"
    GridLine="Vertical" CellPadding="4"
        DataKeyNames="ProductID,UnitCost,Quantity" DataSourceID="EDS_Cart" 
        CssClass="CartListItem" >
        <AlternatingRowStyle CssClass="CartListItemAlt" />
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True" 
                SortExpression="ProductID" />
            <asp:BoundField DataField="ModelName" HeaderText="Model Name" 
                SortExpression="ModelName" />
            <asp:BoundField DataField="UnitCost" HeaderText="Unit Cost" ReadOnly="True" 
                SortExpression="UnitCost" DataFormatString="{0:c}" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" 
                SortExpression="Quantity" />
             
        <asp:TemplateField>
        <HeaderTemplate>Quantity</HeaderTemplate>
        <ItemTemplate>
        <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
        </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField>
        <HeaderTemplate>Item&nbspTotal</HeaderTemplate>
        <ItemTemplate>
        <%# (Convert.ToDouble(Eval("Quantity")) * Convert.ToDouble(Eval("UnitCost"))) %>
        </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField>
        <HeaderTemplate>Remove&nbspItem</HeaderTemplate>
        <ItemTemplate>
        <center>
       <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
       </center>
        </ItemTemplate>
        </asp:TemplateField>
        </Columns>
        <FooterStyle CssClass="CartListFooter" />
        <HeaderStyle CssClass="CartListHead" />
    </asp:GridView>
        
    <div style="float: right">
          <strong>
              <asp:Label ID="LableTotalText" runat="server" Text="Order Total : "></asp:Label>
          <asp:Label CssClass="NormalBold" id="lblTotal" runat="server" 
              EnableViewState="False"></asp:Label></strong> 
        </div>
    <br />
  
    <asp:imagebutton id="UpdateBtn" runat="server" ImageURL="Styles/Images/update_cart.png" onclick="UpdateBtn_Click"></asp:imagebutton>
    <asp:imagebutton id="CheckoutBtn" runat="server" ImageURL="Styles/Images/final_checkout.png" PostBackUrl="~/CheckOut.aspx" 
            onclick="CheckoutBtn_Click"></asp:imagebutton>

    <asp:EntityDataSource ID="EDS_Cart" runat="server" 
        ConnectionString="name=COMMERCEEntities" 
        DefaultContainerName="COMMERCEEntities" EnableFlattening="False" 
        EntitySetName="ViewCarts" EnableUpdate="True" AutoGenerateWhereClause="True" EntityTypeFilter="" Select="" Where="">
    
    <WhereParameters>
    <asp:SessionParameter Name="CartID" DefaultValue="0" SessionField="TailSpinSpyWorks_CardID" />
    </WhereParameters>
    
    </asp:EntityDataSource>
    <br />
     
</asp:Content>

