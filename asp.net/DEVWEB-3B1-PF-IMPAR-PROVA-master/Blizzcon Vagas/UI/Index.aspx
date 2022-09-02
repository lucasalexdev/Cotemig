<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Vagas_de_Estágio.UI.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <Style>
      h1 {
        border-bottom-style: solid;
        border-bottom-color: #A4F2FF;
        }
        

       
     </Style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <title></title>

</head>

<body>
    <Style>
      h1 {
        border-bottom-style: solid;
        border-bottom-color: #737373;
        }
         article {
             border-bottom-style: solid;
             border-bottom-color: #737373;
         }

      body {
      background-color: #A4F2FF;
        }
     </Style>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <asp:HyperLink NavigateUrl="~/UI/Index.aspx" Text="Home" runat="server"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="~/UI/Candidatura.aspx" Text="Candidatura" runat="server"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="~/UI/Consulta.aspx" Text="Consulta" runat="server"></asp:HyperLink>
                    </li>
                </ul>
            </div>
        </nav>
        <section class="text-center">

            <h1>Apoio Blizzcon Vagas</h1>
           
            <asp:Image ID="imgHome" ImageUrl="~/IMG/Blizzcon.jpg" AlternateText="vagas TI" runat="server" Height="388px" Width="712px" />
        </section>
    </header>


    <main>
        <section>
            <p>
                Está interessado em participar da equipe de apoio da blizzcoon 2021? Confira as vagas!</p>
            <p>
                obs: A Blizzcon acontecerá durante 3 dias</p>
        </section>




        <section>
            <article>

                <asp:Table ID="programacao" CellPadding="10"
                    GridLines="Both"
                    HorizontalAlign="NotSet" runat="server" Height="183px">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>Código da Vaga</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Setor</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Descrição</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Horário</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Local</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Salário</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Benefícios</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Requisitos Exigidos</asp:TableHeaderCell>

                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>                
                            V01
                        </asp:TableCell>
                        <asp:TableCell>
                        Hall A
                        </asp:TableCell>
                        <asp:TableCell>
                Apresentador de evento.
                        </asp:TableCell>
                        <asp:TableCell>
                        08:00 - 18:00
                        </asp:TableCell>
                        <asp:TableCell>
                        Blizzcon 
                        </asp:TableCell>
                        <asp:TableCell>
                        R$ 180,00/Hora
                        </asp:TableCell>
                        <asp:TableCell>
                         Transporte/Alimentação gratuitos
                        </asp:TableCell>
                        
                        <asp:TableCell>
                            Boa Comunicação, bom humor, boa dicção.
                        </asp:TableCell>

                    </asp:TableRow>
                     <asp:TableRow>
                        <asp:TableCell>                
                            V02
                        </asp:TableCell>
                        <asp:TableCell>
                         Enfermaria 
                        </asp:TableCell>
                        <asp:TableCell>
                Técnico de enfermagem para trabalhar na enfermaria
                        </asp:TableCell>
                        <asp:TableCell>
                        08:00 - 18:00
                        </asp:TableCell>
                        <asp:TableCell>
                        Blizzcon
                        </asp:TableCell>
                        <asp:TableCell>
                        R$ 230,00/Hora
                        </asp:TableCell>
                        <asp:TableCell>
                          Transporte/Alimentação gratuitos
                        </asp:TableCell>
                        
                        <asp:TableCell>
                           Ter cursado tecnico de enfermagem completo
                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>                
                            V03
                        </asp:TableCell>
                        <asp:TableCell>
                         Hall E
                        </asp:TableCell>
                        <asp:TableCell>
                Organizador de eventos para cordernar o hall E
                        </asp:TableCell>
                        <asp:TableCell>
                        08:00 - 18:00
                        </asp:TableCell>
                        <asp:TableCell>
                        Blizzcon
                        </asp:TableCell>
                        <asp:TableCell>
                        R$ 150,00/Hora
                        </asp:TableCell>
                        <asp:TableCell>
                           Transporte/Alimentação gratuitos
                        </asp:TableCell>
                        
                        <asp:TableCell>
                            Esperiência em organização dede eventos
                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>                
                            V04
                        </asp:TableCell>
                        <asp:TableCell>
                        Hall B
                        </asp:TableCell>
                        <asp:TableCell>
                Apresentador de eventos 
                        </asp:TableCell>
                        <asp:TableCell>
                        08:00 - 18:00
                        </asp:TableCell>
                        <asp:TableCell>
                        Blizzcon
                        </asp:TableCell>
                        <asp:TableCell>
                        R$ 180,00/Hora
                        </asp:TableCell>
                        <asp:TableCell>
                            Transporte/Alimentação gratuitos
                        </asp:TableCell>
                        
                        <asp:TableCell>
                             Boa Comunicação, bom humor, boa dicção.
                        </asp:TableCell>

                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>                
                            V05
                        </asp:TableCell>
                        <asp:TableCell>
                         Enfermaria
                        </asp:TableCell>
                        <asp:TableCell>
                Médico para trabalhar na enfermaria
                        </asp:TableCell>
                        <asp:TableCell>
                        08:00 - 18:00
                        </asp:TableCell>
                        <asp:TableCell>
                        Blizzcon
                        </asp:TableCell>
                        <asp:TableCell>
                       R$ 250,00/Hora
                        </asp:TableCell>
                        <asp:TableCell>
                            Transporte/Alimentação gratuitos
                        </asp:TableCell>
                        
                        <asp:TableCell>
                            Estar pelo menos no 3 ano de residência médica
                        </asp:TableCell>

                    </asp:TableRow>
                   


                </asp:Table>

            </article>
        </section>
    </main>

    <section class="font-weight-bold">
        <p>Ficou interessado?</p>
        <asp:HyperLink Text="Candidate-se" NavigateUrl="~/UI/Candidatura.aspx" runat="server"></asp:HyperLink>
    </section>
    <footer>
        <div>
            &copy; Copyright 2021 
            <p>Desenvolvido por: Lucas Alexandre Ferreira Alves</p>
        </div>
    </footer>
</body>
</html>
