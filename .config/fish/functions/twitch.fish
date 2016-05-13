function twitch --description "Open a Twitch stream using livestreamer"

  switch (count $argv)
    case 1
      set quality "source"
    case 2
      set quality $argv[2]
  end

  livestreamer twitch.tv/$argv[1] $quality
end
