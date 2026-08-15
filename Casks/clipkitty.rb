cask "clipkitty" do
  version "1.13.1471"
  sha256 "608890b530af8ca820c359b0472bf9f78b9ee319d2f8f14aa4f453b315f61658"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.13.1471/ClipKitty.dmg"
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
