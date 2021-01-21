import React from 'react'
import {Container, Row, Col, Image} from 'react-bootstrap'
import MagVector from '../images/magnitud-vector.png'
import SumaVec from '../images/SumaVectores.JPG'
import ResVec from '../images/RestaVec.JPG'
import Punto from '../images/Punto.JPG'
import PuntoSuma from '../images/PuntoSuma.JPG'
import vectoru from '../images/vectoru.JPG'
import vectorv from '../images/vectorv.JPG'
import formulaAng from '../images/anguloFormula.JPG'
import anguloCoor from '../images/anguloCoor.JPG'
import dep1 from '../images/dep1.JPG'
import dep2 from '../images/dep2.JPG'
import dep3 from '../images/dep3.JPG'
import ind1 from '../images/ind1.JPG'
import suma1 from '../images/suma1.JPG'
import suma2 from '../images/suma2.JPG'
import resta1 from '../images/resta1.JPG'
import mul1 from '../images/mul1.JPG'
import mul2 from '../images/mul2.JPG'
import mul3 from '../images/mul3.JPG'
import mul4 from '../images/mul4.JPG'
import in1 from '../images/in1.JPG'
import in2 from '../images/in2.JPG'
import in3 from '../images/in3.JPG'
import tra1 from '../images/tra1.JPG'
import tra2 from '../images/tra2.JPG'

