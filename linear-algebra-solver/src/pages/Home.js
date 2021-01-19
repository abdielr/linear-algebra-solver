import React from 'react'
import {Container, Row, Col} from 'react-bootstrap'
import User from '../componentes/Info-usuario'
import Contestados from '../componentes/Contestados-ejercicios'
import ListaEjercicios from '../componentes/Lista-ejercicios'
import Ejercicio from '../componentes/Ejercicio'
import CrearEjercicio from '../componentes/Crear-ejercicio'
import Error from '../componentes/Error'
import '../css/home.css'
import server from '../config-url'
import $ from 'jquery'

class Home extends React.Component{

    constructor(props){
        super(props)
        this.state = {
            data: JSON.parse(window.localStorage.getItem("APP_USER")),
            admin: parseInt(window.localStorage.getItem("APP_LEVEL"), 10),
            vista: 0,
            ejercicios: {                                                                                                   
                respuesta: [],
                ejer: []
            },
            ejercicioSeleccionado: [],
            temas: [],
            subtemas: [],
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
            score: {
                respuesta: [],
                datos: []
            },
            respuestaUsuario: {
                op: ""
            },
            ejercicioActualizado:{
                titulo: "",
                descripcion: ""
            }
        }
        
    } 

    componentDidMount(){
        var self = this
        var url = server + 'excercises/getAllExcercices'
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                self.setState({
                    ejercicios:{
                        respuesta: {'state': result.state,
                                    'message': result.message},
                        ejer: result.topics
                    }
                })
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
        url = server + 'topics/getTopics'
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                self.setState({
                    temas: result.temas
                })
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
        url = server + 'topics/getAllTopics'
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                self.setState({
                    subtemas: result.topics
                })
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
        url = server + 'scoreboard/getScoreDetailsByIdUser?id_usuario=' + this.state.data.user.id_usuario
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                self.setState({
                    score: {
                        respuesta: {'state': result.state,
                                    'message': result.message},
                        datos: result.score
                    }
                })
                console.log(result)
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
    }

    handleObtienesTodosEjercicios = () => {
        var self = this
        var url = server + 'excercises/getAllExcercices'
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                self.setState({
                    ejercicios: {
                        respuesta: {
                            'state': result.state,
                            'message': result.message
                        },
                        ejer: result.topics
                    }
                })
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
    }

    handleVistaCrearEjercicio = () => {
        this.setState({
            vista: 1
        })
    }

