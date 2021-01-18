import React, {useState} from 'react'
import {Container, Image, Row, Col} from 'react-bootstrap'
import { BsChevronCompactDown, BsChevronCompactUp} from "react-icons/bs"
import user from '../images/user.png'


const Info_usuario = (props) => {

    const [show, setShow] = useState(true)

    return (
        <Container fluid className="cont-user">
            <Row>
                <Col xl={3} className="mt-2">
                    <Image src={user} roundedCircle width="120%" />
                </Col>
                <Col xl={9} className="mt-2">
                    <p className="opc_menu"><b>Nombre:</b> {props.user.name}</p>
                </Col>
            </Row>
            <Row>
                <Col xl={12} className="my-2">
                    <p className="opc_menu"><b>Usuario:</b> {props.user.username}</p>
                </Col>
            </Row>
            <Row>
                <Container fluid className="linea"></Container>

                {show ? (
                    <Container fluid className="my-2 text-center">
                        <div><BsChevronCompactDown className="btn_menu" onClick={() => {
                            setShow(!show);
                        }} /></div>

                    </Container>
                ) : (
                        <React.Fragment>
                            <Container fluid className="my-2 text-center">
                                <div><BsChevronCompactUp className="btn_menu" onClick={() => {
                                    setShow(!show);
                                }} /></div>
                            </Container>
                            <Container fluid className="linea"></Container>
                            <Container className="py-2 opc_menu">
                                {
                                    props.admin === 1 &&
                                    <React.Fragment>
                                        Opciones
                                        <ul>
                                            <li className="btn_menu" onClick={props.crearEjercicio}>
                                                Crear ejercicio
                                            </li>
                                        </ul>
                                    </React.Fragment>
                                }
                                {
                                    props.admin === 0 &&
                                    <React.Fragment>
                                        Temas
                                        <ul>
                                            {
                                                props.temas.map(tem => {
                                                    return(
                                                        <li key={tem.id_tema} id={tem.id_tema} name={tem.id_tema} className="btn_menu" onClick={props.obtenEjercicioTema}>
                                                            {tem.titulo}
                                                        </li>
                                                    )
                                                })
                                            }
                                        </ul>
                                    </React.Fragment>
                                }
                            </Container>
                            <Container fluid className="linea"></Container>
                            <Container className="py-2">
                                <div className="btn_logout opc_menu" onClick={() => {
                                    window.localStorage.removeItem("APP_USER")
                                    window.location.href = '/'
                                }}>Cerrar sesion</div>
                            </Container>
                        </React.Fragment>
                    )}

            </Row>
        </Container>
    )

}

export default Info_usuario

/*return (
                <Container fluid className="cont-user">
                    <Row>
                        <Col xl={3} className="mt-2">
                            <Image src={user} roundedCircle width="120%" />
                        </Col>
                        <Col xl={9} className="mt-2">
                            <b>Nombre:</b> {props.user.name}
                        </Col>
                    </Row>
                    <Row>
                        <Col xl={12} className="my-2">
                            <b>Usuario:</b> {props.user.username}
                        </Col>
                    </Row>
                    <Row>
                        <Container fluid className="linea"></Container>

                        {show ? (
                            <Container fluid className="my-2 text-center">
                                <div><BsChevronCompactDown className="btn_menu" onClick={() => {
                                    setShow(!show);
                                }} /></div>

                            </Container>
                        ) : (
                                <React.Fragment>
                                    <Container fluid className="my-2 text-center">
                                        <div><BsChevronCompactUp className="btn_menu" onClick={() => {
                                            setShow(!show);
                                        }} /></div>
                                    </Container>
                                    <Container fluid className="linea"></Container>
                                    <Container className="py-2">
                                        Temas
                                        <ul>
                                            <li className="btn_menu">
                                                Vectores
                                            </li>
                                            <li className="btn_menu">
                                                Matrices
                                            </li>
                                        </ul>
                                    </Container>
                                    <Container fluid className="linea"></Container>
                                    <Container className="py-2">
                                        <div className="btn_logout" onClick={() => {
                                            window.localStorage.removeItem("APP_USER")
                                            window.location.href = '/'
                                        }}>Cerrar sesion</div>
                                    </Container>
                                </React.Fragment>
                            )}

                    </Row>
                </Container>
            ) */