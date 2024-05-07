import React from 'react'
import { Link } from 'react-router-dom'

export default function DetailGames() {
  return (
    <main>
      <div class="hero py-5 bg-light">
        <div class="container text-center">
          <h2 class="mb-1">
            Demo Game 1
          </h2>

          <a href="profile.html" class="btn btn-success">By Dev1</a>
          <div class="text-muted">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Atque, numquam repellendus perspiciatis cupiditate veritatis porro quod eveniet animi perferendis molestias debitis temporibus, asperiores iusto.
          </div>
          <h5 class="mt-2">Last Versions v2 (2024-04-09 22:45:41)</h5>
        </div>
      </div>

      <div class="py-5">
        <div class="container">

          <div class="row justify-content-center ">
            <div class="col-lg-5 col-md-6">

              <div class="row">
                <div class="col">
                  <div class="card mb-3">
                    <div class="card-body">
                      <h5>Top 10 Leaderboard</h5>
                      <ol>
                        <li>Player5 (3004)</li>
                        <li>Player2 (2993)</li>
                        <li>Player3 (2000)</li>
                        <li>Player4 (1195)</li>
                        <li><b>Player1 (1190)</b></li>
                        <li>Player6 (1093)</li>
                        <li>Player7 (1055)</li>
                        <li>Player8 (1044)</li>
                        <li>Player9 (1005)</li>
                        <li>Player10 (992)</li>
                      </ol>
                    </div>
                  </div>
                </div>
                <div class="col">
                  <img src="../example_game/v1/thumbnail.png" alt="Demo Game 1 Logo" className="w-100" />
                  <a href="../example_game/v1//game.zip" class="btn btn-primary w-100 mb-2 mt-2">Download Game</a>
                </div>
              </div>


              <Link to="/manage-games" class="btn btn-danger w-100">Back</Link>

            </div>
          </div>

        </div>
      </div>
    </main>
  )
}