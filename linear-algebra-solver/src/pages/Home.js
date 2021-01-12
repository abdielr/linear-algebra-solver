import React from 'react'
import {Container, Row, Col} from 'react-bootstrap'
import User from '../componentes/Info-usuario'
//import Contestados from '../componentes/Contestados-ejercicios'
import ListaEjercicios from '../componentes/Lista-ejercicios'
import '../css/home.css'

class Home extends React.Component{

    constructor(props){
        super(props)
        this.state = {
            data: JSON.parse(window.localStorage.getItem("APP_USER")),
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
            ]
        }
        
    }

    componentDidMount(){
        //console.log(this.props.match.params.data)
    }
    

    render(){
        return(
            <Container fluid className="cont-home">
                <Row>
                    <Col xl={2}>
                        <Row>
                            <Col xl={12}>
                                <User {...this.state.data}/>
                            </Col>

                            {/*<Col xl={12}>
                                <Contestados />
                            </Col>*/}
                        </Row>
                    </Col>
                    <Col>
                        <Container fluid className="cont-ejer my-3 pt-2 pb-4">
                            <h2>Ejercicios disponibles</h2>
                            <ListaEjercicios ejercicios={this.state.ejercicios}/>
                        </Container>
                    </Col>
                </Row>
            </Container>
        )
    }

}

export default Home