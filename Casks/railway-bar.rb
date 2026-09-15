cask "railway-bar" do
  version "0.1.3"
  sha256 "3e31bb41abd630b330bb2ea4fcf5655730d65125237a9fa60da2c747ae1b9e4e"

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
