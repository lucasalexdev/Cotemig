import React, { useState } from 'react'
import economia2 from '../economia/economia2.css'
import Toro from '../images/toro.jpg';
import dolar from '../images/dolar.jpg';
import agro from '../images/agro.jpeg';
import pib from '../images/pib.jpg';
import auxilio from '../images/auxilio.jpg';
import corte from '../images/corte.jpg';

export default function economia() {

    return (
        <div className="principal">
            <h1>B3 inaugura réplica de “touro de Wall Street” nesta terça-feira (16)</h1>
            <img src={Toro} width="320" height="205" />
            <p>A B3, bolsa de valores brasileira, inaugura nesta terça-feira (16) a versão brasileira da estátua do “touro de ouro”. A peça original está em Manhattan,
                Nova York, e ficou associada com Wall Street, área da cidade que concentra as principais bolsas de valores dos Estados Unidos.</p>
            <h2>https://www.cnnbrasil.com.br/business/b3-inaugura-replica-de-touro-de-wall-street-nesta-terca-feira-16/</h2><hr></hr>

            <h1>Dólar emenda 3ª alta, a R$ 5,524; Bolsa cai ao menor nível em mais de 1 ano..</h1>
            <img src={dolar} width="320" height="205" />
            <p>A inflação da zona do euro saltou para mais do que o dobro da meta do Banco Central Europeu em outubro, confirmou nesta quarta-feira a agência de estatísticas da União Europeia, com mais da metade do avanço devendo-se ao aumento nos preços da energia....

            </p>
            <h2>https://economia.uol.com.br/cotacoes/noticias/redacao/2021/11/17/fechamento-dolar-ibovespa-17-novembro.htm</h2><hr></hr>

            <h1>Governo piora previsão do PIB de 2021 e 2022,mas mantém acima de 5% e 2%</h1>
            <img src={pib} width="320" height="205" />
            <p>Apesar de admitir menor crescimento econômico em 2021 e 2022, as projeções da equipe econômica para o desempenho do Produto Interno Bruto (PIB) nos dois anos 
                estão um patamar acima das expectativas do mercado financeiro.
Enquanto para este ano, o governo espera que a economia avance 5,1%, ante 5,3% projetado em setembro, no ano que vem a previsão é de alta de 2,1%, ante 2,5% estimado antes.</p>
            <h2>https://www.cnnbrasil.com.br/business/governo-piora-previsao-para-pib-de-2021-e-2022-mas-mantem-acima-de-5-e-2/</h2><hr></hr>

            <h1>Começa o pagamento do Auxílio Brasil</h1>
            <img src={auxilio} width="320" height="205" />
            <p>Brasileiros enfrentaram filas em agências da Caixa Econômica Federal e centros de referência de assistência social no primeiro dia de pagamento do programa que vai substituir o Bolsa Família. </p>
            <h2>https://g1.globo.com/jornal-nacional/noticia/2021/11/17/comeca-o-pagamento-do-auxilio-brasil-mas-29-milhoes-deixam-de-receber-renda-do-governo.ghtml</h2><hr></hr>

            <h1>Reajuste para servidores depende do corte de outra despesa, diz secretário da Economia</h1>
            <img src={corte} width="320" height="205" />
            <p>O secretário de Política Econômica do Ministério da Economia, Adolfo Sachsida, afirmou nesta quarta-feira (17) que um eventual reajuste para servidores públicos depende do corte de outras despesas do governo.

Nesta terça (16), durante viagem ao Bahrein, o presidente Jair Bolsonaro afirmou que o governo avalia conceder reajuste para "todos" os servidores públicos se a chamada PEC dos Precatórios for aprovada pelo Congresso Nacional.</p>
            <h2>https://g1.globo.com/economia/noticia/2021/11/17/para-dar-reajuste-a-servidores-outra-despesa-precisa-ser-cortada-diz-secretario-do-ministerio-da-economia.ghtml</h2><hr></hr>
        </div>
    )
}