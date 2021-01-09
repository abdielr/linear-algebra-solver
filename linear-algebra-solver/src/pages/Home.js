import React from 'react'

class Home extends React.Component{

    constructor(props){
        super(props)
        this.state = {
            data: JSON.parse(this.props.match.params.data)
        }

    }

    /*componentDidMount(){
        console.log(this.state)
    }*/
    

    render(){
        return(
            <div>
                <p>Hola {this.state.data.nombre} {this.state.data.app} {this.state.data.apm}</p>
            </div>
        )
    }

}

export default Home