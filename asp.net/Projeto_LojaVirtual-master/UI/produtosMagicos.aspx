<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="produtosMagicos.aspx.cs" Inherits="LojaDosIrmaoWisley.UI.produtosMagicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/produtosMagicos.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button class="voltar" ID="Button1" runat="server" OnClick="Button1_Click1" Text="Voltar" />

        <div>
                        <p class="legendas">   Nome</p>
            <asp:TextBox class="usuario" ID="txtNome" runat="server"></asp:TextBox>
         
        <p class="legendas"> Valor</p>
            <asp:TextBox class="usuario" ID="txtValor" runat="server" Height="16px"></asp:TextBox>
           
            <p class="legendas">Descrição</p>
        <asp:TextBox class="usuario" ID="txtDescricao" runat="server"></asp:TextBox>
        
            <p class="legendas">fornecedoresMagicosId</p>
            <asp:TextBox class="usuario" ID="txtForncedorId" runat="server"></asp:TextBox>
            
        <p class="legendas"> CategoriaId</p>
            <asp:TextBox class="usuario" ID="txtCategoriaId" runat="server"></asp:TextBox>
           
        <p class="legendas">Quantidade no estoque</p>
            <asp:TextBox class="usuario" ID="txtQuantidade" runat="server"></asp:TextBox>
            

             <p class="legendas"> Clientes id</p>
            <asp:TextBox class="usuario" ID="txtClientes_id" runat="server"></asp:TextBox>
           

               <p class="legendas">Fornecedor_id</p>
             <asp:TextBox class="usuario" ID="txtFornecedor_id" runat="server"></asp:TextBox>
            

                  <p class="legendas">     Categorias_id</p>
             <asp:TextBox class="usuario" ID="txtCategorias_id" runat="server"></asp:TextBox>
       
            <div class="salvar">
                <asp:Button class="usuario" ID="btnSalvar" runat="server" OnClick="Button1_Click" Text="Salvar" />
       
            </div>
 <asp:GridView ID="produtosMagicosTabela" runat="server" 
    AutoGenerateColumns="False" 
    Height="295px" Width="1011px" OnRowDeleting="produtosMagicosTabela_RowDeleting1" OnRowEditing="produtosMagicosTabela_RowEditing" OnRowUpdating="produtosMagicosTabela_RowUpdating" OnRowCancelingEdit="produtosMagicosTabela_RowCancelingEdit">
    <Columns>
    <asp:BoundField DataField="ID" 
            HeaderText="ID" InsertVisible="True" />

        <asp:BoundField DataField="Nome" 
            HeaderText="Nome" SortExpression="Nome" />

        <asp:BoundField DataField="Valor" 
            HeaderText="Valor" SortExpression="Valor" />

        <asp:BoundField DataField="Descricao" 
            HeaderText="Descricao" SortExpression="Descricao" />

        <asp:BoundField DataField="fornecedoresMagicosId" 
            HeaderText="fornecedoresMagicosId" SortExpression="fornecedoresMagicosId" />

         <asp:BoundField DataField="categoriasMagicasId" 
            HeaderText="categoriasMagicasId" SortExpression="categoriasMagicasId" />

              <asp:BoundField DataField="QuantidadeEstoque" 
            HeaderText="QuantidadeEstoque" SortExpression="QuantidadeEstoque" />

              <asp:BoundField DataField="bruxos_id" 
            HeaderText="bruxos_id" SortExpression="bruxos_id" />

              <asp:BoundField DataField="FornecedoresMagicos_id" 
            HeaderText="FornecedoresMagicos_id" SortExpression="FornecedoresMagicos_id" />

              <asp:BoundField DataField="categoriasMagicas_id" 
            HeaderText="categoriasMagicas_id" SortExpression="categoriasMagicas_id" />

         <asp:CommandField ShowDeleteButton="True" 
            ShowEditButton="True" />
    </Columns>
</asp:GridView>
        </div>
                    
 
    </form>
</body>
</html>
