cask "railway-bar" do
  version "0.2.2"
  sha256 "3daa1b7213b8c27205a6f0e8b11c798fce28e32f139c3eca1b7d0abea0edaf0f"

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
