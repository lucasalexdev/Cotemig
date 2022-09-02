using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LojaDosIrmaoWisley.UI
{
    public partial class index : System.Web.UI.Page
    {

        protected void btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("bruxos.aspx");
        }

        protected void btnProduto_Click(object sender, EventArgs e)
        {
            Response.Redirect("produtosMagicos.aspx");
        }

        protected void btnCategoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("categoriasMagicas.aspx");
        }

        protected void btnFornecedor_Click(object sender, EventArgs e)
        {
            Response.Redirect("fornecedoresMagicos.aspx");
        }
    }
}