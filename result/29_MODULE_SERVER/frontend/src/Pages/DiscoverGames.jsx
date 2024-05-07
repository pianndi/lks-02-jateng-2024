import React, { useEffect, useState } from 'react'
import Nav from '../Components/Nav'
import { useAuth } from '../utils/Auth'
import { Link, useNavigate } from 'react-router-dom'
import { get, post } from '../utils/utils'

export default function DiscoverGames() {
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

        <div className="hero py-5 bg-light">
          <div className="container text-center">
            <h1>Discover Games</h1>
          </div>
        </div>

        <div className="list-form py-5">
          <div className="container">
            <div className="row">
              <div className="col">
                <h2 className="mb-3">{data.totalElements} Game Avaliable</h2>
              </div>

              <div className="col-lg-8" >
                <div className="mb-3">
                  <div className="btn-group" role="group">
                    <button type="button" className="btn btn-secondary">Popularity</button>
                    <button type="button" className="btn btn-outline-primary">Recently Updated</button>
                    <button type="button" className="btn btn-outline-primary">Alphabetically</button>
                  </div>

                  <div className="btn-group" role="group">
                    <button type="button" className="btn btn-secondary">ASC</button>
                    <button type="button" className="btn btn-outline-primary">DESC</button>
                  </div>
                </div>
              </div>
            </div>

            <div className="row">
              {data.content.map(item => {
                return (
                  <div className="col-md-6">
                    <Link to="/games/alkj" className="card card-default mb-3">
                      <div className="card-body">
                        <div className="row">
                          <div className="col-4">
                            <img src="../example_game/v1/thumbnail.png" alt="Demo Game 1 Logo" classNameName='w-100' />
                          </div>
                          <div className="col">
                            <h5 className="mb-1">{item.title}<small className="text-muted">By Dev1</small></h5>
                            <div>{item.description}</div>
                            <hr className="mt-1 mb-1" />
                            <div className="text-muted">#scores submitted : 203</div>
                          </div>
                        </div>
                      </div>
                    </Link>
                  </div>

                )
              })}


            </div>
          </div>
        </div>

      </main>
    </>
  )
}
