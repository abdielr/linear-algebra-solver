import React from 'react'
import {Card, Form} from 'react-bootstrap'
import $ from 'jquery'
import { BsPencilSquare } from "react-icons/bs";


const Formulario_signup = (props) => {

    //useState(() => { $('.btn_lapiz').show();}, [])

    $('.toggle').on('click', function () {
        $('.btn_lapiz').hide();
        $('.container_login').stop().addClass('active');
    });

    $('.close').on('click', function () {
        $('.btn_lapiz').show();
        $('.container_login').stop().removeClass('active');
    });

    return(
        <Card className="alt">
            <div className="toggle">
                <BsPencilSquare className="btn_lapiz" />
            </div>
            <h1 className="title">Register
                <div className="close">

                </div>
            </h1>
            <Form onSubmit={props.onSubmit}>
                <div className="input-container">
                    <input type="text" name="user" required="required" autoComplete="off" onChange={props.onChange} />
                    <label>Usuario</label>
                    <div className="bar"></div>
                </div>
                <div className="input-container">
                    <input type="text" name="nombre" required="required" autoComplete="off" onChange={props.onChange} />
                    <label>Nombre</label>
                    <div className="bar"></div>
                </div> 
                <div className="input-container">
                    <input type="text" name="app" required="required" autoComplete="off" onChange={props.onChange} />
                    <label>Apellido paterno</label>
                    <div className="bar"></div>
                </div>
                <div className="input-container">
                    <input type="text" name="apm" required="required" autoComplete="off" onChange={props.onChange} />
                    <label>Apellido materno</label>
                    <div className="bar"></div>
                </div> 
                <div className="input-container">
                    <input type="password" name="pass" required="required" onChange={props.onChange} />
                    <label>Constraseña</label>
                    <div className="bar">    </div>
                </div>
                <div className="button-container">
                    <button type="sumit" onClick={props.onClick}><span>Registrarse</span></button>
                </div>
            </Form>
        </Card>
    )

}

export default Formulario_signup