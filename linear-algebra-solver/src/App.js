import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import './css/home.css'
import { BrowserRouter, Switch, Route} from 'react-router-dom'
import Login from './pages/Login'
import Home from './pages/Home'
import Authe from './componentes/Authentication'

function App() {

  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={Login} />
        <Route path="/home" component={props => <Authe {...props} Component={Home} />} />
      </Switch>
    </BrowserRouter>
  );

}

export default App;
