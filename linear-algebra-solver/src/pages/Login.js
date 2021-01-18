import '../css/login.css'
import React from 'react'
import {Container} from 'react-bootstrap'
import Log from '../componentes/Formulario-login'
import server from '../config-url'
import $ from 'jquery'

class Login extends React.Component{

    constructor(props){
        super(props)
        this.state = {
            form: {
                user: "",
                pass: ""
            },
            registro:{
                user: "",
                pass: "",
                app: "",
                apm: "",
                nombre: ""
            },
            res: {
                data: {}
            },
            error: null
        }

        this.handleChange = this.handleChange.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)

    }

    handleChange = (e) => {

        this.setState({
            form: {
                ...this.state.form,
                [e.target.name]: e.target.value
            }
        });

    }

    handleChangeRegistrar = (e) => {

        this.setState({
            registro: {
                ...this.state.registro,
                [e.target.name]: e.target.value
            }
        });

    }

    handleEnviar = () => {
        if(this.state.form.user !== "" && this.state.form.pass !== ""){
            var self = this
            var url = server + 'LogIn?username=' + this.state.form.user + '&password=' + this.state.form.pass
            $.ajax({
                type: "GET",
                url: url,
                crossDomain: true,
                dataType: 'json',
                success: function (result) {
                    if(result.state === 200){
                        self.setState({
                            res: { data: result }
                        })
                    //var d = JSON.stringify(self.state.res.data)
                    window.localStorage.setItem("APP_USER", JSON.stringify(self.state.res.data))
                    window.localStorage.setItem("APP_LEVEL", JSON.stringify(self.state.res.data.user.nivel))
                    //console.log(JSON.parse(window.localStorage.getItem("APP_USER")))
                    window.location.href = '/home'
                    }else{
                        self.setState({
                            error: result 
                        })
                        alert(result.message)
                    }
                },
                error: function (result) {
                    self.setState({ error: result })
                }
            })
        }
    }

    handleEnviarRegistro = () => {
        if (this.state.registro.apm !== "" && this.state.registro.app !== "" && this.state.registro.nombre !== "" && this.state.registro.pass !== "" && this.state.registro.user !== ""){
            var self = this
            var url = server + 'SignUp?user=' + this.state.registro.user + '&pass=' + this.state.registro.pass + '&ap_pat=' + this.state.registro.app + '&ap_mat=' + this.state.registro.apm + '&nombre=' + this.state.registro.nombre
            $.ajax({
                type: "GET",
                url: url,
                crossDomain: true,
                dataType: 'json',
                success: function (result) {
                    if(result.state === 200){
                        //console.log(self.state.res.data)  
                        //var d = JSON.stringify(self.state.res.data)
                        //window.localStorage.setItem("APP_USER", JSON.stringify(self.state.res.data))
                        alert(result.message + ", inicie sesión")
                        self.setState({
                            registro: {
                                user: "",
                                pass: "",
                                app: "",
                                apm: "",
                                nombre: ""
                            }
                        })
                        //console.log(JSON.parse(window.localStorage.getItem("APP_USER")))
                        //window.location.href = '/home'
                    }else{
                        alert(result.message)
                        self.setState({ error: result })
                    }
                },
                error: function (result) {
                    self.setState({ error: result })
                }
            })
        }
    }

    handleSubmit = (e) => {
        e.preventDefault()
    }

    render(){

        return(
            <Container fluid className="container_login">
                <div className="tittle_login">
                    <h1>Bienvenido a Linear Algebra Solver</h1>
                    <h5>Por favor, inicie sesión en su cuenta</h5>
                </div>
                <Log onChange={this.handleChange}
                        onClick={this.handleEnviar}
                        onSubmit={this.handleSubmit}
                    cambia={this.handleChangeRegistrar}
                    envia={this.handleEnviarRegistro} />
            </Container>
        )

    }

}

export default Login;