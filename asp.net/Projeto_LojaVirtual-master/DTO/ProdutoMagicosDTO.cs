using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DTO
{
    public class ProdutosMagicosDTO
    {

        private int id;
        private string nome;
        private string valor;
        private string descricao;
        private string fornecedorId;
        private string categoriaId;
        private string qauntidadeEstoque;
        private int clientes_id;
        private int fornecedores_id;
        private int categorias_id;

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
        public string FornecedorId
        {
            set { this.fornecedorId = value; }
            get { return this.fornecedorId; }
        }

        public string CateoriaId
        {
            set { this.categoriaId = value; }
            get { return this.categoriaId; }
        }
        public string QuantidadeEstoque
        {
            set { this.qauntidadeEstoque = value; }
            get { return this.qauntidadeEstoque; }
        }

        public string Valor
        {
            set { this.valor = value; }
            get { return this.valor; }
        }

        public int ClienteId
        {
            set { this.clientes_id = value; }
            get { return this.clientes_id; }
        }


        public int Fornecedores_Id
        {
            set { this.fornecedores_id = value; }
            get { return this.fornecedores_id; }
        }

        public int Categorias_id
        {
            set { this.categorias_id = value; }
            get { return this.categorias_id; }
        }

    }
}