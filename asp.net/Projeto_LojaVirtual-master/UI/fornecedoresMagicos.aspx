<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fornecedoresMagicos.aspx.cs" Inherits="LojaDosIrmaoWisley.UI.fornecedoresMagicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/fornecedor.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button class="voltar" ID="Button1" runat="server" OnClick="Button1_Click1" Text="Voltar" />
            <p>Nome</p>
            <asp:TextBox class="usuario" ID="txtNome" runat="server"></asp:TextBox>
            
        <p>CNPJ</p>
            <asp:TextBox class="usuario" ID="txtCNPJ" runat="server" Height="16px"></asp:TextBox>
            
                <p>Email</p>
            <asp:TextBox class="usuario" ID="txtEmail" runat="server"></asp:TextBox>
           
            <p>

                   Telefone </p>
            <asp:TextBox class="usuario" ID="txtTelefone" runat="server"></asp:TextBox>
           

                 <p> Nome Representante </p>
        <asp:TextBox class="usuario" ID="txtRepresentante" runat="server"></asp:TextBox>
       
         
            <p>Telefone Representante</p>
            <asp:TextBox class="usuario" ID="txtTelefoneRepresentante" runat="server"></asp:TextBox>
            
    
  
            <div class="salvar">
                 <asp:Button class="usuario" ID="btnSalvar" runat="server" OnClick="Button1_Click" Text="Salvar" />
            </div>
 <asp:GridView ID="fornecedoresMagicosTabela" runat="server" 
    AutoGenerateColumns="False" 
    Height="295px" Width="1011px" OnRowDeleting="fornecedoresMagicosTabela_RowDeleting1" OnRowEditing="fornecedoresMagicosTabela_RowEditing" OnRowUpdating="fornecedoresMagicosTabela_RowUpdating" OnRowCancelingEdit="fornecedoresMagicosTabela_RowCancelingEdit">
    <Columns>
        <asp:BoundField DataField="ID" 
            HeaderText="ID" InsertVisible="True" />
        <asp:BoundField DataField="Nome" 
            HeaderText="Nome" SortExpression="Nome" />
        <asp:BoundField DataField="CNPJ" 
            HeaderText="CNPJ" SortExpression="CNPJ" />
        <asp:BoundField DataField="Email" 
            HeaderText="Email" SortExpression="Email" />

        <asp:BoundField DataField="Telefone" 
            HeaderText="Telefone" SortExpression="Telefone" />

        <asp:BoundField DataField="NomeRepresentante" 
            HeaderText="NomeRepresentante" SortExpression="NomeRepresentante" />

         <asp:BoundField DataField="TelefoneRepresentante" 
            HeaderText="TelefoneRepresentante" SortExpression="TelefoneRepresentante" />

         <asp:CommandField ShowDeleteButton="True" 
            ShowEditButton="True" />
    </Columns>
</asp:GridView>
        </div>
            
    </form>
</body>
</html>
