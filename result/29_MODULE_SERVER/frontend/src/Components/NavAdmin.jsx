import React from 'react'
import { NavLink, Outlet, useNavigate } from 'react-router-dom'
import { useAuth } from '../utils/Auth'

export default function NavAdmin() {
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
          <NavLink className="navbar-brand" to="/dashboard">Administrator Portal</NavLink>
          <ul className="navbar-nav ms-auto mb-2 mb-lg-0">

            <li><NavLink to="/dashboard/admins" className="nav-link px-2 text-white">List Admins</NavLink></li>
            <li><NavLink to="/dashboard/users" className="nav-link px-2 text-white">List Users</NavLink></li>
            <li className="nav-item">
              <NavLink className="nav-link bg-dark" to="/dashboard">Welcome, Administrator</NavLink>
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
