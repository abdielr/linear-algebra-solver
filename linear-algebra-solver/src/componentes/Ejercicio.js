import React from 'react'
import {Container, Button, Row, Col, Image, Form} from 'react-bootstrap'
import ReactPlayer from 'react-player'


const Ejercicio = (props) => {

    return(

        <Container id={props.ejercicio.id_ejercicio} fluid className="mt-3">
            {
                props.admin === 0 ? 
                <React.Fragment>
                    <h2>{props.ejercicio.titulo}</h2>
                    <p>{props.ejercicio.descripcion}</p> 
                </React.Fragment>
                : 
                <React.Fragment>
                    <h4>Nuevo titulo</h4>
                    <Form.Control name="titulo" type="text" placeholder={props.ejercicio.titulo} required onChange={props.onChange} />
                    <h4 className="mt-2">Nueva descripción</h4> 
                        <Form.Control name="descripcion" type="text" placeholder={props.ejercicio.descripcion} required onChange={props.onChange} />
                </React.Fragment>
            }
            <Row className="mt-4 display_video">
                <Col xl={6}>
                    <Container fluid>
                        <Image id="imagen" src={`data:image/png;base64,${props.ejercicio.imagen}`} thumbnail width="100%"/>
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
                            <li><Button className="opc_menu">A</Button><Image id="imagen" src={`data:image/png;base64,${props.ejercicio.a}`} thumbnail width="25%" /></li>
                            <li><Button className="opc_menu">B</Button><Image id="imagen" src={`data:image/png;base64,${props.ejercicio.b}`} thumbnail width="25%" /></li>
                            <li><Button className="opc_menu">C</Button><Image id="imagen" src={`data:image/png;base64,${props.ejercicio.c}`} thumbnail width="25%" /></li>
                            <li><Button className="opc_menu">D</Button><Image id="imagen" src={`data:image/png;base64,${props.ejercicio.d}`} thumbnail width="25%" /></li>
                        </ul>
                    </Container>
                </Col>
                <Col xl={6} className="pt-3">
                    <Container fluid>
                        {
                            props.admin === 1 &&
                            <Row className="mb-5">
                                <h4>Respuesta correcta</h4>
                                <Form.Control name="respuesta" type="text" placeholder={props.ejercicio.respuesta} required onChange={props.onChange} />
                            </Row>
                        }
                        <Row className="text-center pb-4">
                            <Col>
                                {
                                    props.admin === 0 ? <Button id={props.ejercicio.id_ejercicio} className="opc_menu" onClick={props.enviar}>Evaluar</Button>
                                        : <Button id={props.ejercicio.id_ejercicio} variant="success" className="opc_menu" onClick={props.enviar}>Guardar cambios</Button>
                                }
                            </Col>
                            <Col>
                                <Button id={props.ejercicio.id_ejercicio} variant="danger" className="opc_menu" onClick={props.regresar}>Cancelar</Button>
                            </Col>
                        </Row>
                        {
                            props.admin === 0 && <h3>Respuesta</h3>
                        }
                    </Container>
                </Col>
            </Row>
        </Container>

    )

}

export default Ejercicio