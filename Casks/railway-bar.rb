cask "railway-bar" do
  version "0.3.3"
  sha256 "8096ce0f1b8fa9176f90e3586a5b098963e3712117168d539434ee4129f3d966"

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
