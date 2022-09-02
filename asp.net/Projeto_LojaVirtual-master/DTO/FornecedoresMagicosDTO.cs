using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DTO
{
    public class FornecedoresMagicosDTO
    {
        private int id;
        private string nome;
        private string cnpj;
        private string email;
        private string telefone;
        private string nomeRepresentante;
        private string telefoneRepresentante;

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

        public string Cnpj
        {
            set { this.cnpj = value; }
            get { return this.cnpj; }
        }

        public string Email
        {
            set { this.email = value; }
            get { return this.email; }
        }

        public string Telefone
        {
            set { this.telefone = value; }
            get { return this.telefone; }
        }

        public string NomeResponsavel
        {
            set { this.nomeRepresentante = value; }
            get { return this.nomeRepresentante; }
        }

        public string TelefoneResponsavel
        {
            set { this.telefoneRepresentante = value; }
            get { return this.telefoneRepresentante; }
        }
    }

}