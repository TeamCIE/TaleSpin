<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Tailspin.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="CheckOutHeader" runat="server" class="ContentHead">Review and Submit Your Order</div>
    <span id="Message" runat="server"><br />     
        <asp:Label ID="LabelCartHeader" runat="server" Text="Please check all the information below to be sure it&#39;s correct."></asp:Label>
    </span><br /> 

    <asp:GridView ID="MyList" runat="server" AutoGenerateColumns="False" ShowFooter="True"
    GridLine="Vertical" CellPadding="4"
        DataKeyNames="ProductID,UnitCost,Quantity" DataSourceID="EDS_Cart" 
        CssClass="CartListItem" OnRowDataBound="MyList_RowDataBound" >
        <AlternatingRowStyle CssClass="CartListItemAlt" />
         <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True" SortExpression="ProductID"  />
            <asp:BoundField DataField="ModelNumber" HeaderText="Model Number" SortExpression="ModelNumber" />
            <asp:BoundField DataField="ModelName" HeaderText="Model Name" SortExpression="ModelName" />
            <asp:BoundField DataField="UnitCost" HeaderText="Unit Cost" ReadOnly="True" SortExpression="UnitCost" DataFormatString="{0:c}" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="Quantity" />
            <asp:TemplateField> 
                <HeaderTemplate>Item&nbsp;Total</HeaderTemplate>
                <ItemTemplate>
                     <%# (Convert.ToDouble(Eval("Quantity")) *  Convert.ToDouble(Eval("UnitCost")))%>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle CssClass="CartListFooter" />
        <HeaderStyle CssClass="CartListHead" />
    </asp:GridView>
       <br />
    <asp:imagebutton id="CheckoutBtn" runat="server" ImageURL="Styles/Images/submit.gif" onclick="CheckoutBtn_Click"></asp:imagebutton>
        <asp:EntityDataSource ID="EDS_Cart" runat="server" 
        ConnectionString="name=COMMERCEEntities" 
        DefaultContainerName="COMMERCEEntities" EnableFlattening="False" 
        EntitySetName="ViewCarts" EnableUpdate="True" AutoGenerateWhereClause="True" EntityTypeFilter="" Select="" Where="">
    <WhereParameters>
    <asp:SessionParameter Name="CartID" DefaultValue="0" SessionField="TailSpinSpyWorks_CardID" />
    </WhereParameters>
    
    </asp:EntityDataSource>
</asp:Content>
