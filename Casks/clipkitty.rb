cask "clipkitty" do
  version "1.0.3"
  sha256 "cfef20cde39e5dd780a0ae3b34f5ed1d0e837ea6373779bb04381e7c4131b984"

  url "https://github.com/jul-sh/clipkitty/releases/download/v#{version}/ClipKitty.dmg"
  name "ClipKitty"
  desc "Clipboard history manager with instant fuzzy search"
  homepage "https://github.com/jul-sh/clipkitty"

  app "ClipKitty.app"
end
