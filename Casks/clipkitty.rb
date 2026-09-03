cask "clipkitty" do
  version "1.13.1502"
  sha256 "74d018c0454ad002040c90d98bc220e77f8de4828f43f8a765db5aefa21b7338"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.13.1502/ClipKitty.dmg"
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
