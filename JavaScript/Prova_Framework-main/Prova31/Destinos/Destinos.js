import React from 'react';
import Imagem from "../Imagens/Atrações-em-Gramado-e-Canela-conheça-as-principais.jpg"
import Imagem2 from "../Imagens/cabofrio-capa2019.jpg"
import Imagem3 from "../Imagens/shutterstock_767410225.jpg"
import "../Destinos/Destinos.css"
export default class Destinos extends React.Component {

    render() {
        
        return (
            <div className="pagDest">
                <h1>Gramado </h1>
                <img src={Imagem}/>
                <p> Gramado é uma cidade com uma estância de montanha situada no estado mais a sul do Brasil, Rio Grande do Sul. Influenciada pelos colonos alemães do século XIX, a cidade possui um toque bávaro com chalés alpinos, chocolateiros e lojas de artesanato. Gramado é também conhecida pelas suas exibições de luzes de Natal e pelas hortênsias em flor na primavera. </p>
                <h1>Cabo Frio </h1>
                <img src={Imagem2}/>
                <p> Cabo Frio é um município do estado brasileiro do Rio de Janeiro. As suas praias incluem a Praia das Dunas, ao centro, e a Praia do Forte, ambas conhecidas pela forte rebentação de ondas. A Praia das Conchas tem águas mais calmas. Passagem, a área mais antiga da cidade, possui edifícios da época colonial e a Capela de São Benedito, uma igreja construída em 1701.  </p>
                <h1>Amsterdã </h1>
                <img src={Imagem3}/>
                <p>Amsterdã é a capital da Holanda, conhecida por seu patrimônio artístico, um elaborado sistema de canais e casas estreitas com telhados de duas águas, legados da era dourada do século XVII na cidade. O bairro de museus abriga o Museu Van Gogh, o Rijksmuseum, com obras de Rembrandt e Vermeer, e o Stedelijk, que privilegia a arte moderna. O ciclismo é uma característica essencial da cidade, que tem grande quantidade de ciclovias. </p>
       

            </div>
            


            
        );
    }
}

