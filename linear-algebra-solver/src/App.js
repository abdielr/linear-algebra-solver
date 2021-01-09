import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import { BrowserRouter, Switch, Route} from 'react-router-dom'
import Login from './pages/Login'
import Home from './pages/Home'

function App() {

  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={Login} />
        <Route exact path="/home/:data" component={Home} />
      </Switch>
    </BrowserRouter>
  );

}

export default App;
