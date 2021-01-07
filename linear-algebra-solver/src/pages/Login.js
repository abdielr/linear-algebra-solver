import '../css/login.css'
import React from 'react'
import Log from '../componentes/Formulario-login'

class Login extends React.Component{

    state = {
        form:{
            user: "",
            pass: ""
        },
        error: null
    }

    handleChange = (e) => {

        this.setState({
            form: {
                ...this.state.form,
                [e.target.name]: e.target.value
            }
        });

    }

    handleSubmit = async(e) => {

        e.preventDefault()

        try{

            let config = {
                method: 'POST',
                body: JSON.stringify(this.state.form)
            }

            let res = await fetch('', config)
            let json = await res.json()

            console.log(json);
            this.props.histoy.push('/algomas')

        }catch(error){
            this.setState({
                loading: false,
                error
            })
        }

    }

    render(){

        return(
            <Log onChange={this.handleChange}
            onSubmit={this.handleSubmit} />
        )

    }

}

export default Login;