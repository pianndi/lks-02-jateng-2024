import React, { useState } from 'react'
import { post } from '../utils/utils'
import { useAuth } from '../utils/Auth'
import { Link, useNavigate } from 'react-router-dom'

export default function Login() {
  const { user, login } = useAuth()
  const [errors, setErrors] = useState(null)
  const navigate = useNavigate()
  const handleSubmit = async (e) => {
    e.preventDefault()
    const body = new FormData(e.target)
    const { data, errors } = await post('/auth/signin', body, user);
    if (data) {
      login(data.token)
      if (body.get('username') == 'admin1' || body.get('username') == 'admin2') {
        navigate('/dashboard')
      } else {

        navigate('/', { replace: true })
      }
    } else {
      setErrors(errors)
    }

  }
  return (
    <main>
      <section className="login">
        <div className="container">
          <div className="row justify-content-center">
            <div className="col-lg-5 col-md-6">
              <h1 className="text-center mb-4">Gaming Portal</h1>
              <div className="card card-default">
                <div className="card-body">
                  {
                    errors &&
                    <div className="alert alert-danger">
                      Invalid: {errors.message}
                    </div>
                  }
                  <h3 className="mb-3">Sign In</h3>

                  <form onSubmit={handleSubmit} action="Administrator Portal/index.html">

                    <div className="form-group my-3">
                      <label for="username" className="mb-1 text-muted">Username</label>
                      <input type="text" id="username" name="username" className="form-control" autofocus />
                    </div>


                    <div className="form-group my-3">
                      <label for="password" className="mb-1 text-muted">Password</label>
                      <input type="password" id="password" name="password" className="form-control" />
                    </div>

                    <div className="mt-4 row">
                      <div className="col">
                        <button type="submit" className="btn btn-primary w-100">Sign In</button>
                      </div>
                      <div className="col">
                        <Link to="/signup" className="btn btn-danger w-100">Sign up</Link>
                      </div>

                    </div>
                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
  )
}
