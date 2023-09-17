require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <a href=\"/rock\">Play Rock</a><br />
  <a href=\"/paper\">Play Paper</a><br />
  <a href=\"/scissors\">Play Scissors</a><br />

  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>



  From <a href=\"fhttps://en.wikipedia.org/wiki/Rock–paper–scissors\">Wikipedia</a>: </p> <br /
 <p>
 
 Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.

 </p>

"
  
end

get ("/rock") do




  i = rand(1..3)
  we = "rock"
  them = "rock"
  win = "who"
  if i == 1
    them = "rock"
    we = "rock"
    win = "tied"
  end
  if i == 2
    them = "paper"
    we = "rock"
    win = "lost"
  end
  if i == 3
    them = "scissors"
    we = "rock"
    win = "won"
  end
"
<a href=\"/rock\">Play Rock</a><br />
<a href=\"/paper\">Play Paper</a><br />
<a href=\"/scissors\">Play Scissors</a><br />

<h2>
  We played #{we}!
</h2>

<h2>
  They played #{them}!
</h2>

<h2>
We #{win}!
</h2>

<a href=\"/\">Rules</a>

"
end

get ("/paper") do
  i = rand(1..3)
  we = "paper"
  them = "rock"
  win = "who"
  if i == 1
    them = "rock"
    win = "won"
  end
  if i == 2
    them = "paper"
    win = "tied"
  end
  if i == 3
    them = "scissors"
    win = "lost"
  end
"
<a href=\"/rock\">Play Rock</a><br />
<a href=\"/paper\">Play Paper</a><br />
<a href=\"/scissors\">Play Scissors</a><br />

<h2>
  We played #{we}!
</h2>

<h2>
  They played #{them}!
</h2>

<h2>
We #{win}!
</h2>

<a href=\"/\">Rules</a>
"
end

get ("/scissors") do
  i = rand(1..3)
  we = "sissors"
  them = "rock"
  win = "who"
  if i == 1
    them = "rock"
    win = "lost"
  end
  if i == 2
    them = "paper"
    win = "won"
  end
  if i == 3
    them = "scissors"
    win = "tied"
  end
"
<a href=\"/rock\">Play Rock</a><br />
<a href=\"/paper\">Play Paper</a><br />
<a href=\"/scissors\">Play Scissors</a><br />

<h2>
  We played #{we}!
</h2>

<h2>
  They played #{them}!
</h2>

<h2>
We #{win}!
</h2>

<a href=\"/\">Rules</a>
"
end
