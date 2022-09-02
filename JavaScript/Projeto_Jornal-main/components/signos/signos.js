import React from 'react'
import signos2 from '../signos/signos2.css';
import aries from '../images/aries.png';
import touro from '../images/touro.jpg';
import gemeos from '../images/gemeos.jpg';
import cancer from '../images/cancer.jpg';
import leao from '../images/leao.jpg';


export default function signos() {

    return (
        <div className="principal">
            <h1>Áries </h1>
            <img src={aries} width="320" height="205" />
            <p>Firme uma associação e dê um passo maior na direção do futuro. O dia favorecerá mudanças na carreira. Você poderá sair de um grupo e entrar em outro, ou negociar uma proposta profissional atraente. Venda, compra e transações comerciais estar
                ão aquecidas. Evite decisões precipitadas por ansiedade. Avalie detalhes de contratos. Qualidade das relações garantirão boas escolhas.</p>
            <h2>https://www.metropoles.com/vida-e-estilo/horoscopo/horoscopo-2021-confira-a-previsao-de-hoje-17-11-para-seu-signo/</h2><hr></hr>

            <h1>Touro </h1>
            <img src={touro} width="320" height="205" />
            <p>Escolhas e decisões de hoje sinalizam uma virada no projeto de vida. Bom momento para encerrar uma parceria e formalizar
                 outra. Caminhos abertos também para viajar e investir em melhor qualidade de vida. Ganhe novos espaços nas redes socia
                is. Conexões com pessoas de outras localidades trarão oportunidades de trabalho. Consolide a carreira. Prestígio em alta!
            </p>
            <h2>https://www.metropoles.com/vida-e-estilo/horoscopo/horoscopo-2021-confira-a-previsao-de-hoje-17-11-para-seu-signo</h2><hr></hr>

            <h1>Gêmeos </h1>
            <img src={gemeos} width="320" height="205" />
            <p>Os sonhos falarão mais alto hoje. Diminua a velocidade e dê espaço aos sentimentos. A vida íntima ficará mais gostosa com confidências e atividades com o par. Um pouco de interiorização e relaxamento trarão bem-estar e calma para pensar nos próximos passos
                 no trabalho. Medite, respire e faça uma coisa de cada vez, sem precipitações. Saúde em primeiro lugar.</p>
            <h2>https://www.metropoles.com/vida-e-estilo/horoscopo/horoscopo-2021-confira-a-previsao-de-hoje-17-11-para-seu-signo</h2><hr></hr>

            <h1>Câncer </h1>
            <img src={cancer} width="320" height="205" />
            <p>Renove o ambiente social. Novas amizades entrarão no radar. Surpresas e imprevistos movimentarão a equipe e favorecerão sua posição. O dia trará ajustes de detalhes num projeto e nos planos pessoais. Amor com mais harmonia e prazeres diferentes. Aposte numa viagem a dois, 
                programas culturais e trocas de melhor qualidade. Criatividade e poder em alta!</p>
            <h2>https://www.metropoles.com/vida-e-estilo/horoscopo/horoscopo-2021-confira-a-previsao-de-hoje-17-11-para-seu-signo/</h2><hr></hr>

            <h1>Leão  </h1>
            <img src={leao} width="320" height="205" />
            <p>Hábitos e rotina passarão por transformações. Amplie o diálogo com a família e chegue a bons acordos. O cotidiano ficará mais agradável com as decisões de hoje. Invista no seu futuro, inove a carreira e ganhe maior projeção profissional. O dia trará reestruturações e sucesso na carreira.
                 Você poderá receber proposta inesperada que virá na direção dos sonhos. Brilhe nas redes!</p>
            <h2>https://www.metropoles.com/vida-e-estilo/horoscopo/horoscopo-2021-confira-a-previsao-de-hoje-17-11-para-seu-signo/</h2><hr></hr>
        </div>
    )
}