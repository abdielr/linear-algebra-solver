import React from 'react'
import {Container} from 'react-bootstrap'

const regresaFecha = (fecha) => {
    var f = fecha.split(' ')
    return (f[0])
}

const Contestados_ejercicios = (props) => {

    return(

        <Container fluid className="cont-ejer-res">
            <h4 className="py-3">Ejercicios resueltos</h4>
            {
                props.score === undefined ? 
                <Container>
                    <p>No se encontraron ejercicios resueltos por el usuario</p>
                </Container>
                :
                props.score.map((sc) => {

                    return (
                        <Container fluid key={sc.id_ejercicio}>
                            <dl>
                                <dt><b>- {sc.ejercicio_titulo}</b></dt>
                                <dd>
                                    <i className="ml-4"> Fecha: {regresaFecha(sc.fecha)}</i><br />
                                    <i className="ml-4"><u>Calificación</u>: {sc.evaluacion === "1" ? 10 : 0}</i>
                                </dd>
                            </dl>
                        </Container>
                    )

                })
            }
        </Container>

    )

}

export default Contestados_ejercicios