import React from 'react'
import { Routes, Route, Outlet, Navigate } from "react-router-dom";
import { useAuth } from './utils/Auth';
import Login from './Pages/Login';
import Portal from './Pages/Portal';
import Nav from './Components/Nav';
import DiscoverGames from './Pages/DiscoverGames';
import ManageGames from './Pages/ManageGames';
import Profile from './Pages/Profile';
import Dashboard from './Pages/Dashboard';
import AdminList from './Pages/AdminList';
import ListUser from './Pages/ListUser';
import SignUp from './Pages/SignUp';
import DetailGames from './Pages/DetailGames';
export default function App() {
  return (
    <>
      <Routes>
        <Route element={<ProtectedRoutes />}>
          <Route path='/' element={<Portal />} />
          <Route path='/discover-games' element={<DiscoverGames />} />
          <Route path='/manage-games' element={<ManageGames />} />
          <Route path='/games/:slug' element={<DetailGames />} />
          <Route path='/profile' element={<Profile />} />
          <Route path='/dashboard' element={<Dashboard />} />
          <Route path='/dashboard/admins' element={<AdminList />} />
          <Route path='/dashboard/users' element={<ListUser />} />
        </Route>
        <Route path='/login' element={<Login />} />
        <Route path='/signup' element={<SignUp />} />
      </Routes>
    </>
  )
}

const ProtectedRoutes = () => {
  const { user } = useAuth()
  return user?.loading ? <h1>Loading</h1> : user ? <Outlet /> : <Navigate to='/login' replace />
}
