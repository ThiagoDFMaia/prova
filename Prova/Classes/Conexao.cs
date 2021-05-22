using Microsoft.ReportingServices.ReportProcessing.ReportObjectModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Prova
{
    public class Conexao
    {
        SqlConnection Cnn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        string erro = "";
        public Conexao()
        {
            Conectar();
        }
        private void Conectar()
        {
            try
            {
                Cnn.ConnectionString = "Data Source=DESKTOP-M1N411U;Initial Catalog=CadastroPessoas;Integrated Security=True";


                Cnn.Open();

            }
            catch (Exception e)
            {
                erro = e.ToString();
                Console.WriteLine("erro de conexao");
            }

        }

        public string incluirPessoa(string Cpf, string Rg, string Nome, string email)
        {

            try
            {
                Prova.DSPessoa.TbPessoasDataTable TBpessoa = new Prova.DSPessoa.TbPessoasDataTable();
                DSPessoaTableAdapters.PessoasTableAdapter TAPessoa = new DSPessoaTableAdapters.PessoasTableAdapter();
                TAPessoa.prdSelecionaPessoasCadastradasCpf(TBpessoa, Cpf);
            

                if(TBpessoa.Rows.Count>0)
                    return "CPF JA CADASTRADO NO SISTEMA! TENTE NOVAMENTE OU PROCURE O ADM DO SISTEMA!";

                TAPessoa.prdPessoaGravar(Cpf, Rg, Nome, email);


                return "Cadastro efetivado com sucesso";

            }
            catch (Exception ex)
            {

                return "Cadastro não realziado! Tentete novamente ou procure o adm do sistema!";
            }





        }

        public void fecharConexao()
        {
            Cnn.Close();

        }

        public Pessoa pesquisaPessoaCPF(string cpf)
        {
            Pessoa pes = new Pessoa();
            try
            {
                Prova.DSPessoa.TbPessoasDataTable TBpessoa = new Prova.DSPessoa.TbPessoasDataTable();
                DSPessoaTableAdapters.PessoasTableAdapter TAPessoa = new DSPessoaTableAdapters.PessoasTableAdapter();
                 TAPessoa.prdSelecionaPessoasCadastradasCpf(TBpessoa,cpf);
                pes.cpf = TBpessoa.DefaultView[0]["Cpf"].ToString();
                pes.nome = TBpessoa.DefaultView[0]["nome"].ToString();
                pes.rg = TBpessoa.DefaultView[0]["rg"].ToString();
                pes.email = TBpessoa.DefaultView[0]["email"].ToString();

                return pes;

            }
            catch (Exception ex)
            {

                return null;
            }

           
        }

        public string AlterarPessoa(Pessoa pessoa)
        {

            try
            {
                DSPessoaTableAdapters.PessoasTableAdapter DSPessoa = new DSPessoaTableAdapters.PessoasTableAdapter();


 

                 DSPessoa.prdPessoaUpdt(pessoa.cpf, pessoa.rg, pessoa.nome, pessoa.email).ToString();
               
                    return "Cadastro Atualizado com sucesso!";
               

            }
            catch (Exception ex)
            {

                return "Cadastro não realziado! Tentete novamente ou procure o adm do sistema!";
            }

           
        }

        public void ExcluirPessoa(Pessoa pessoa)
        {

            try
            {
                DSPessoaTableAdapters.PessoasTableAdapter DSPessoa = new DSPessoaTableAdapters.PessoasTableAdapter();




                DSPessoa.prdPessoaDel(pessoa.cpf);

               


            }
            catch (Exception ex)
            {

                return;
            }


        }
    }
}