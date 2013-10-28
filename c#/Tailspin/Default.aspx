<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
	CodeBehind="Default.aspx.cs" Inherits="Tailspin._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
	<h2>
	<asp:LoginView ID="LoginView_VisitorGreeting" runat="server">
	<AnonymousTemplate>
	  Welcome to the Store !
	</AnonymousTemplate>
		<LoggedInTemplate>
		Hi <asp:LoginName ID="LoginName_Welcome" runat="server" />. Thanks for coming back. 
		</LoggedInTemplate>
	</asp:LoginView>
	</h2>
	<p class="MsoNormal">
		<b><span>Project Description</span></b><span><br />
		</span>
</p>
<p class="MsoNormal">
	<span>This project is to demonstrates how extraordinarily simple it is to create 
	powerful, scalable applications for the Windows Azure platform with .NET 4 new 
	features . It shows off how to use the great new features in ASP.NET 4 and 
	Windows Azure to build an online store, including shopping, checkout, and 
	administration.<o:p></o:p></span></p>
<p class="MsoNormal">
	<span><o:p>&nbsp;</o:p></span></p>
<p class="MsoNormal">
	<span>Most of .NET 4 code migrate from Tailspin Spyworks web application. <o:p></o:p>
	</span>
</p>
	<p>&nbsp;</p>
		
	<table style="width: 600;">
	<tr><td colspan="2"><hr /></td></tr>
	<tr>
	<td style="width: 300px; vertical-align: top;">               
		&nbsp;</td>
	<td>  
	<center><h3>Ecommerce the .NET 4 &amp; Windows Azure</h3></center>
	<blockquote>
			<p>Windows Azure & ASP.NET offers web developers the benefit of more that a decade of innovation. This demo leverages many of the latest features of ASP.NET development and Windows Azure Platform to illustrate you really simply building rish web applicatios with ASP.NET can be. For more informaiton about build web applications with ASP.NET please vists the community web site at www.asp.net for Hosting on Windows azure visti www.azure.com</p>
	</blockquote>
	</td>
	</tr>
	</table>
</asp:Content>
