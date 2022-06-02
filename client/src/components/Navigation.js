import {Link} from "react-router-dom";

function Navigation({cart, setIsAuthenticated, setUser, user}) {
    console.log(user)
    const logout = () => {
        fetch('/logout',{
            method:'DELETE'
        })
        .then(()=>{
            setIsAuthenticated(false)
            setUser(null)
        })
    }
    return (
        <> 

        <h1>Flatiron Theater Company</h1>
        <div>
            <button onClick={logout}>Logout</button>
        </div>

        </>
    )
}

export default Navigation;