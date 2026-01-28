cask "clipkitty" do
  version "1.0.1"
  sha256 "d37940a5656ce63b5cc6d1287b3e1162023152a22ea0e63647ecf6dbe46c24f9"

  url "https://github.com/jul-sh/clipkitty/releases/download/v#{version}/ClipKitty.dmg"
  name "ClipKitty"
  desc "Clipboard history manager with instant fuzzy search"
  homepage "https://github.com/jul-sh/clipkitty"

  app "ClipKitty.app"
end
