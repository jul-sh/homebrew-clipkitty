cask "clipkitty" do
  version "1.13.1482"
  sha256 "5b25249ac4424cbbadf8d70af7c20c48f5fd050ba22a588a6ceb59eff4131cd1"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.13.1482/ClipKitty.dmg"
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
