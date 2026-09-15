cask "railway-bar" do
  version "0.1.0"
  sha256 "ff25b8ee27f6bb3787c918a3bc0631028366e9b5c5c2bbec0541aeea40aed1ab"

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
