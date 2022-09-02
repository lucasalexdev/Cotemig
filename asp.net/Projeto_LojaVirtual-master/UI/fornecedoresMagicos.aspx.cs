using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BLL;

namespace LojaDosIrmaoWisley.UI
{
    public partial class fornecedoresMagicos : System.Web.UI.Page
    {
        FornecedoresMagicosDTO rogDTO = new FornecedoresMagicosDTO();
        ForncedoresMagicosBLL rogBLL = new ForncedoresMagicosBLL();

        public void carregarGrid()
        {
            fornecedoresMagicosTabela.DataSource = rogBLL.Selecionar();
            fornecedoresMagicosTabela.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                carregarGrid();
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            rogDTO.Nome = txtNome.Text;
            rogDTO.Cnpj = txtCNPJ.Text;
            rogDTO.Email = txtEmail.Text;
            rogDTO.Telefone = txtTelefone.Text;
            rogDTO.NomeResponsavel = txtRepresentante.Text;
            rogDTO.TelefoneResponsavel = txtTelefoneRepresentante.Text;

            rogBLL.Criar(rogDTO);
            carregarGrid();
        }

        protected void fornecedoresMagicosTabela_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            rogDTO.Id = Convert.ToInt32(e.Values["ID"]);
            rogBLL.Delete(rogDTO);
            carregarGrid();
        }

        protected void fornecedoresMagicosTabela_RowEditing(object sender, GridViewEditEventArgs e)
        {
            fornecedoresMagicosTabela.EditIndex = e.NewEditIndex;
            carregarGrid();
        }

        protected void fornecedoresMagicosTabela_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            rogDTO.Id = Convert.ToInt32(e.NewValues[0]);
            rogDTO.Nome = e.NewValues[1].ToString();
            rogDTO.Cnpj = e.NewValues[2].ToString();
            rogDTO.Email = e.NewValues[3].ToString();
            rogDTO.Telefone = e.NewValues[4].ToString();
            rogDTO.NomeResponsavel = e.NewValues[5].ToString();
            rogDTO.TelefoneResponsavel = e.NewValues[6].ToString();


            rogBLL.Alterar(rogDTO);
            fornecedoresMagicosTabela.EditIndex = -1;
            carregarGrid();
        }

        protected void fornecedoresMagicosTabela_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            fornecedoresMagicosTabela.EditIndex = -1;
            carregarGrid();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            Response.Redirect("index.aspx");
        }
    }
}