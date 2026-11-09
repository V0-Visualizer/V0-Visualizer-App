# V0 Visualizer's Homebrew cask, in the tap that is the release repository
# itself (scripts/channels.mjs fills it; desktop.yml commits it there):
#
#   brew tap v0-visualizer/desktop-releases https://github.com/V0-Visualizer/desktop-releases
#   brew install --cask v0-visualizer
cask "v0-visualizer" do
  version "0.6.0"
  sha256 "fba5e4e15115c60b79b2c9a7ef01adf7068cdbdb2cff1b6714ea1a1db9b51b61"

  url "https://github.com/V0-Visualizer/desktop-releases/releases/download/v#{version}/V0-Visualizer-#{version}-macOS-arm64.dmg",
      verified: "github.com/V0-Visualizer/desktop-releases/"
  name "V0 Visualizer"
  desc "Your Last.fm listening, in a window of its own"
  homepage "https://v0visualizer.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "V0 Visualizer.app"

  # Ad-hoc signed, not notarized yet: without this, the first open needs right-click > Open.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/V0 Visualizer.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.v0visualizer.desktop",
    "~/Library/Caches/com.v0visualizer.desktop",
    "~/Library/LaunchAgents/com.v0visualizer.desktop.plist",
    "~/Library/WebKit/com.v0visualizer.desktop",
  ]
end
