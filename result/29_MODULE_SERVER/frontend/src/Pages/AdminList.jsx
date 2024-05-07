import React from 'react'
import NavAdmin from '../Components/NavAdmin'

export default function AdminList() {
  return (
    <>
      <NavAdmin />
      <main>

        <div class="list-form py-5">
          <div class="container">
            <h6 class="mb-3">List Admin Users</h6>

            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Username</th>
                  <th>Created at</th>
                  <th>Last login</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>admin1</td>
                  <td>2024-04-05 20:55:40</td>
                  <td>2024-04-05 20:55:40</td>
                </tr>
                <tr>
                  <td>admin2</td>
                  <td>2024-04-13 20:55:40</td>
                  <td>2024-04-28 20:55:40</td>
                </tr>
              </tbody>
            </table>

          </div>
        </div>

      </main>
    </>
  )
}
