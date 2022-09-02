import React from 'react';
import { Route, BrowserRouter } from "react-router-dom";
import economia from './economia/economia';
import saúde from './saúde/saúde';
import signos from './signos/signos';
import Menu from './Menu/Menu.js'

const Routes = () => {
    return (
        <div className="rotas">
            <BrowserRouter>
            <Menu/>
                <Route path= "/economia" exact component={economia} />
                <Route path="/saúde" component={saúde} />
                <Route path="/signos" component={signos}/>
            </BrowserRouter>
        </div>
    )
}
export default Routes;
