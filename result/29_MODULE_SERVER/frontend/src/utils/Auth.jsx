import { createContext, useContext, useEffect, useState } from "react";

const AuthContext = createContext()
export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState({ loading: true })
  const login = (user) => {
    setUser(user)
    localStorage.setItem('user', user)
  }
  const logout = () => {
    setUser(null)
    localStorage.removeItem('user')

  }
  const value = { user, login, logout }
  useEffect(() => {
    setUser(localStorage.getItem('user'))
  }, [])
  return <AuthContext.Provider value={value}>
    {children}
  </AuthContext.Provider>
}
export const useAuth = () => useContext(AuthContext)