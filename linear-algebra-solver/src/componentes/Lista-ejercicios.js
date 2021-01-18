import React from 'react'
import { Container, Button, InputGroup } from 'react-bootstrap'

const Lista_ejercicios = (props) => {

    return (

        <React.Fragment>
            <h2>Ejercicios disponibles</h2>
            {

            }
            {props.ejercicios.map((eje) => {
                return (
                    <Container id={eje.id_ejercicio} key={eje.id_ejercicio} fluid className="cont-ejer-indiv">

                        <div className="d-flex">

                            <div className="d-flex flex-column w-75">
                                <div className="py-2 pl-3">
                                    <h4>{eje.titulo}</h4>
                                </div>
                                <div className="d-flex py-2">
                                    <div className="w-50 pl-5">
                                        <p className="opc_menu"><b>Tema:</b> {eje.tema}</p>
                                    </div>
                                    <div className="w-50">
                                        <p className="opc_menu"><b>Subtema:</b> {eje.subtema}</p>
                                    </div>
                                </div>
                            </div>
                            <div className="d-flex flex-column w-25 justify-content-center text-center">
                                <InputGroup>
                                    {
                                        props.admin === 1 &&
                                        <React.Fragment>
                                            <Button id={eje.id_ejercicio} variant="outline-success" size="sm" className="pl-3 w-25 mx-3 opc_menu" onClick={props.onClick}>Editar</Button>
                                            <Button id={eje.id_ejercicio} variant="outline-danger" size="sm" className=" w-25 pl-3 opc_menu" onClick={props.onClick}>Eliminar</Button>
                                        </React.Fragment>
                                    }
                                    {
                                        props.admin === 0 &&
                                        <Button id={eje.id_ejercicio} key={eje.id_ejercicio} variant="outline-success" size="sm" className="w-50 pl-3 opc_menu" onClick={props.responder}>Resolver</Button>
                                    }
                                </InputGroup>
                            </div>

                        </div>

                    </Container>
                )
            })}
        </React.Fragment>
    )

}

export default Lista_ejercicios