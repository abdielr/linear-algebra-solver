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
                    <div className="opc_menu"><b>Nombre:</b> {props.user.name}</div>
                </Col>
            </Row>
            <Row>
                <Col xl={12} className="my-2">
                    <div className="opc_menu"><b>Usuario:</b> {props.user.username}</div>
                </Col>
            </Row>
            <Row>
                <Container fluid className="linea"></Container>

                {show ? ( /* Verifica si el menu esta extendido o no */
                    <React.Fragment>
                            <Container fluid className="my-2 text-center">
                                <div><BsChevronCompactUp className="btn_menu" onClick={() => {
                                    setShow(!show);
                                }} /></div>
                            </Container>
                            <Container fluid className="linea"></Container>
                            <Container className="py-2 opc_menu">
                                { /* Verifica si es admin el usuario */
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
                            {/* Verifica si es admin el usuario */
                                    props.admin === 0 &&
                                    <React.Fragment>
                                    Ejercicios
                                        <ul>
                                            { /* Mapea los temas obtenidos */
                                                props.temas.map(tem => {
                                                    return(
                                                        <li key={tem.id_tema} id={tem.id_tema} name={tem.id_tema} className="btn_menu" onClick={props.obtenEjercicioTema}>
                                                            {tem.titulo}
                                                        </li>
                                                    )
                                                })
                                            }
                                            <li className="btn_menu" onClick={props.muestraTodos}>
                                                Todos
                                            </li>
                                        </ul>
                                    <div className="btn_menu" onClick={props.vistaTemas}>Temas</div>
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
                ) : (
                        <Container fluid className="my-2 text-center">
                            <div><BsChevronCompactDown className="btn_menu" onClick={() => {
                                setShow(!show);
                            }} /></div>

                        </Container>
                    )}

            </Row>
        </Container>
    )

}

export default Info_usuario