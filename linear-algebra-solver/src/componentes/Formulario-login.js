import React from 'react'
import {Container, Form, Card, Button} from 'react-bootstrap'

const Formulario_login = () => {

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
                    <Form>
                        <Form.Group>
                            <Form.Control id="user" type="text" required="required" />
                            <Form.Label>Usuario</Form.Label>
                            <div className="bar"></div>
                        </Form.Group>
                        <Form.Group>
                            <Form.Control id="pass" type="password" required />
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