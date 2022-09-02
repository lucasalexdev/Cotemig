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
    public partial class categoriasMagicas : System.Web.UI.Page
    {

        CategoriasMagicasDTO rogDTO = new CategoriasMagicasDTO();
        CategoriasMagicasBLL rogBLL = new CategoriasMagicasBLL();

        public void mostraAtabela()
        {
            categoriasMagicasTabela.DataSource = rogBLL.Selecionar();
            categoriasMagicasTabela.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mostraAtabela();
            }

        }


        protected void txtSenha_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            rogDTO.Nome = txtNome.Text;
            rogDTO.Descricao = txtDescricao.Text;

            rogBLL.Criar(rogDTO);
            mostraAtabela();
        }

        protected void categoriasMagicasTabela_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            rogDTO.Id = Convert.ToInt32(e.Values["ID"]);
            rogBLL.Delete(rogDTO);
            mostraAtabela();
        }

        protected void categoriasMagicasTabela_RowEditing(object sender, GridViewEditEventArgs e)
        {
            categoriasMagicasTabela.EditIndex = e.NewEditIndex;
            mostraAtabela();
        }

        protected void categoriasMagicasTabela_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            rogDTO.Id = Convert.ToInt32(e.NewValues[0]);
            rogDTO.Nome = e.NewValues[1].ToString();
            rogDTO.Descricao = e.NewValues[2].ToString();

            rogBLL.Alterar(rogDTO);
            categoriasMagicasTabela.EditIndex = -1;
            mostraAtabela();
        }

        protected void categoriasMagicasTabela_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            categoriasMagicasTabela.EditIndex = -1;
            mostraAtabela();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}