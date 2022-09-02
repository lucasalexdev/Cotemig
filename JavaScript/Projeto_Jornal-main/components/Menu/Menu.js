import React from 'react';
import { Link } from "react-router-dom";
import Menu2 from '../Menu/Menu2.css'


export default class Menu extends React.Component {
    render() {
        return (
            <div className="menu">
                <nav> 
                <Link to="/economia" > economia</Link >
                <Link to="/saúde" > saúde</Link >
                <Link to="/signos" > signos</Link >
                </nav>
            </div >
        );
    }
}