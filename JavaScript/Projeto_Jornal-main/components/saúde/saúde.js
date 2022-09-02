import React from 'react'
import sp from '../images/sp.jpg';
import parana from '../images/parana.jpeg';
import bh from '../images/bh.jpg';
import alemanha from '../images/alemanha.jpg';
import zul from '../images/zul.png';


export default function saúde() {

    return (
        <div className="teste">
            <h1>Estado de SP anuncia ampliação da dose adicional para os maiores de 18 anos</h1>
            <img src={sp} width="320" height="205" />
            <p>O Governador João Doria anunciou, nesta quarta-feira (17), que a partir de amanhã (18) toda a população adulta poderá se vacinar com a dose adicional de COVID-19. A nova orientação do Plano Estadual de Imunização (PEI) segue a diretriz do Programa Nacional de Imunização (PNI) e vale para todas as pessoas que tomaram
                as duas doses há pelo menos cinco meses, ou seja, quem completou seu ciclo vacinação até o mês de junho.</p>
            <h2>https://www.saopaulo.sp.gov.br/spnoticias/estado-de-sp-anuncia-ampliacao-da-dose-adicional-para-os-maiores-de-18-anos/</h2><hr></hr>

            <h1>Paraná suspende restrições contra a Covid-19, e somente uso de máscaras em locais públicos continua obrigatório</h1>
            <img src={parana} width="320" height="205" />
            <p>O Governo do Paraná não renovou o decreto que prevê medidas contra a Covid-19, que tem vigência até esta terça-feira (16), e com isso suspendeu as restrições de combate à pandemia.

            </p>
            <h2>https://g1.globo.com/pr/parana/noticia/2021/11/16/parana-suspende-restricoes-contra-a-covid-19-e-somente-uso-de-mascaras-em-locais-publicos-continua-obrigatorio.ghtml</h2><hr></hr>

            <h1>Belo Horizonte registra uma morte por Covid em 24 horas</h1>
            <img src={bh} width="320" height="205" />
            <p>O Boletim Epidemiológico da Covid-19 em Belo Horizonte desta quarta-feira (17) traz um número que dá esperança de dias melhores. A capital mineira registrou, em 24h, uma única morte pela doença. A redução nos óbitos decorre do avanço da vacinação contra a doença, já que a cidade já conta com 67,8% da
                 população totalmente imunizada e 83% com uma dose ou vacina de dose única.</p>
            <h2>https://www.otempo.com.br/cidades/belo-horizonte-registra-uma-morte-por-covid-em-24-horas-1.2571298</h2><hr></hr>

            <h1>Alemanha bate novo recorde de casos de Covid-19 em 24 horas; Merkel diz que situação é dramática</h1>
            <img src={alemanha} width="320" height="205" />
            <p>A Alemanha bateu um novo recorde diário de casos de Covid-19 nesta terça-feira (16). O país registrou 52.826 infecções, 13 mil a mais em relação à semana anterior, além de 294 mortes em 24 horas. As informações 
                são do Instituto Robert Koch, agência local responsável pelo controle e prevenção de doenças.</p>
            <h2>https://www.infomoney.com.br/economia/alemanha-bate-novo-recorde-de-casos-de-covid-19-em-24-horas-merkel-diz-que-situacao-e-dramatica/</h2><hr></hr>

            <h1>Novembro Azul: Icesp alerta para mitos e verdades sobre o câncer de próstata</h1>
            <img src={zul} width="320" height="205" />
            <p>No Dia Mundial de Combate ao Câncer de Próstata, celebrado nesta quarta-feira (17), o Instituto do Câncer do Estado de São Paulo, unidade ligada à Secretaria de Estado da Saúde de São Paulo e ao Hospital das Clínicas da Faculdade de Medicina da USP, alerta para mitos e verdades relacionados ao câncer de próstata durante a campanha Novembro Azul.</p>
            <h2>https://www.saopaulo.sp.gov.br/spnoticias/novembro-azul-icesp-alerta-para-mitos-e-verdades-sobre-o-cancer-de-prostata/</h2><hr></hr>
        </div>
    )
}