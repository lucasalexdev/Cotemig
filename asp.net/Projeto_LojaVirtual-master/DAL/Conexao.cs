using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using MySql.Data.MySqlClient;


namespace DAL
{
    public class Conexao
    {
        private string Server = "localhost";
        private string Database = "lojadosBruxos";
        private string Usuario = "root";
        private string Senha = "";


        public MySqlConnection conn;

        private void conexao()
        {


            try
            {
                string conexao = $"Persist Security info=false;server={Server};database={Database};uid={Usuario};pwd={Senha}";

                conn = new MySqlConnection(conexao);

                conn.Open();

            }
            catch (Exception ex)
            {
                throw new Exception($"faltal erro \n {ex.Message}");
            }
        }


        public DataTable consultarTabelas(string sql)
        {
            conexao();
            try
            {
                MySqlDataAdapter consultas = new MySqlDataAdapter(sql, conn);
                DataTable resultado = new DataTable();
                consultas.Fill(resultado);
                return resultado;
            }
            catch (Exception ex)
            {
                throw new Exception($"Erro ao consultar tabela \n {ex.Message}");
            }
            finally { conn.Close(); }
        }

        public void executarComandos(string sql)
        {
            conexao();
            try
            {
                MySqlCommand comando = new MySqlCommand(sql, conn);
                comando.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception($"Erro ao executar comando \n {ex.Message}");
            }
            finally { conn.Close(); }
        }

    }
}