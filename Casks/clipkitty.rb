cask "clipkitty" do
  version "1.12.2317"
  sha256 "c07378f3e9210ca31e220f33a8651d5a27c25f205735d119a7bd86f73d6782a6"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.12.2317/ClipKitty.dmg"
  name "ClipKitty"
  desc "Clipboard history manager with instant fuzzy search"
  homepage "https://github.com/jul-sh/clipkitty"

  app "ClipKitty.app"

  postflight do
    system_command "/usr/sbin/chown",
                   args: ["-R", "#{ENV["USER"]}:staff", "#{appdir}/ClipKitty.app"],
                   sudo: true
  end
end
