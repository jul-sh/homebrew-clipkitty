cask "clipkitty" do
  version "1.13.1462"
  sha256 "f6cedee161852fc3436377942a460ff6d0448f4d54ad653a0d4f8dd085d0898b"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.13.1462/ClipKitty.dmg"
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
