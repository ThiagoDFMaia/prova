<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Prova.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu </title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>

    <form id="form1" runat="server">
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
                        <asp:TextBox type="text" name="CPF" required="" placeholder="CPF*" ID="TxtCpf" runat="server" style="margin-top: 0px"></asp:TextBox>
					</div>
					<div class="form-wraper w50">
						<h2>RG</h2>
						 <asp:TextBox type="text" name="RG" required="" placeholder="RG*" ID="TxtRG" runat="server" style="margin-top: 0px"></asp:TextBox>
					</div>
                    <div class="form-wraper w100">
						<h2>E-mail</h2>
						 <asp:TextBox type="text" name="Email" required="" placeholder="E-mail*" ID="TxtEmail" runat="server" style="margin-top: 0px"></asp:TextBox>
					</div>
					
                    <asp:Button type="submit" name="acao" ID="Button1" runat="server" Text="CADASTRAR" OnClick="Button1_Click" />
              
				<div class="clear">
                    <asp:Label ID="LabInf" runat="server"></asp:Label>
                </div>
			</div>
		
		</div>
	</section>
    </form>
</body>
</html>
