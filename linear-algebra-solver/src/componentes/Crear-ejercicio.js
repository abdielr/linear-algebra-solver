import React from 'react'
import { Button, Col, Container, Form} from 'react-bootstrap'

const Crear_ejercicio = (props) => {

    return(
        <React.Fragment>
            <h2>Crear ejercicio</h2>
            <Container fluid className="px-5">
                <Form className="mt-3 opc_menu" d="uploadbanner" encType="multipart/form-data" method="post" id="fileinfo">
                    <Form.Group>
                        <Form.Label>Titulo</Form.Label>
                        <Form.Control name="titulo" type="text" placeholder="Titulo" required onChange={props.onChange}/>
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>Descripción</Form.Label>
                        <Form.Control name="descripcion" type="text" placeholder="Descripción" required onChange={props.onChange}/>
                    </Form.Group>
                    <Form.Row>
                        <Col>
                            <Form.Group>
                                <Form.Label>Tema</Form.Label>
                                <Form.Control name="id_tema" as="select" required onChange={props.onChange}>
                                    <option>Escoga un tema</option>
                                    { /* Mapeo de los temas obtenido para poner en un select */
                                        props.temas.map(tem => {
                                            return(
                                                <option key={tem.id_tema} value={tem.id_tema}>{tem.titulo}</option>
                                            )
                                        })
                                    }
                                </Form.Control>
                            </Form.Group>
                        </Col>
                        <Col>
                            <Form.Group>
                                <Form.Label>Subtema</Form.Label>
                                <Form.Control name="id_subtema" as="select" required onChange={props.onChange}>
                                    <option>Escoga un subtema</option>
                                    {/* Mapeo de los subtemas obtenido para poner en un select */
                                        props.subtemas.map(sub => {
                                            return (
                                                <option key={sub.id_subtema} value={sub.id_subtema}>{sub.subtema}</option>
                                            )
                                        })
                                    }
                                </Form.Control>
                            </Form.Group>
                        </Col>
                    </Form.Row>
                    <Form.Group>
                        <Form.File name="imagen" label="Imágen del ejercicio" required onChange={props.onChange}/>
                    </Form.Group>
                    <Form.Group>
                        <Form.File name="a" label="Respuesta A)" required onChange={props.onChange}/>
                    </Form.Group>
                    <Form.Group>
                        <Form.File name="b" label="Respuesta B)" required onChange={props.onChange}/>
                    </Form.Group>
                    <Form.Group>
                        <Form.File name="c" label="Respuesta C)" required onChange={props.onChange}/>
                    </Form.Group>
                    <Form.Group>
                        <Form.File name="d" label="Respuesta D)" required onChange={props.onChange}/>
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>Respuesta correcta</Form.Label>
                        <Form.Control name="respuesta" type="text" placeholder="Respuesta correcta" required onChange={props.onChange}/>
                    </Form.Group>
                    <Form.Group>
                        <Button variant="primary" onClick={props.onClick}>Crear</Button>
                        <Button variant="danger" className="ml-5" onClick={props.cancelar}>Cancelar</Button>
                    </Form.Group>
                </Form>
            </Container>
        </React.Fragment>
    )

}

export default Crear_ejercicio