using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DTO;
using DAL;
using System.EnterpriseServices;
using System.Data;

namespace BLL
{
    public class CategoriasMagicasBLL
    {
        private string query;
        private Conexao conexao = new Conexao();
        public void Criar(CategoriasMagicasDTO rogDTO)
        {
            query = $"insert into categoriasmagicas(nome, descricao) values ('{rogDTO.Nome}','{rogDTO.Descricao}');";
            conexao.executarComandos(query);
        }

        public void Alterar(CategoriasMagicasDTO rogDTO)
        {
            query = $"update  categoriasmagicas set nome = '{rogDTO.Nome}', descricao = '{rogDTO.Descricao}' where id = '{rogDTO.Id}';";
            conexao.executarComandos(query);
        }

        public void Delete(CategoriasMagicasDTO rogDTO)
        {
            query = $"delete from categoriasmagicas where id = '{rogDTO.Id}';";
            conexao.executarComandos(query);
        }

        public DataTable Selecionar()
        {
            query = "select * from categoriasmagicas;";
            return conexao.consultarTabelas(query);
        }
    }
}