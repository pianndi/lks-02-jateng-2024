import React, { useEffect, useState } from 'react'
import Nav from '../Components/Nav'
import { useAuth } from '../utils/Auth'
import { Link, useNavigate } from 'react-router-dom'
import { get, post } from '../utils/utils'
export default function ManageGames() {
  const { user } = useAuth()
  const [data, setData] = useState(null)
  const fetchData = async () => {
    const { data, errors } = await get('/games', user);
    if (data) {
      console.log(data.content)
      setData(data)
    }
  }
  useEffect(() => {
    fetchData()
  }, [])
  if (!data) {
    return <h2>Loading...</h2>
  }
  return (
    <>
      <Nav />
      <main>

        <div class="hero py-5 bg-light">
          <div class="container">
            <a href="manage-games-form.html" class="btn btn-primary">
              Add Game
            </a>
          </div>
        </div>

        <div class="list-form py-5">
          <div class="container">
            <h6 class="mb-3">List Games</h6>

            <table class="table table-striped">
              <thead>
                <tr>
                  <th width="100">Thumbnail</th>
                  <th width="200">Title</th>
                  <th width="500">Description</th>
                  <th width="180">Action</th>
                </tr>
              </thead>
              <tbody>
                {
                  data.content.map(item => (

                    <tr>
                      <td><img src="../example_game/v1/thumbnail.png" alt="Demo Game 1 Logo" className="w-100" /></td>
                      <td>{item.title}</td>
                      <td>{item.description}</td>
                      <td>
                        <Link to="/games/jfadk" class="btn btn-sm btn-primary">Detail</Link>
                        <a href="manage-games-form-update.html" class="btn btn-sm btn-secondary">Update</a>
                        <a href="#" class="btn btn-sm btn-danger">Delete</a>
                      </td>
                    </tr>
                  ))
                }
              </tbody>
            </table>

          </div>
        </div>

      </main>
    </>
  )
}
