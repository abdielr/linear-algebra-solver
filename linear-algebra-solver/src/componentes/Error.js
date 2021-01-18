import React from 'react'
import {Container} from 'react-bootstrap'

const Error = (props) => {

    return(
        <Container fluid>
            <h1>La página tiene un mensaje para ti</h1>
            {
                props.status === 200 &&
                <h2>{props.mensaje}</h2>
            }
        </Container>
    )

}

export default Error