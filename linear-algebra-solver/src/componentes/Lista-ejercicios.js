import React from 'react'
import { Container, Button } from 'react-bootstrap'

const Lista_ejercicios = (props) => {

    return(

        <React.Fragment>
            {props.ejercicios.map((eje) => {
                return(
                    <Container key={eje.key} fluid className="cont-ejer-indiv">

                        <div className="d-flex">

                            <div className="d-flex flex-column w-75">
                                <div className="py-2 pl-3">
                                    <h4>{eje.titulo}</h4>
                                </div>
                                <div className="d-flex py-2">
                                    <div className="w-50 pl-5">
                                        <b>Tema:</b> {eje.tema}
                        </div>
                                    <div className="w-50">
                                        <b>Subtema:</b> {eje.subtema}
                        </div>
                                </div>
                            </div>
                            <div className="d-flex flex-column w-25 justify-content-center text-center">
                                <Button variant="outline-success" size="sm" className="w-50 pl-3">Resolver</Button>
                            </div>

                        </div>

                    </Container>
                )
            })}
        </React.Fragment>
    )

}

export default Lista_ejercicios