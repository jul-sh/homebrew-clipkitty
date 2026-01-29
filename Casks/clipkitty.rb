cask "clipkitty" do
  version "1.0.2"
  sha256 "54a43700f0b6cd6cd756ef6fd6fe6700d86438cda597b63c57ce64b4d3600f65"

  url "https://github.com/jul-sh/clipkitty/releases/download/v#{version}/ClipKitty.dmg"
  name "ClipKitty"
  desc "Clipboard history manager with instant fuzzy search"
  homepage "https://github.com/jul-sh/clipkitty"

  app "ClipKitty.app"
end
