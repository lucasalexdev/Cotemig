<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LojaDosIrmaoWisley.UI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../CSS/index.css" rel="stylesheet" />
    <title></title>
</head>
<body>
  <form id="form1" runat="server">
        <div>
            <div class="titulo">
            <h1>Seja bem vindo bruxo, </h1>
            <h1>aqui você encontar tudo oque precisa</h1>
                </div>
         
            <asp:Button class="usuario" runat="server" ID="btnDirecionar" Text="Cadastrar Usuario" OnClick="btn1_Click"/>
        </div>
        <asp:Label Class="legendas" ID="lblProduto" runat="server" Text="Insira a Varinha que você deseja "></asp:Label>
        <p>
            <asp:Button class="usuario" ID="btnProduto" runat="server" Text="Cadastrar Produto" OnClick="btnProduto_Click" />
        </p>
        <asp:Label Class="legendas" ID="lblCategoria" runat="server" Text="Qual a categoria da sua varinha?"></asp:Label>
        <p>
            <asp:Button class="usuario" ID="btnCategoria" runat="server" Text="Cadestre uma Categoria" OnClick="btnCategoria_Click" />
        </p>
        <asp:Label Class="legendas" ID="lblFornecedor" runat="server" Text="Quem é o seu fornecedor de varinhas?"></asp:Label>
        <p>
            <asp:Button class="usuario" ID="btnFornecedor" runat="server" Height="25px" Text="Cadestre um Fornecedor" OnClick="btnFornecedor_Click" />
        </p>
    </form>
</body>
</html>
