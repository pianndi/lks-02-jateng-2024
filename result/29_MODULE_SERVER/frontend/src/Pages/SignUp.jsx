import React, { useState } from 'react'
import { Link, useNavigate } from 'react-router-dom'
import { useAuth } from '../utils/Auth'
import { post } from '../utils/utils'

export default function SignUp() {
  const { user, login } = useAuth()
  const [errors, setErrors] = useState(null)
  const navigate = useNavigate()
  const handleSubmit = async (e) => {
    e.preventDefault()
    const body = new FormData(e.target)
    const { data, errors } = await post('/auth/signup', body, user);
    if (data) {
      login(data.token)
      navigate('/', { replace: true })
    } else {
      setErrors(errors)
    }
  }
  return (
    <main>
      <div class="hero py-5 bg-light">
        <div class="container text-center">
          <h2 class="mb-3">
            Sign Up - Gaming Portal
          </h2>
          <div class="text-muted">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit.
          </div>
        </div>
      </div>

      <div class="py-5">
        <div class="container">

          <div class="row justify-content-center ">
            <div class="col-lg-5 col-md-6">

              <form onSubmit={handleSubmit}>
                <div class="form-item card card-default my-4">
                  <div class="card-body">
                    {
                      errors &&
                      <div className="alert alert-danger">
                        Invalid: {errors.message}
                      </div>
                    }
                    <div class="form-group">
                      <label for="username" class="mb-1 text-muted">Username <span class="text-danger">*</span></label>
                      <input id="username" type="text" placeholder="Username" class="form-control" name="username" />
                    </div>
                  </div>
                </div>
                <div class="form-item card card-default my-4">
                  <div class="card-body">
                    <div class="form-group">
                      <label for="password" class="mb-1 text-muted">Password <span class="text-danger">*</span></label>
                      <input id="password" type="password" placeholder="Password" class="form-control" name="password" />
                    </div>
                  </div>
                </div>

                <div class="mt-4 row">
                  <div class="col">
                    <button class="btn btn-primary w-100">Sign Up</button>
                  </div>
                  <div class="col">
                    <Link to="/login" class="btn btn-danger w-100">Sign In</Link>
                  </div>
                </div>
              </form>

            </div>
          </div>

        </div>
      </div>
    </main>
  )
}
