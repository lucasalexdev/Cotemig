using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DTO
{
    public class CategoriasMagicasDTO
    {
        private int id;
        private string nome;
        private string descricao;

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

        public string Descricao
        {
            set { this.descricao = value; }
            get { return this.descricao; }
        }
    }
}

