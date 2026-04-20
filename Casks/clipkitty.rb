cask "clipkitty" do
  version "1.12.1208"
  sha256 "4540d8f19ff25559fc9fea6523a3c81c108a5f9de0d288041aa258c45ffd49b0"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.12.1208/ClipKitty.dmg"
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
