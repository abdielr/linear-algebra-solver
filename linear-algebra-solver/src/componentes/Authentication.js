import React from 'react'
import {Redirect} from 'react-router-dom'

export default function Authentication({Component}){

    if(!window.localStorage.getItem("APP_USER")){
        return <Redirect to="/" />
    }
    return <Component />

}