cask "seaquel" do
  version "2026.4.4"

  arch arm: "aarch64", intel: "x64"
  sha256 arm: "0e30ee9c5c4bbf5ee9a063e87183c307e60661530fae063b28499443e75318f0",
         intel: "c4ff2c3d3dd8015bbe80fa337f3553e8c5252bd15119b286d02618c9bc2bb659"

  url "https://github.com/webstonehq/seaquel/releases/download/v#{version}/Seaquel_#{version}_#{arch}.dmg"
  name "Seaquel"
  desc "Explore, query, and visualize your databases — all in one app."
  homepage "https://seaquel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Seaquel.app"

  zap trash: [
    "~/Library/Application Support/app.seaquel.desktop",
    "~/Library/Caches/app.seaquel.desktop",
    "~/Library/Preferences/app.seaquel.desktop.plist",
    "~/Library/Saved Application State/app.seaquel.desktop.savedState",
    "~/Library/WebKit/app.seaquel.desktop",
  ]
end
