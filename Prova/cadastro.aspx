<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="Prova.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulário de cadastro</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <style type="text/css">
        #TextArea1 {
            height: 182px;
            width: 285px;
        }
    </style>
</head>
<body>
    <h2>Formulário de Cadastro de pessoas</h2>
    <form id="form1" runat="server">
        <div>
            
            
            <asp:Label ID="Label1" runat="server" Text="CPF: "></asp:Label>

            <br />
            <asp:TextBox name="nome" ID="TxtCpf" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            <br />
            Nome:<br />
            <asp:TextBox ID="TxtNome" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            <br />
            RG:<br />
            <asp:TextBox ID="TxtRG" runat="server" style="margin-top: 0px"></asp:TextBox>
            <br />
            E-Mail:<br />
            <asp:TextBox ID="TxtEmail" runat="server" style="margin-top: 0px"></asp:TextBox>
        </div>
         <p>

             &nbsp;</p>
        <p>

            <asp:Button ID="Button1" runat="server" Text="Cadastrar" OnClick="Button1_Click" style="height: 26px" />
        </p>
    
    </form>
</body>
</html>
