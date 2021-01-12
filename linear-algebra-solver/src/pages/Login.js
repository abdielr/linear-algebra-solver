import '../css/login.css'
import React from 'react'
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

    handleEnviar = () => {
        var self = this
        var url = server + '/api/LogIn?username=' + this.state.form.user +'&password='+this.state.form.pass
        $.ajax({
            type: "POST",
            url: url,
            crossDomain: true,
            dataType: 'json',
            success: function (result) {
                self.setState({
                    res: { data: result }
                })
                //console.log(self.state.res.data)
                //var d = JSON.stringify(self.state.res.data)
                window.localStorage.setItem("APP_USER", JSON.stringify(self.state.res.data))
                //console.log(JSON.parse(window.localStorage.getItem("APP_USER")))
                window.location.href = '/home'
            },
            error: function (result) {
                self.setState({ error: result })
            }
        })
    }

    handleSubmit = (e) => {

        e.preventDefault()

    }

    render(){

        return(
            <Log onChange={this.handleChange}
            onClick={this.handleEnviar}
            onSubmit={this.handleSubmit} />
        )

    }

}

export default Login;