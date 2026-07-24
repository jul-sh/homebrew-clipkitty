cask "clipkitty" do
  version "1.13.1428"
  sha256 "e6bc4f1016a31999c46df4ec12676d76b3c0dc2ccd115f9c44bd412da2b86b2d"

  url "https://github.com/jul-sh/clipkitty/releases/download/v1.13.1428/ClipKitty.dmg"
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
