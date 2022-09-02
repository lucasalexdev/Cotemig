using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using DAL;
using DTO;

namespace BLL
{
    public class ProdutosMagicosBLL
    {
        private string query;
        private Conexao conexao = new Conexao();
        public void Criar(ProdutosMagicosDTO rogDTO)
        {
            query = $"insert into produtosmagicos(nome, valor, descricao, fornecedoresMagicosId, categoriasMagicasId, quantidadeEstoque, bruxos_id, fornecedoresMagicos_id, categoriasMagicas_id) values ('{rogDTO.Nome}','{rogDTO.Valor}','{rogDTO.Descricao}','{rogDTO.FornecedorId}','{rogDTO.CateoriaId}','{rogDTO.QuantidadeEstoque}','{rogDTO.ClienteId}','{rogDTO.Fornecedores_Id}','{rogDTO.CateoriaId}');";
            conexao.executarComandos(query);
        }

        public void Alterar(ProdutosMagicosDTO rogDTO)
        {
            query = $"update  produtosmagicos set nome = '{rogDTO.Nome}', valor = '{rogDTO.Valor}',descricao = '{rogDTO.Descricao}',fornecedoresMagicosId = '{rogDTO.FornecedorId}',categoriasMagicasId = '{rogDTO.CateoriaId}',quantidadeEstoque ='{rogDTO.QuantidadeEstoque}',bruxos_id = '{rogDTO.ClienteId}',fornecedoresMagicos_id = '{rogDTO.Fornecedores_Id}',categoriasMagicas_id ='{rogDTO.CateoriaId}' where id = '{rogDTO.Id}';";
            conexao.executarComandos(query);
        }

        public void Delete(ProdutosMagicosDTO rogDTO)
        {
            query = $"delete from produtosmagicos where id = '{rogDTO.Id}';";
            conexao.executarComandos(query);
        }

        public DataTable Selecionar()
        {
            query = "select * from produtosmagicos;";
            return conexao.consultarTabelas(query);
        }
    }
}