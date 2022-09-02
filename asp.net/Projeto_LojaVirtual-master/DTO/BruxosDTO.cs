using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DTO
{
    public class BruxosDTO
    {
        private int id;
        private string nome;
        private string cpf;
        private string endereco;
        private string telefone;
        private string email;
        private string senha;


        public int Id
        {
            set { this.id = value; }
            get { return this.id; }
        }

        public string Nome
        {
            set { this.nome = value; }
            get { return this.nome; }
        }

        public string Cpf
        {
            set { this.cpf = value; }
            get { return this.cpf; }
        }

        public string Endereco
        {
            set { this.endereco = value; }
            get { return this.endereco; }
        }
        public string Telefone
        {
            set { this.telefone = value; }
            get { return this.telefone; }
        }
        public string Email
        {
            set { this.email = value; }
            get { return this.email; }
        }
        public string Senha
        {
            set { this.senha = value; }
            get { return this.senha; }
        }

    }
}