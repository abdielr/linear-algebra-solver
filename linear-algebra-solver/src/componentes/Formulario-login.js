import React from 'react'
import {Container, Form, Card, Button} from 'react-bootstrap'
import Sign from './Formulario-signup'

const Formulario_login = (props) => {

    return(
        <Container className="container_login_card">
            <Card></Card>
            <Card>
                <h1 className="title">Login</h1>
                <Form onSubmit={props.onSubmit}>
                    <Form.Group>
                        <Form.Control name="user" id="user" type="text" required="required" onChange={props.onChange} />
                        <Form.Label>Usuario</Form.Label>
                        <div className="bar"></div>
                    </Form.Group>
                    <Form.Group>
                        <Form.Control name="pass" id="pass" type="password" required onChange={props.onChange} />
                        <Form.Label>Password</Form.Label>
                        <div className="bar"></div>
                    </Form.Group>
                    <Form.Group className="submit-button">
                        <Button type="submit" onClick={props.onClick}><span>Enviar</span></Button>
                    </Form.Group>
                </Form>
            </Card>
            <Sign onSubmit={props.onSubmit} 
                    onClick={props.envia}
                    onChange={props.cambia}/>
        </Container>
    )

}

export default Formulario_login