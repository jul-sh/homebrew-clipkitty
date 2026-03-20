cask "clipkitty" do
  version "1.11.1052"
  sha256 "9eeecabfc37de5b7d798356640a73192193a43d2aff2eef924bcef918c8ca9df"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.11.1052/ClipKitty.dmg"
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
