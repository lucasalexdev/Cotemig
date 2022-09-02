using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using DAL;
using DTO;

namespace BLL
{
    public class ForncedoresMagicosBLL
    {


        private string query;
        private Conexao conexao = new Conexao();
        public void Criar(FornecedoresMagicosDTO rogDTO)
        {
            query = $"insert into fornecedoresmagicos(nome, cnpj, email, telefone, nomeRepresentante, telefoneRepresentante) values ('{rogDTO.Nome}','{rogDTO.Cnpj}','{rogDTO.Email}','{rogDTO.Telefone}','{rogDTO.NomeResponsavel}','{rogDTO.TelefoneResponsavel}');";
            conexao.executarComandos(query);
        }

        public void Alterar(FornecedoresMagicosDTO rogDTO)
        {
            query = $"update  fornecedoresmagicos set nome = '{rogDTO.Nome}', cnpj = '{rogDTO.Cnpj}',email = '{rogDTO.Email}', telefone = '{rogDTO.Telefone}', nomeRepresentante = '{rogDTO.NomeResponsavel}',telefoneRepresentante = '{rogDTO.TelefoneResponsavel}' where id = '{rogDTO.Id}';";
            conexao.executarComandos(query);
        }

        public void Delete(FornecedoresMagicosDTO rogDTO)
        {
            query = $"delete from fornecedoresmagicos where id = '{rogDTO.Id}';";
            conexao.executarComandos(query);
        }

        public DataTable Selecionar()
        {
            query = "select * from fornecedoresmagicos;";
            return conexao.consultarTabelas(query);
        }
    }
}