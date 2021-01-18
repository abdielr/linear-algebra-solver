import React from 'react'
import {Container, Button, Row, Col, Image} from 'react-bootstrap'
import ejer from '../images/ejemplo.jpg'
import ReactPlayer from 'react-player'

const obtenerImagen = (img) => {
    var image = new Image();
    image.src = 'data:image/png;base64,'+img;
    document.body.appendChild(image);
}

const Ejercicio = (props) => {

    return(

        <Container fluid className="mt-3">
            <h2>Ejercicio 1</h2>
            <Row className="mt-4 display_video">
                <Col xl={6}>
                    <Container fluid>
                        {obtenerImagen(props.imagen)}
                    </Container>
                </Col>
                <Col xl={6}>
                    <ReactPlayer
                        url="https://www.youtube.com/watch?v=vS4NxiURhEw"
                        className='react-player'
                        width='100%'
                        height='100%'
                        controls
                    />
                </Col>
            </Row>
            <Row className="mt-4">
                <Col xl={6}>
                    <Container fluid className="text-left lista_op">
                        <ul>
                            <li><Button className="opc_menu">A</Button></li>
                            <li><Button className="opc_menu">B</Button></li>
                            <li><Button className="opc_menu">C</Button></li>
                            <li><Button className="opc_menu">D</Button></li>
                        </ul>
                    </Container>
                </Col>
                <Col xl={6} className="pt-3">
                    <Container fluid>
                        <Row className="text-center pb-4">
                            <Col>
                                <Button className="opc_menu" onClick={props.enviar}>Evaluar</Button>
                            </Col>
                            <Col>
                                <Button variant="danger" className="opc_menu" onClick={props.regresar}>Cancelar</Button>
                            </Col>
                        </Row>
                        <h3>Respuesta</h3>

                    </Container>
                </Col>
            </Row>
        </Container>

    )

}

export default Ejercicio