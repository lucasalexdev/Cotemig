using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DTO;

namespace LojaDosIrmaoWisley.UI
{
    public partial class bruxos : System.Web.UI.Page
    {
        BruxosDTO rogDTO = new BruxosDTO();
        BruxosBLL rogBLL = new BruxosBLL();

        public void mostrarTabela()
        {
            tabelaBruxos.DataSource = rogBLL.Selecionar();
            tabelaBruxos.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mostrarTabela();
            }

        }


        protected void txtSenha_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            rogDTO.Nome = txtNome.Text;
            rogDTO.Cpf = txtCPF.Text;
            rogDTO.Endereco = txtEndereco.Text;
            rogDTO.Telefone = txtTelefone.Text;
            rogDTO.Email = txtEmail.Text;
            rogDTO.Senha = txtSenha.Text;

            rogBLL.Criar(rogDTO);
            mostrarTabela();
        }

        protected void tabelaBruxos_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            rogDTO.Id = Convert.ToInt32(e.Values["ID"]);
            rogBLL.Delete(rogDTO);
            mostrarTabela();
        }

        protected void tabelaBruxos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            tabelaBruxos.EditIndex = e.NewEditIndex;
            mostrarTabela();
        }

        protected void tabelaBruxos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            rogDTO.Id = Convert.ToInt32(e.NewValues[0]);
            rogDTO.Nome = e.NewValues[1].ToString();
            rogDTO.Cpf = e.NewValues[2].ToString();
            rogDTO.Endereco = e.NewValues[3].ToString();
            rogDTO.Telefone = e.NewValues[4].ToString();
            rogDTO.Email = e.NewValues[5].ToString();

            rogBLL.Alterar(rogDTO);
            tabelaBruxos.EditIndex = -1;
            mostrarTabela();
        }

        protected void tabelaBruxos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            tabelaBruxos.EditIndex = -1;
            mostrarTabela();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}