<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaCadastro.aspx.cs" Inherits="Prova.ListaCadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Pessoas Cadastradas</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
    <form class="frmListaCadastro" id="form1" runat="server">
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
        
            <h2>Lista Pessoas Cadastradas</h2>
            <div>
            
                <asp:GridView class="grdLista" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="Cpf" HeaderText="Cpf" SortExpression="Cpf" />
                        <asp:BoundField DataField="Rg" HeaderText="Rg" SortExpression="Rg" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                </asp:GridView> 
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="selecionaPessoasCadastradas" TypeName="Prova.DSPessoaTableAdapters.PessoasTableAdapter"></asp:ObjectDataSource>
            </div>
        </div>
         <section class="sessao-contato">
		<div class="container">
			<div class="box-form">
				<h2>CADASTRO&nbsp;&nbsp; </h2>
             	
                    <div class="form-wraper w100">
                   <h2>Nome</h2>
                    <asp:TextBox type="text" name="nome" required="" placeholder="Nome*" ID ="TxtNome" runat="server" ></asp:TextBox>
                    <br />
                    </div>
					<div class="form-wraper w50">
						<h2>CPF</h2>
                        <asp:TextBox type="text" name="CPF" required="" placeholder="CPF*" ID="TxtCpf" runat="server" style="margin-top: 0px" ReadOnly="True"></asp:TextBox>
					</div>
					<div class="form-wraper w50">
						<h2>RG</h2>
						 <asp:TextBox type="text" name="RG" required="" placeholder="RG*" ID="TxtRG" runat="server" style="margin-top: 0px"></asp:TextBox>
					</div>
                    <div class="form-wraper w100">
						<h2>E-mail</h2>
						 <asp:TextBox type="text" name="Email" required="" placeholder="E-mail*" ID="TxtEmail" runat="server" style="margin-top: 0px"></asp:TextBox>
					</div>
					
                    <asp:Button type="submit" name="acao" ID="BttAlterar" runat="server" Text="Alterar" OnClick="BttAlterar_Click" />
                     <asp:Button type="submit" name="acao" ID="BttExcluir" runat="server" Text="Excluir" OnClick="BttExcluir_Click" />
				<div class="clear"></div>
			</div>
		
		</div>
	</section>
    </form>
</body>
</html>
