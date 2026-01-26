cask "clipkitty" do
  version "1.0.1"
  sha256 "5074421035349071c8048109ff50816e092d280dde5d0384aa9390f0fd3c0bee"

  url "https://github.com/jul-sh/clipkitty/releases/download/v#{version}/ClipKitty.dmg"
  name "ClipKitty"
  desc "Clipboard history manager with instant fuzzy search"
  homepage "https://github.com/jul-sh/clipkitty"

  app "ClipKitty.app"
end
