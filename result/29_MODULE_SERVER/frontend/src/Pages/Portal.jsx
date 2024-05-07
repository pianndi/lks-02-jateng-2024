import React from 'react'
import Nav from '../Components/Nav'

export default function Portal() {
  return (
    <>
      <Nav />
      <main>

        <div class="hero py-5 bg-light">
          <div class="container text-center">
            <h1 class="mb-0 mt-0">Dashboard</h1>
          </div>
        </div>

        <div class="list-form py-5">
          <div class="container">
            <h5 class="alert alert-info">
              Welcome, Administrator. Don't forget to sign out when you are finished using this page
            </h5>
          </div>
        </div>

      </main>
    </>
  )
}
