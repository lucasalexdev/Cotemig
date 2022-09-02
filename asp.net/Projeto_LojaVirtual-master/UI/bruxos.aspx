<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bruxos.aspx.cs" Inherits="LojaDosIrmaoWisley.UI.bruxos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/bruxos.css" rel="stylesheet" />
    <title></title>
</head>
<body>
  
         <form id="form2" runat="server">
               <asp:Button class="voltar" ID="Button1" runat="server" OnClick="Button1_Click1" Text="Voltar" />
            <p>
                Nome</p>
            <asp:TextBox class="usuario" ID="txtNome" runat="server"></asp:TextBox>
            
        <p>CPF</p>
            <asp:TextBox class="usuario" ID="txtCPF" runat="server" Height="16px"></asp:TextBox>
           
             <p>Endereco</p>
        <asp:TextBox class="usuario" ID="txtEndereco" runat="server"></asp:TextBox>
    
             <p>Telefone</p>
            <asp:TextBox  class="usuario" ID="txtTelefone" runat="server"></asp:TextBox>
           
        <p>Email</p>
            <asp:TextBox class="usuario" ID="txtEmail" runat="server"></asp:TextBox>
           
        <p>Senha</p>
            <asp:TextBox class="usuario" ID="txtSenha" runat="server" OnTextChanged="txtSenha_TextChanged"></asp:TextBox>
            
             <div class="salvar">
                         <asp:Button class="usuario" ID="btnSalvar" runat="server" OnClick="Button1_Click" Text="Salvar" />
                
             </div>
 <asp:GridView ID="tabelaBruxos" runat="server" 
    AutoGenerateColumns="False" 
    Height="295px" Width="1011px" OnRowDeleting="tabelaBruxos_RowDeleting1" OnRowEditing="tabelaBruxos_RowEditing" OnRowUpdating="tabelaBruxos_RowUpdating" OnRowCancelingEdit="tabelaBruxos_RowCancelingEdit">
    <Columns>
        <asp:BoundField DataField="ID" 
            HeaderText="ID" InsertVisible="True" />
        <asp:BoundField DataField="Nome" 
            HeaderText="Nome" SortExpression="Nome" />
        <asp:BoundField DataField="CPF" 
            HeaderText="CPF" SortExpression="CPF" />
        <asp:BoundField DataField="Endereco" 
            HeaderText="Endereco" SortExpression="Endereco" />
        <asp:BoundField DataField="Telefone" 
            HeaderText="Telefone" SortExpression="Telefone" />
         <asp:BoundField DataField="Email" 
            HeaderText="Email" SortExpression="Email" />
         <asp:CommandField ShowDeleteButton="True" 
            ShowEditButton="True" />
    </Columns>
</asp:GridView>
         
    </form>
</body>
</html>
