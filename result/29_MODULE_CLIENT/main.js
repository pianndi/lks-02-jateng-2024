let name = "Player";
timer = 30;
targetType = 1;
gunType = true;

class Game {
  // type
  clicked = false;
  //main
  countdown = 4;
  countdownInterval = null;
  score = 0;
  targetInterval = null;
  board = document.querySelector(".board");
  constructor() {
    this.name = document.querySelector('[name="name"]')?.value || "Player";
    this.timer =
      parseInt(document.querySelector('[name="level"]')?.value) || 30;
    this.targetType = document.querySelector('[name="target"]')?.value || 1;
    this.gunType = document.querySelector('[name="gun"]')?.value == "true";
    this.board.innerHTML = `
    <div class="header">
    <span><b id="playerTxt">Player Name</b></span>
    <span><b id="scoreTxt">Score: 0</b></span>
    <span><b id="timeTxt">Time: 30</b></span>
    </div>
    <h1 class="count">3</h1>
    
    <img src="Sprites/pointer.png" alt="" class="pointer">
    <img src="Sprites/gun1.png" alt=" " class="gun">`;
    this.gun = document.querySelector(".gun");
    this.pointer = document.querySelector(".pointer");
    this.bound = this.board.getBoundingClientRect();
    this.target = document.querySelectorAll(".target");
    this.pointer.style.left = this.board.clientWidth / 2 + "px";
    this.pointer.style.top = this.board.clientHeight / 2 + "px";
    this.gun.style.left = parseInt(this.pointer.style.left) + 50 + "px";
    this.gun.style.top = parseInt(this.pointer.style.top) + 150 + "px";
    saveScoreBtn.onclick = () => {
      saveLeaderboard(this.name, this.score);
    };
    this.board.onmousemove = (e) => {
      const x = e.clientX - this.bound.left;
      const y = e.clientY - this.bound.top;
      this.pointer.style.left = x - 25 + "px";
      this.pointer.style.top = y - 25 + "px";
      this.gun.style.left = parseInt(this.pointer.style.left) + 50 + "px";
    };

    window.onresize = (e) => {
      this.bound = this.board.getBoundingClientRect();
    };
    window.onkeydown = (e) => {
      if (e.code == "Escape") {
        if (!pause.classList.contains("hide")) {
          pause.classList.add("hide");
        } else if (pause.classList.contains("hide")) {
          pause.classList.remove("hide");
        }
      }
      if (e.code == "Space") {
        this.gunType = !this.gunType;
        this.gun.src = `Sprites/gun${this.gunType ? 1 : 2}.png`;
        this.gun.classList.add("up");
        setTimeout(() => {
          this.gun.classList.remove("up");
        }, 100);
      }
    };
  }
  generateTarget() {
    for (let i = 0; i < 3; i++) {
      this.createTarget();
    }
    this.target = document.querySelectorAll(".target");
  }
  start() {
    const countdownText = document.querySelector(".count");
    this.countdown = 3;
    countdownText.innerHTML = this.countdown;
    this.countdownInterval = setInterval(() => {
      this.countdown--;
      countdownText.innerHTML = this.countdown;
      if (this.countdown <= 0) {
        //start
        this.finishSetup();
        this.targetInterval = setInterval(() => {
          this.createTarget();
          console.log;
        }, 3000);
        //
        countdownText.classList.add("hide");
        clearInterval(this.countdownInterval);
        this.interval = setInterval(() => {
          this.timer -= 0.1;
          timeTxt.innerText = `Time: ${this.timer.toFixed(0)}`;
          if (this.timer <= 0) {
            gameOver.classList.remove("hide");
            playerNameOver.innerHTML = this.name;
            scoreOver.innerHTML = this.score;
            clearInterval(this.interval);
            clearInterval(this.targetInterval);
          }
        }, 100);
      }
    }, 1000);
  }
  finishSetup() {
    this.pointer.onclick = (e) => {
      const x = e.clientX - this.bound.left;
      const y = e.clientY - this.bound.top;
      let clicked = false;
      this.target.forEach((item) => {
        if (
          x < parseInt(item.style.left) + item.clientWidth &&
          x > parseInt(item.style.left) &&
          y < parseInt(item.style.top) + item.clientHeight &&
          y > parseInt(item.style.top)
        ) {
          if (!item.classList.contains("remove")) {
            item.classList.add("remove");
            this.score++;
            scoreTxt.innerText = `Score: ${this.score}`;
            clicked = true;
            return;
          }
        }
        if (!clicked) {
          this.timer -= 5;
          this.clicked = true;
          timeTxt.innerText = `Time: ${this.timer.toFixed(0)}`;
        }
      });
    };
  }
  createTarget() {
    const target = document.createElement("img");
    target.classList.add("target");
    target.classList.add("remove");
    target.src = `Sprites/target${this.targetType}.png`;
    target.style.left = Math.random() * this.board.clientWidth + "px";
    target.style.top = Math.random() * this.board.clientHeight + "px";
    this.board.appendChild(target);
    setTimeout(() => {
      target.classList.remove("remove");
      target.classList.add("target");
    }, 10);
    this.target = document.querySelectorAll(".target");
  }
}

function main() {
  gameOver.classList.add("hide");
  fetchLeaderboard();
  const game = new Game();

  game.generateTarget();
  game.start();
}

function saveLeaderboard(name, score) {
  const leader = JSON.parse(localStorage.getItem("leaderboard")) || [];
  leader.push({
    name,
    score,
    date: Date.now(),
  });
  localStorage.setItem("leaderboard", JSON.stringify(leader));
  fetchLeaderboard();
}
function fetchLeaderboard() {
  let leader = JSON.parse(localStorage.getItem("leaderboard")) || [];
  if (sort.value == "score") {
    leader = leader.sort((a, b) => b.score - a.score);
  } else {
    leader = leader.sort((a, b) => b.date - a.date);
  }
  html = "";
  leader.forEach((item) => {
    html += `
    <div class="item">
    <span><b>${item.name}</b></span>
    <span>Score: ${item.score}</span>
    <button class="detail">Detail</button>
  </div>
    `;
  });
  leaderboardSection.innerHTML = html;
}

function play() {
  document.querySelector(".container").classList.add("hide");
  document.querySelector(".game").classList.remove("hide");
  main();
}

function showInstruction() {
  document.querySelector(".instructBoard").classList.remove("hide");
}
sort.onchange = () => {
  fetchLeaderboard();
};