const Temas = (props) => {

    return(

        <React.Fragment>
            <h2><b>Vectores</b></h2>
            <Container fluid className="my-2 mx-4">
                <Row className="my-3">
                    <Col xl={8}>
                        <h4>MAGNITUD DE UN VECTOR</h4>
                        <p>La magnitud o módulo de un vector es la distancia entre el punto inicial  y el punto final . En símbolos la magnitud del vector AB se define como |AB|.</p>
                        <p>Para calcular la magnitud o módulo de un vector A = (A<i>x</i>, A<i>y</i>), 
                        conociendo sus coordenadas, se utiliza la siguiente formula:<br /><b>|A| = √ [ (Ax)2 + (Ay)2 ]</b></p>
                    </Col>
                    <Col xl={4} className="text-center">
                        <Image fluid src={MagVector} className="w-50" />
                    </Col>
                </Row>
                <Row className="my-3">
                    <Col>
                        <h4>SUMA DE VECTORES</h4>
                        <p>La operación de suma de dos o más vectores da como resultado otro vector. 
                            Para realizar la suma de vectores existen distintos métodos, ya sea de manera algebraica o mediante el uso de geometría analítica.</p>
                        <p>Para sumar dos o más vectores se suman sus respectivas componentes de cada vector.<br />En el caso de dos vectores, la suma se realiza de la siguiente forma:</p>
                        <div>
                            <Image fluid src={SumaVec}/>
                        </div>
                    </Col>
                </Row>
                <Row className="my-3">
                    <Col>
                    <h4>RESTA DE VECTORES</h4>
                        <p>La operación de resta de dos o más vectores da como resultado otro vector. 
                            Para realizar la resta de vectores existen distintos métodos, ya sea de manera algebraica o mediante el uso de geometría analítica.</p>
                        <p>Para restar dos vectores libres <b>u</b> y <b>v</b> se suma <b>u</b> con el opuesto de <b>v</b>.</p>
                        <div>
                            <Image fluid src={ResVec} />
                        </div>
                    </Col>
                </Row>
                <Row className="my-3">
                    <Col>
                    <h4>PRODUCTO ESCALAR DE VECTORES</h4>
                        <p>El producto punto o producto escalar de dos vectores es una operación que da como resultado un número real. 
                            Hay distintas formas de definir esta operación, una de ellas es por medio de multiplicar el producto de los módulos de los vectores por 
                            el coseno del ángulo que forman, esto es:</p>
                            <div className="text-center">
                                <Image fluid src={Punto} />
                            </div>
                        <p>Sin embargo, la forma más común de definir el producto punto no es esa, sino por medio de la suma de los productos de sus respecticas coordenadas, 
                            entonces podemos definir el producto punto como:</p>
                            <div className="text-center">
                            <Image fluid src={PuntoSuma} />
                            </div>
                    </Col>
                </Row>
                <Row className="my-3">
                    <Col>
                        <h4>ÁNGULO ENTRE DOS VECTORES</h4>
                        <p>El ángulo que forman dos vectores <Image src={vectoru} /> y <Image src={vectorv} /> viene dado por la expresión:</p>
                        <div>
                            <Image fluid src={formulaAng} />
                        </div>
                        <p>La expresión en función de sus coordenadas es</p>
                        <div>
                            <Image fluid src={anguloCoor} />
                        </div>
                    </Col>
                </Row>
                <Row className="my-4">
                    <Col xl={6}>
                        <h4>DEPENDENCIA E INDEPENDENCIA LINEAL</h4>
                        <p><b>Vectores linealmente dependientes</b></p>
                        <p>Un conjunto de vectores se dice que son linealmente dependientes si hay una combinación lineal de ellos que es igual al vector 
                            cero, sin que sean cero todos los coeficientes de la combinación lineal. Es decir,</p>
                        <div>
                            <Image fluid src={dep1} />
                        </div>
                        <p>y a<i>i</i> &ne;0 para algún valor de i = 1,2,...,n</p>
                        <p>Propiedades<br /> <b>1.-</b> Si varios vectores son linealmente dependientes, entonces al menos uno de ellos se puede 
                        expresar como combinación lineal de los demás.
                        <Image src={dep1} /><br /> Si a<i>i</i> &ne;0 entonces <Image src={dep2} /><br />También se cumple el recíproco: si un vector es combinación lineal de otros,
                         entonces todos los vectores son linealmente dependientes.</p>
                        <p><b>2.- </b>Dos vectores del plano son linealmente dependientes si, y sólo si, son paralelos.</p>
                        <p><b>3.- </b>Dos vectores del plano <Image src={vectoru} /> y <Image src={vectorv} /> son linealmente dependientes si sus componentes son proporcionales.</p>
                        <div className="text-center">
                            <Image fluid src={dep3} />
                        </div>
                    </Col>
                    <Col xl={6} className="pt-3">
                        <p className="mt-4"><b>Vectores linealmente dependientes</b></p>
                        <p>Un conjunto de vectores se dice linealmente independiente si ninguno de ellos puede ser escrito con una combinación lineal de los restantes. Por lo que la siguiente expresión</p>
                        <Image src={dep1}/>
                        <p>Será cierta sólo cuando todos los coeficientes sean iguales a cero.</p>
                        <Image src={ind1} />
                        <p>Los vectores linealmente independientes en el plano tienen distinta dirección y sus componentes no son proporcionales.</p>
                    </Col>
                </Row>
            </Container>
            <h2><b>Matrices</b></h2>
            <Container fluid className="my-2 mx-4">
                <Row className="my-3">
                    <Col>
                        <h4>SUMA Y RESTA DE MATRICES</h4>
                        <p>La operación se define de una manera muy sencilla: la matriz suma de dos matrices con la misma dimensión es la matriz que tiene en la posición fila <b>i</b> y columna <b>j</b> 
                            la suma de los elementos de la misma posición en las matrices que sumamos. Es decir, la suma de matrices se calcula sumando los elementos que ocupan la misma posición.</p>
                        <p>Se tiene esta fórmula general:</p>
                        <div className="text-center">
                            <Image fluid src={suma1} />
                        </div>
                        <p>De forma análoga, la resta de matrices se calcula restando los elementos que ocupan la misma posición.</p>
                        <p>Más formalmente, dadas las matrices de la misma dimensión <b>A = (a<i>i,j</i>)</b> y <b>B = ( b<i>i,j</i> )</b>, la operación <b>A+B</b> se define como:
                        <br/><Image src={suma2} /></p>
                        <p>Y la resta como:<br/><Image src={resta1} /></p>
                    </Col>
                </Row>
                <Row className="my-3">
                    <Col>
                        <h4>MULTIPLICACIÓN DE MATRICES</h4>
                        <p>Dadas dos matrices <b>A</b> y <b>B</b> de dimensiones <b>m x n</b> y <b>n x p</b>, respectivamente, se define su producto <b>A⋅B</b> como la matriz de dimensión 
                        <b>m x p</b> tal que el elemento de la posición fila <b>i</b> y columna <b>j</b> es el resultado del producto de los vectores fila <b>i</b> de <b>A</b>
                        y columna <b>j</b> de <b>B</b>, tal que:</p>
                        <div className="text-center">
                            <Image fluid src={mul1} />
                        </div>
                        <p>Matemáticamente, si las matrices son<br/><Image src={mul2} /></p>
                        <p>entonces el producto <b>A⋅B</b> es <br/> <Image stc={mul3} /></p>
                        <p>siendo <br/> <Image src={mul4} /></p>
                    </Col>
                </Row>
                <Row className="my-3">
                    <Col>
                        <h4>INVERSA DE UNA MATRIZ</h4>
                        <p>Sea A una matriz cuadrada de dimensión <b>n</b>(es decir, <b>n x n</b>), entonces se dice que es regular o inversible si su determinante es distinto de 0.
                            Para toda matriz <b>A</b> (con entradas reales) regular de dimensión <b>n</b> existe una única matriz <b>B</b> de la misma dimensión tal que</p>
                            <div className="text-center">
                                <Image fluid src={in1} />
                            </div>
                        <p>Es decir, la matriz B es el inverso multiplicativo de  A (por la derecha y por la izquierda). Como la matriz B es única, la denominamos 
                            <b>matriz inversa de A</b> y la representamos por <Image src={in2} /></p>
                        <p>Como existen varios procedimientos para calcular la matriz inversa, nosotros utilizamos la siguiente fórmula:</p>
                        <div className="text-center">
                            <Image fluid src={in3} />
                        </div>
                    </Col>
                </Row>
                <Row className="my-3">
                    <Col>
                        <h4>TRANSPUESTA DE UNA MATRIZ</h4>
                        <p>Sea A una matriz de dimensión <b>m x n</b>, denotamos al elemento de la fila <b>i</b> y columna <b>j</b> como A(i,j), siendo i{"<"}m y j{"<"}n. </p>
                        <p>Entonces, se define la matriz traspuesta de A como la matriz <Image src={tra1}/> de dimensión <b>n x m</b> tal que <Image src={tra2} />, siendo i{"<"}m y j{"<"}n.</p>
                    </Col>
                </Row>
            </Container>
        </React.Fragment>

    )

}

export default Temas