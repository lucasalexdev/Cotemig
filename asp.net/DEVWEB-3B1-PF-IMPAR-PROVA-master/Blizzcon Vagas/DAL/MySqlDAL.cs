using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Vagas_de_Estágio.DAL
{
    public class MySqlDAL
    {
        private static string server = "localhost";
        private static string database = "workshop";
        private static string user = "root";
        private static string password = "";

        private string stringConexao = "SERVER=" + server + "; DATABASE=" + database + "; UID=" + user + "; PWD=" + password;

        public MySqlConnection conexao;

        // Metodo de abrir conexao

        public void Conectar()
        {
            try
            {
                conexao = new MySqlConnection(stringConexao);
                conexao.Open();
            }
            catch (Exception e)
            {

                throw new Exception("Não foi possível conectar ao banco de dados. Erro: " + e.Message);
            }

        }
        // Metodo sem retorno
        public void ExecutarSQL(string sql)
        {
            try
            {
                Conectar();
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível executar a instrução no banco de dados. Erro: " + e.Message);
            }
            finally
            {
                conexao.Close();
            }
        }

        // Metodo com retorno
        public DataTable ExecutarConsulta(string sql)
        {
            try
            {
                Conectar();
                DataTable dt = new DataTable();
                MySqlDataAdapter dados = new MySqlDataAdapter(sql, conexao);
                dados.Fill(dt);
                return dt;
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível executar a consulta no banco de dados. Erro: " + e.Message);
            }
            finally
            {
                conexao.Close();

            }
        }
    }
}