cask "railway-bar" do
  version "0.3.4"
  sha256 "2d1367b08e98b6b3432920c4e3facccd4e545ead00ee67d9f2da069fe952be3a"

  url "https://github.com/mberrishdev/railwaybar-releases/releases/download/v#{version}/RailwayBar-#{version}.dmg"
  name "Railway Bar"
  desc "Native macOS menu bar app for Railway deployments, logs and crash alerts"
  homepage "https://railwaybar.mberrishdev.me"

  depends_on macos: :ventura

  app "Railway Bar.app"

  zap trash: [
    "~/Library/Preferences/com.railwaybar.app.plist",
    "~/Library/Containers/com.railwaybar.app",
  ]
end
