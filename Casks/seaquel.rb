cask "seaquel" do
  version "2026.4.8"

  arch arm: "aarch64", intel: "x64"
  sha256 arm: "b73e88230fd2ba71bcbd6039c8fef11ade60e38533c81f98b469ce8b53c43ff4",
         intel: "a706f660481c336884a2571f6c637a26df93b90c2bbc6a885d95a9db83afc99c"

  url "https://github.com/webstonehq/seaquel/releases/download/v#{version}/Seaquel_#{version}_#{arch}.dmg"
  name "Seaquel"
  desc "Explore, query, and visualize your databases — all in one app."
  homepage "https://seaquel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

	auto_updates true

  app "Seaquel.app"

  zap trash: [
    "~/Library/Application Support/app.seaquel.desktop",
    "~/Library/Caches/app.seaquel.desktop",
    "~/Library/Preferences/app.seaquel.desktop.plist",
    "~/Library/Saved Application State/app.seaquel.desktop.savedState",
    "~/Library/WebKit/app.seaquel.desktop",
  ]
end
