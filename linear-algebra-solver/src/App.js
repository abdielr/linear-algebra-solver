import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import { BrowserRouter, Redirect, Switch, Route} from 'react-router-dom'
import Login from './pages/Login'

function App() {

  return (
    <BrowserRouter>
      <Redirect from="/" to="/login" />
      <Switch>
        <Route exact path="/login" component={Login} />
      </Switch>
    </BrowserRouter>
  );

}

export default App;
