import React from 'react';   
import "../Destinos/Destinos.css"

export default class Inicio extends React.Component {

    render() {
       
        return (
            <div className="pagDest">
                <h1>Escolha seu destino:  </h1>
                <select >
                    <option value='Gramado' selected> Gramado </option>
                    <option value='Cabo Frio'> Cabo Frio </option>
                    <option value='Amsterdã' > Amsterdã </option>
                    </select>
            </div>

          
        );
    }
}