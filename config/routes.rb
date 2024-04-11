Rails.application.routes.draw do
  get("/", :controller => "play", :action => "homepage")
  get("/rock", {:controller => "play", :action => "rock"})
  get("/scissors", {:controller => "play", :action => "scissors"})
  get("/paper", {:controller => "play", :action => "paper"})
end
