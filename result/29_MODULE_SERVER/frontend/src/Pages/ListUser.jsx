import React from 'react'
import NavAdmin from '../Components/NavAdmin'

export default function ListUser() {
  return (
    <>
      <NavAdmin />
      <main>

        <div class="hero py-5 bg-light">
          <div class="container">
            <a href="users-form.html" class="btn btn-primary">
              Add User
            </a>
          </div>
        </div>

        <div class="list-form py-5">
          <div class="container">
            <h6 class="mb-3">List Users</h6>

            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Username</th>
                  <th>Created at</th>
                  <th>Last login</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><a href="../Gaming Portal/profile.html" target="_blank">player1</a></td>
                  <td>2024-04-05 20:55:40</td>
                  <td>2024-04-05 20:55:40</td>
                  <td><span class="bg-success text-white p-1 d-inline-block">Active</span></td>
                  <td>
                    <div class="btn-group" role="group">
                      <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        Lock
                      </button>
                      <ul class="dropdown-menu">
                        <li>
                          <button type="submit" class="dropdown-item" name="reason" value="spamming">Spamming</button>
                        </li>
                        <li>
                          <button type="submit" class="dropdown-item" name="reason" value="cheating">Cheating</button>
                        </li>
                        <li>
                          <button type="submit" class="dropdown-item" name="reason" value="other">Other</button>
                        </li>
                      </ul>
                    </div>
                    <a href="users-form.html" class="btn btn-sm btn-secondary">Update</a>
                    <a href="#" class="btn btn-sm btn-danger">Delete</a>
                  </td>
                </tr>
                <tr>
                  <td><a href="../Gaming Portal/profile.html" target="_blank">player2</a></td>
                  <td>2024-04-13 20:55:40</td>
                  <td>2024-04-28 20:55:40</td>
                  <td><span class="bg-danger text-white p-1 d-inline-block">Blocked</span></td>
                  <td>
                    <button type="submit" class="btn btn-primary btn-sm">Unlock</button>
                    <a href="users-form.html" class="btn btn-sm btn-secondary">Update</a>
                    <a href="#" class="btn btn-sm btn-danger">Delete</a>
                  </td>
                </tr>
              </tbody>
            </table>

          </div>
        </div>

      </main>
    </>
  )
}