    enviarEjercicioCreado = async() => {
        var fd = new FormData(document.getElementById("fileinfo"));
        var self = this
        var url = server + 'excercices/uploadExcercise'
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            processData: false,  
            contentType: false,
            data: fd,
            success: function (result) {
                console.log(result)
                self.setState({
                    vista: 0
                })
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
        window.location.href = window.location.href
    }

    handleVistaEjercicio = (e) => {
        var self = this
        var url = server + 'excercices/getExcerciseById?id_ejercicio=' + e.target.id
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            processData: false,
            contentType: false,
            success: function (result) {
                self.setState({
                    vista: 2,
                    ejercicioSeleccionado: result.ejercicio
                })
            },
            error: function (result) {
                self.setState({ error: result })
            }
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

    handleChangeRespuestaUsuario = (e) => {
        this.setState({
            respuestaUsuario: {
                ...this.state.respuestaUsuario,
                [e.target.name]: e.target.value
            }
        });
    }

    handleChangeEjercicioActualizado = (e) => {
        this.setState({
            ejercicioActualizado: {
                ...this.state.ejercicioActualizado,
                [e.target.name]: e.target.value
            }
        });
    }

    handleObtenEjerciciosTema = (e) => {
        
        var self = this
        var url = server + 'excercises/getExcercisesByIdTopic?id_tema=' + e.target.id
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                self.setState({
                    ejercicios: {
                        respuesta: {
                            'state': result.state,
                            'message': result.message
                        },
                        ejer: result.ejercicios
                    }
                })
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
    }

    handleBotonRegresoEjercicio = () => {
        this.setState({
            vista: 0
        })
    }

    handleEnviarRespuestaEjercicio = (e) => {
        var respUs = this.state.respuestaUsuario.op
        var respCorrect = this.state.ejercicioSeleccionado.respuesta
        var calif
        if(respUs.toLowerCase() === respCorrect.toLowerCase()){
            calif = 1
        }else{
            calif = 0
        }
        var self = this
        var url = server + 'scoreboard/score?evaluacion=' + calif + '&id_ejercicio=' + e.target.id + '&id_usuario='+this.state.data.user.id_usuario
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                alert(result.message)
                if(result.state === 200){
                    self.setState({
                        vista: 0
                    })
                    window.location.href = window.location.href;
                }
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
    }

    handleBorrarEjercicioPorId = (e) => {
        var op = window.confirm("¿Desea eliminar este ejercicio?\n\nAl hacer click en aceptar esta acción no se puede deshacer.")
        if(op){
            console.log(e.target.id)
            var self = this
            var url = server + 'excercises/deleteExcerciseById?id_ejercicio=' + e.target.id
            $.ajax({
                type: "POST",
                url: url,
                crossDomain: true,
                dataType: 'json',
                success: function (result) {
                    alert(result.message)
                },
                error: function (result) {
                    self.setState({ error: result })
                }
            })
            window.location.href = window.location.href
        }
    }

    handleEnviaUpdateEjercicio = (e) => {

        console.log(e.target.id)
        var self = this
        var url = server + 'excercises/updateExcercise?id_ejercicio=' + e.target.id + '&titulo=' + this.state.ejercicioActualizado.titulo +'&descripcion='+this.state.ejercicioActualizado.descripcion
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                alert(result.message)
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
        window.location.href = window.location.href

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
                                    obtenEjercicioTema={this.handleObtenEjerciciosTema}
                                    temas={this.state.temas}
                                    muestraTodos={this.handleObtienesTodosEjercicios}/>
                            </Col>
                            {
                                this.state.admin === 0 &&
                                <Col xl={12}>
                                    <Contestados score={this.state.score.datos} />
                                </Col>
                            }
                        </Row>
                    </Col>
                    <Col>
                        <Container fluid className="cont-ejer my-3 pt-2 pb-4">
                            {
                                this.state.vista === 0 &&
                                (
                                    this.state.ejercicios.state === 404 ? <Error status={this.state.ejercicios.respuesta.state} mensaje={this.state.ejercicios.respuesta.message}/> :
                                    <ListaEjercicios ejercicios={this.state.ejercicios.ejer}
                                        onClick={this.handleClick}
                                        admin={this.state.admin}
                                        responder={this.handleVistaEjercicio}
                                        borrar={this.handleBorrarEjercicioPorId}/> 
                                )
                            }
                            {
                                this.state.vista === 1 &&
                                <CrearEjercicio onClick={this.enviarEjercicioCreado}
                                    onChange={this.handleChangeCrearEjercicio}
                                    cancelar={this.handleBotonRegresoEjercicio}
                                    temas={this.state.temas}
                                    subtemas={this.state.subtemas}/>
                            }
                            {
                                this.state.vista === 2 &&
                                <Ejercicio 
                                    regresar={this.handleBotonRegresoEjercicio}
                                    enviar={this.handleEnviarRespuestaEjercicio}
                                    admin={this.state.admin}
                                    ejercicio={this.state.ejercicioSeleccionado}
                                    cambia={this.handleChangeRespuestaUsuario}
                                    actualiza={this.handleChangeEjercicioActualizado}
                                    enviaActualizacion={this.handleEnviaUpdateEjercicio}/>
                            }
                        </Container>
                    </Col>
                </Row>
            </Container>
        )
    }

}

export default Home