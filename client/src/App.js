import { Route, Switch } from "react-router-dom";

import {useEffect, useState} from 'react'

import Navigation from './components/Navigation.js'

import Auth from './components/Auth.js'
import Login from './components/LogIn.js'

function App() {

  const [errors, setErrors] = useState(false)


  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch('/authorized_user')
    .then((res) => {
      if (res.ok) {
        res.json()
        .then((user) => {
          setIsAuthenticated(true);
          setUser(user);
        });
      }
    });

  },[]);

  

  // Reroute user to <Login /> Component if not authenticated
  if (!isAuthenticated) return <Login error={'please login'} setIsAuthenticated={setIsAuthenticated} setUser={setUser} />;

  return (
    <>
    <Navigation setIsAuthenticated={setIsAuthenticated} setUser={setUser} user={user}/>
    <Switch>
    <Route path="/sign_up">
          <Auth />
    </Route>
    <Route path="/login">
          <Login />
    </Route>
    </Switch>
    </>
  );
}

export default App;