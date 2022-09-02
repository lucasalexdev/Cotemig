using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;
using DTO;
using BLL;
using System.Data;

namespace BLL
{
    public class BruxosBLL
    {
        private string query;
        private Conexao conexao = new Conexao();
        public void Criar(BruxosDTO rogDTO)
        {
            query = $"insert into bruxos(id, nome, cpf, endereco, telefone, email, senha) values (null,'{rogDTO.Nome}','{rogDTO.Cpf}','{rogDTO.Endereco}','{rogDTO.Telefone}','{rogDTO.Email}','{rogDTO.Senha}');";
            conexao.executarComandos(query);
        }

        public void Alterar(BruxosDTO rogDTO)
        {
            query = $"update  bruxos set nome = '{rogDTO.Nome}', cpf = '{rogDTO.Cpf}',endereco = '{rogDTO.Endereco}',telefone = '{rogDTO.Telefone}',email = '{rogDTO.Email}' where id = '{rogDTO.Id}';";
            conexao.executarComandos(query);
        }

        public void Delete(BruxosDTO rogDTO)
        {
            query = $"delete from bruxos where id = '{rogDTO.Id}';";
            conexao.executarComandos(query);
        }

        public DataTable Selecionar()
        {
            query = "select * from bruxos;";
            return conexao.consultarTabelas(query);
        }
    }
}