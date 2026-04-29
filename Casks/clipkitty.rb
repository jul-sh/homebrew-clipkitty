cask "clipkitty" do
  version "1.13.1248"
  sha256 "a3bc723413691f670d60c71b4624b447b691daa92fcd44972736dd51d72563e6"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.13.1248/ClipKitty.dmg"
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
