using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prova
{
    public partial class ListaCadastro : System.Web.UI.Page
    {
        private Pessoa pes = new Pessoa();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
       
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

          

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
          
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            
            
            int i = int.Parse(e.NewSelectedIndex.ToString());
            Conexao Conectar = new Conexao();
            
            
            pes = Conectar.pesquisaPessoaCPF(GridView1.Rows[i].Cells[0].Text);
            TxtCpf.Text = pes.cpf;
            TxtNome.Text = pes.nome;
            TxtRG.Text = pes.rg;
            TxtEmail.Text = pes.email;
            

        }

       

       
        protected void BttAlterar_Click(object sender, EventArgs e)
        {

            pes.cpf = TxtCpf.Text;
            pes.nome = TxtNome.Text;
            pes.rg = TxtRG.Text;
            pes.email = TxtEmail.Text;
            Conexao Conectar = new Conexao();
            Conectar.AlterarPessoa(pes);

            Page.Response.Redirect(Page.Request.Url.ToString(), true);

         
        }

        protected void BttExcluir_Click(object sender, EventArgs e)
        {
            pes.cpf = TxtCpf.Text;
            pes.nome = TxtNome.Text;
            pes.rg = TxtRG.Text;
            pes.email = TxtEmail.Text;
            Conexao Conectar = new Conexao();
             Conectar.ExcluirPessoa(pes);

            Page.Response.Redirect(Page.Request.Url.ToString(), true);

           
        }
    }
}