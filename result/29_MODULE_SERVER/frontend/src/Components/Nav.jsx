import React from 'react'
import { NavLink, Outlet, useNavigate } from 'react-router-dom'
import { useAuth } from '../utils/Auth'

export default function Nav() {
  const { user, logout } = useAuth()
  const navigate = useNavigate()
  const handleLogout = () => {
    logout()
    navigate('/login', { replace: true })
  }
  return (
    <>
      <nav className="navbar navbar-expand-lg sticky-top bg-primary navbar-dark">
        <div className="container">
          <a className="navbar-brand" to="/">Gaming Portal</a>
          <ul className="navbar-nav ms-auto mb-2 mb-lg-0">

            <li><NavLink to="/discover-games" className="nav-link px-2 text-white">Discover Games</NavLink></li>
            <li><NavLink to="/manage-games" className="nav-link px-2 text-white">Manage Games</NavLink></li>
            <li><NavLink to="/profile" className="nav-link px-2 text-white">User Profile</NavLink></li>
            <li className="nav-item">
              <NavLink className="nav-link active bg-dark" to="/#">Welcome, Player1</NavLink>
            </li>
            <li className="nav-item">
              <button onClick={handleLogout} className="btn bg-white text-primary ms-4">Sign Out</button>
            </li>
          </ul>
        </div>
      </nav>
      <Outlet />
    </>
  )
}
