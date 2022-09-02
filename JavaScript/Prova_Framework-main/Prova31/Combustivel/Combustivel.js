import React from 'react';
import "../Destinos/Destinos.css"
export default class Inicio extends React.Component {

    render() {
      
        return (
            <div className="pagDest">
                <h1>Calcular: </h1>
          
             
              <p><b>Tempo:</b> <input onChange={(e) => this.pesquisar(e.target.value)} /><b>(Em Horas) </b></p>
              <p><b>Velocidade média:</b> <input onChange={(e) => this.pesquisar(e.target.value)}  /> <b>(Em km/h) </b></p>
              <p><b>Rendimento médio:</b> <input onChange={(e) => this.pesquisar(e.target.value)} /> <b>(Em km/litros) </b></p>
              <p><b>Preço gasolina:</b> <input onChange={(e) => this.pesquisar(e.target.value)} /> <b>(Em reais R$) </b></p>
             
              <p></p><button>Calcular</button>
        
            </div>
            
        );
    }
}