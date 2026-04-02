cask "clipkitty" do
  version "1.11.1153"
  sha256 "d16bcebb70b7fb245b16a0135e068a6bd76ca210780de7d5494dc089792130c6"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.11.1153/ClipKitty.dmg"
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
