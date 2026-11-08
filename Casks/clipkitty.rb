cask "clipkitty" do
  version "1.13.1532"
  sha256 "0b9d631413a557c25fa46fb4df83a353a26b8bbc79ade42967f20efc2e2bb214"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.13.1532/ClipKitty.dmg"
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
