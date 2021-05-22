using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova
{
    

    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection Cnn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            Conexao Conectar = new Conexao();

             Conectar.incluirPessoa(TxtCpf.Text,TxtRG.Text, TxtNome.Text, TxtEmail.Text);
            Conectar.fecharConexao();

           

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}