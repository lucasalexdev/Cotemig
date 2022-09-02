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
    public partial class produtosMagicos : System.Web.UI.Page
    {
        ProdutosMagicosDTO rogDTO = new ProdutosMagicosDTO();
        ProdutosMagicosBLL rogBLL = new ProdutosMagicosBLL();

        public void mostraTabela()
        {
            produtosMagicosTabela.DataSource = rogBLL.Selecionar();
            produtosMagicosTabela.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mostraTabela();
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            rogDTO.Nome = txtNome.Text;
            rogDTO.Valor = txtValor.Text;
            rogDTO.Descricao = txtDescricao.Text;
            rogDTO.FornecedorId = txtForncedorId.Text;
            rogDTO.CateoriaId = txtCategoriaId.Text;
            rogDTO.QuantidadeEstoque = txtQuantidade.Text;
            rogDTO.ClienteId = int.Parse(txtClientes_id.Text);
            rogDTO.Fornecedores_Id = int.Parse(txtFornecedor_id.Text);
            rogDTO.Categorias_id = int.Parse(txtCategorias_id.Text);

            rogBLL.Criar(rogDTO);
            mostraTabela();
        }

        protected void produtosMagicosTabela_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            rogDTO.Id = Convert.ToInt32(e.Values["ID"]);
            rogBLL.Delete(rogDTO);
            mostraTabela();
        }

        protected void produtosMagicosTabela_RowEditing(object sender, GridViewEditEventArgs e)
        {
            produtosMagicosTabela.EditIndex = e.NewEditIndex;
            mostraTabela();
        }

        protected void produtosMagicosTabela_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            rogDTO.Id = Convert.ToInt32(e.NewValues[0]);
            rogDTO.Nome = e.NewValues[1].ToString();
            rogDTO.Valor = e.NewValues[2].ToString();
            rogDTO.Descricao = e.NewValues[3].ToString();
            rogDTO.FornecedorId = e.NewValues[4].ToString();
            rogDTO.CateoriaId = e.NewValues[5].ToString();
            rogDTO.QuantidadeEstoque = e.NewValues[6].ToString();
            rogDTO.ClienteId = int.Parse(e.NewValues[7].ToString());
            rogDTO.Fornecedores_Id = int.Parse(e.NewValues[8].ToString());
            rogDTO.Categorias_id = int.Parse(e.NewValues[9].ToString());

            rogBLL.Alterar(rogDTO);
            produtosMagicosTabela.EditIndex = -1;
            mostraTabela();
        }

        protected void produtosMagicosTabela_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            produtosMagicosTabela.EditIndex = -1;
            mostraTabela();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}