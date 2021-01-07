import React from 'react'
import {Container, Form, Card, Button} from 'react-bootstrap'

const Formulario_login = (props) => {

    return(
        <Container fluid className="container_login">
            <div className="tittle_login">
                <h1>Bienvenido a Linear Algebra Solver</h1>
                <h5>Por favor, inicie sesión en su cuenta</h5>
            </div>
            <Container className="container_login_card">
                <Card></Card>
                <Card>
                    <h1 className="title">Login</h1>
                    <Form onSubmit={props.onSubmit}>
                        <Form.Group>
                            <Form.Control name="user" id="user" type="text" required="required" onChange={props.onChange}/>
                            <Form.Label>Usuario</Form.Label>
                            <div className="bar"></div>
                        </Form.Group>
                        <Form.Group>
                            <Form.Control name="pass" id="pass" type="password" required onChange={props.onChange}/>
                            <Form.Label>Password</Form.Label>
                            <div className="bar"></div>
                        </Form.Group>
                        <Form.Group className="submit-button">
                            <Button><span>Enviar</span></Button>
                        </Form.Group>
                    </Form>
                </Card>
            </Container>
        </Container>
    )

}

export default Formulario_login