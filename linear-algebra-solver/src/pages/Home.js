import React from 'react'
import {Container, Row, Col} from 'react-bootstrap'
import User from '../componentes/Info-usuario'
//import Contestados from '../componentes/Contestados-ejercicios'
import ListaEjercicios from '../componentes/Lista-ejercicios'
import Ejercicio from '../componentes/Ejercicio'
import CrearEjercicio from '../componentes/Crear-ejercicio'
import '../css/home.css'
import server from '../config-url'
import $ from 'jquery'

class Home extends React.Component{

    constructor(props){
        super(props)
        this.state = {
            data: JSON.parse(window.localStorage.getItem("APP_USER")),
            admin: false,
            vista: 0,
            ejercicios: [
                {
                    "key": 1,
                    "titulo":"Ejercicio 1",
                    "tema":"Vectores",
                    "subtema":"Suma de vectores"
                },
                {
                    "key": 2,
                    "titulo": "Ejercicio 2",
                    "tema": "Vectores",
                    "subtema": "Resta de vectores"
                },
                {
                    "key": 3,
                    "titulo": "Ejercicio 3",
                    "tema": "Matrices",
                    "subtema": "Suma de matrices"
                },
                {
                    "key": 4,
                    "titulo": "Ejercicio 4",
                    "tema": "Matrices",
                    "subtema": "Determinante"
                },
                {
                    "key": 5,
                    "titulo": "Ejercicio 5",
                    "tema": "Martices",
                    "subtema": "Inversa de matriz"
                }
            ],
            ejercicioCreado: {
                titulo: "",
                descripcion: "",
                id_tema: "",
                id_subtema: "",
                imagen: "",
                a: "",
                b: "",
                c: "",
                d: "",
                respuesta: ""
            },
            ejemplo: []
        }
        
    }

    componentDidMount(){
        //console.log(this.props.match.params.data)
        /*var self = this
        var url = server + 'excercises/getAllExcercices'
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                self.setState({
                    ejemplo: result
                })
                console.log(result)
                //var d = JSON.stringify(self.state.res.data)
                //console.log(JSON.parse(window.localStorage.getItem("APP_USER")))
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })*/
    }

    handleVistaCrearEjercicio = () => {
        console.log("Si entra")
        this.setState({
            vista: 1
        })
    }

    enviarEjercicioCreado = () => {
        this.setState({
            vista: 0
        })
    }

    handleVistaEjercicio = () => {
        this.setState({
            vista: 2
        })
    }
    
    handleChangeCrearEjercicio = (e) => {
        this.setState({
            ejercicioCreado: {
                ...this.state.ejercicioCreado,
                [e.target.name]: e.target.value
            }
        });
    }

    handleObtieneTemas = async() => {

        var self = this
        var url = server + 'topics/getAllTopics'
        $.ajax({
            type: "GET",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                console.log(result)
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })

    }

    render(){
        return(
            <Container fluid className="cont-home">
                <Row>
                    <Col xl={2}>
                        <Row>
                            <Col xl={12}>
                                <User {...this.state.data}
                                    admin={this.state.admin}
                                    crearEjercicio={this.handleVistaCrearEjercicio}
                                    obtenEjercicioTema={this.handleObtieneTemas}/>
                            </Col>

                            {/*<Col xl={12}>
                                <Contestados />
                            </Col>*/}
                        </Row>
                    </Col>
                    <Col>
                        <Container fluid className="cont-ejer my-3 pt-2 pb-4">
                            {
                                this.state.vista === 0 &&
                                <ListaEjercicios ejercicios={this.state.ejercicios}
                                    onClick={this.handleClick}
                                    admin={this.state.admin}
                                    responder={this.handleVistaEjercicio}/>
                            }
                            {
                                this.state.vista === 1 &&
                                <CrearEjercicio onClick={this.enviarEjercicioCreado}
                                onChange={this.handleChangeCrearEjercicio}/>
                            }
                            {
                                this.state.vista === 2 &&
                                <Ejercicio />
                            }
                        </Container>
                    </Col>
                </Row>
            </Container>
        )
    }

}

export default Home