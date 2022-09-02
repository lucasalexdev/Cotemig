import React from "react";
import { Route, BrowserRouter } from "react-router-dom";
import Inicio from './Inicio/Inicio';
import Combustivel from './Combustivel/Combustivel';
import Destinos from './Destinos/Destinos';
import Menu from './Menu/Menu'

  export default class Prova31 extends React.Component {
  
    
    render() {
        return (
          <div className="BRANCO">
          <BrowserRouter>
          <Menu/>
             <Route path="/Inicio" component={Inicio} />
            <Route path="/Destinos" component={Destinos} />
            <Route path="/Combustivel" component={Combustivel} />
          </BrowserRouter>
        </div>
        )
    }
}
