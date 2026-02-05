cask "clipkitty" do
  version "1.1.1"
  sha256 "a5846f05e5f88ced5c58e25b00093c01ece7fe6a1f6bba5d0c18d4410020459c"

  url "https://github.com/jul-sh/clipkitty/releases/download/#{version}/ClipKitty.dmg"
  name "ClipKitty"
  desc "Clipboard history manager with instant fuzzy search"
  homepage "https://github.com/jul-sh/clipkitty"

  app "ClipKitty.app"
end
