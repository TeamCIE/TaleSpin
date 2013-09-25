﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductsList.aspx.cs" Inherits="Tailspin.ProductsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:ListView ID="ListView_Products" runat="server" 
    DataKeyNames="ProductID"
        DataSourceID="EDS_ProductsByCategory"
        GroupItemCount="2">
     <EmptyDataTemplate>
    <table>
    <tr>
    <td>No Data Was Returned.</td>
    </tr>
    </table>
    </EmptyDataTemplate>

    <EmptyItemTemplate>
    <td runat="server" />

    </EmptyItemTemplate>
    <GroupTemplate>
    <tr ID="itemPlaceholderContainer" runat="server"> 
    <td ID="itemPlaceholder"></td>
    </tr>
    </GroupTemplate>
    <ItemTemplate>
      <td runat="server">
    <table border="0" width="300" >
    <tr>
    <td style="width: 25px;">&nbsp</td>
    <td style="vertical-align: middle; text-align: right;">
    <a href='ProductDetails.aspx?ProductID=<%# Eval("ProductID") %>'>
    <image src='Catalog/Images/Thumbs/<%# Eval("ProductImage") %>' 
     width="100" height="75" border="0">
    </a> &nbsp;&nbsp
    </td>
    <td style="width: 250px; vertical-align: middle;">
       <a href='ProductDetails.aspx?productID=<%# Eval("ProductID") %>'> <span 
       class="ProductListHead"> <%# Eval("ModelName") %></span><br>
 <span class="ProductListItem">
 <b>Special Price: </b> <%# Eval("UnitCost", "{0:c}") %> </span> <br />
    <a href='AddToCart.aspx?productID=<%# Eval("ProductID") %>'>
    <span class="ProductListItem"><b>Add To Cart<b></font></span>
    </a>
    </td>

    </tr>
    </table>
    </td>
    </ItemTemplate>
    
    <LayoutTemplate>
    <table runat="server">
    <tr runat="server">
    <td runat="server">
    <table ID="groupPlaceholderContainer" runat="server"> 
    <tr ID="groupPlaceholder" runat="server"></tr>
    </table>
    </td>
    </tr>
    <tr runat="server"><td runat="server"></td></tr>
    </table>
    </LayoutTemplate>

    </asp:ListView>

    <br />
    <asp:EntityDataSource ID="EDS_ProductsByCategory" runat="server" 
    EnableFlattening="False" AutoGenerateWhereClause="True"
        ConnectionString="name=COMMERCEEntities" 
        DefaultContainerName="COMMERCEEntities"
        EntitySetName="Products">

       <WhereParameters>
          <asp:QueryStringParameter Name="CategoryID" QueryStringField="CategoryId" Type="Int32" />
       </WhereParameters>
    
    </asp:EntityDataSource>


    </asp:Content>
