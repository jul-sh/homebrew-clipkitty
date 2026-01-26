cask "clipkitty" do
  version "1.0.1"
  sha256 "b9132b9d480fdb22d2cb793ce0ff73ad00889cf71c9f84a80c888f4dae7e72ad"

  url "https://github.com/jul-sh/clipkitty/releases/download/v#{version}/ClipKitty.dmg"
  name "ClipKitty"
  desc "Clipboard history manager with instant fuzzy search"
  homepage "https://github.com/jul-sh/clipkitty"

  app "ClipKitty.app"
end
