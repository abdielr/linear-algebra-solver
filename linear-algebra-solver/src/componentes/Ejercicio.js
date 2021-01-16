import React from 'react'
import {Container, Button, Row, Col, Image} from 'react-bootstrap'
import ejer from '../images/ejemplo.jpg'
import ReactPlayer from 'react-player'

const Ejercicio = (props) => {

    return(

        <Container fluid className="mt-3">
            <h2>Ejercicio 1</h2>
            <Row className="mt-4 display_video">
                <Col xl={6}>
                    <Container fluid>
                        <Image src={ejer} thumbnail />
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
                            <li><Button>A</Button></li>
                            <li><Button>B</Button></li>
                            <li><Button>C</Button></li>
                            <li><Button>D</Button></li>
                        </ul>
                    </Container>
                </Col>
                <Col xl={6}>
                    <Container fluid>
                        <Button>Evaluar</Button>
                        <h3>Respuesta</h3>

                    </Container>
                </Col>
            </Row>
        </Container>

    )

}

export default Ejercicio