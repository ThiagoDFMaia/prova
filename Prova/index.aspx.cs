using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Conexao Conectar = new Conexao();

            LabInf.Text= Conectar.incluirPessoa(TxtCpf.Text, TxtRG.Text, TxtNome.Text, TxtEmail.Text);
            Conectar.fecharConexao();

        }
    }
}