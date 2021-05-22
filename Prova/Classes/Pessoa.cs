using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prova
{
    public class Pessoa
    {
        private string Cpf;
        private string Rg;
        private string Nome;
        private string Email;

        public string cpf
        {
            get { return Cpf; }
            set { Cpf = value; }
        }

        public string rg {
        get { return Rg; }
        set { Rg = value; }
        }

        public string nome
        {
            get { return Nome; }
            set { Nome = value; }
        }

        public string email
        {
            get { return Email; }
            set { Email = value; }
        }


        public Pessoa()
        {
          
        }

        public Pessoa(string cpf, string rg, string nome, string email)
        {
            this.cpf = cpf;
            this.rg = rg;
            this.nome = nome;
            this.email = email;
        }





    }
}