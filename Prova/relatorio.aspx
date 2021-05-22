<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="relatorio.aspx.cs" Inherits="Prova.relatorio" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Relatorio Cadastros</title>
     <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
     <form id="form1" runat="server" >
        <header>
		<div class="container">
			<div class="logo"></div>
			<div class="menu">
				<nav>
					<ul style="width: 565px">
						<li><a href="index.aspx">Home</a></li>
						<li><a href="ListaCadastro.aspx">Lista Cadastros</a></li>
                        <li><a href="relatorio.aspx">Relatório</a></li>
					
					</ul>
				</nav>

			</div>
			<div class="clear"></div>
		</div><!--container-->
	</header>
         
         
         <div class="container">
           
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <rsweb:ReportViewer Width="100%"  ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" DocumentMapWidth="100%" SizeToReportContent="True" Height="100%">
                 <LocalReport ReportPath="RelatorioPessoasCadastradas.rdlc">
                     <DataSources>
                         <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
                     </DataSources>
                 </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="selecionaPessoasCadastradas" TypeName="Prova.DSPessoaTableAdapters.PessoasTableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="WebApplication1.AgendaBDDataSetTableAdapters.ContatoTableAdapter"></asp:ObjectDataSource>
        </div>
    </form>
   </body>
</html>
