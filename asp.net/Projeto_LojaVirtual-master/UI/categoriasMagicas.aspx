<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="categoriasMagicas.aspx.cs" Inherits="LojaDosIrmaoWisley.UI.categoriasMagicas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/CategoriasMagicas.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
              <asp:Button  class="usuario" ID="Button1" runat="server" OnClick="Button1_Click1" Text=" <-- Voltar" Height="26px" Width="157px" />
            
        <p class="legendas"> Id</p>
            <asp:TextBox class="usuario" ID="txtId" runat="server" Height="22px" Width="302px"></asp:TextBox>
           

             <p class="legendas"> Nome</p>
            <asp:TextBox class="usuario" ID="txtNome" runat="server" Height="22px" Width="296px"></asp:TextBox>
           
        <p class="legendas">Descricao</p>
            <asp:TextBox class="usuario" ID="txtDescricao" runat="server" Height="16px" Width="295px"></asp:TextBox>
            
             <div class="salvar">
                 <asp:Button  class="usuario" ID="btnSalvar" runat="server" OnClick="Button1_Click" Text="Salvar" Width="137px" />
             </div>
 <asp:GridView ID="categoriasMagicasTabela" runat="server" 
    AutoGenerateColumns="False" 
    Height="295px" Width="1011px" OnRowDeleting="categoriasMagicasTabela_RowDeleting1" OnRowEditing="categoriasMagicasTabela_RowEditing" OnRowUpdating="categoriasMagicasTabela_RowUpdating" OnRowCancelingEdit="categoriasMagicasTabela_RowCancelingEdit">
    <Columns>
        <asp:BoundField DataField="ID" 
            HeaderText="ID" InsertVisible="True" />
        <asp:BoundField DataField="Nome" 
            HeaderText="Nome" SortExpression="Nome" />
        <asp:BoundField DataField="descricao" 
            HeaderText="descricao" SortExpression="descricao" />
         <asp:CommandField ShowDeleteButton="True" 
            ShowEditButton="True" />
    </Columns>
</asp:GridView>
        </div>
        
       
    
    </form>
</body>
</html>
