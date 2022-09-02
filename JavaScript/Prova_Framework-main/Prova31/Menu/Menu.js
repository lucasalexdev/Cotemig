import React from 'react';
import { Link } from "react-router-dom";
import "../Menu/MenuEstilo.css"
export default class Menu extends React.Component {
    render() {
        return (
            <div className="pagMenu">
                Menu:
                <p><Link to="/Inicio" >inicio</Link></p>
                <p><Link to="/Destinos" >Destinos</Link></p>
                <p><Link to="/Combustivel">Calcular</Link></p>
            </div>
        );
    }
}