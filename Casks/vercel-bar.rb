cask "vercel-bar" do
  version "0.1.0"
  sha256 "162cc41d96be7123a247b7d61ec40fecee41c4bbddfa4646066130d2d05154aa"

  url "https://github.com/mberrishdev/vercelbar-releases/releases/download/v#{version}/VercelBar-#{version}.dmg"
  name "Vercel Bar"
  desc "Native macOS menu bar app for Vercel deployments, build logs and alerts"
  homepage "https://vercelbar.mberrishdev.me"

  depends_on macos: ">= :ventura"

  app "Vercel Bar.app"

  zap trash: [
    "~/Library/Preferences/com.vercelbar.app.plist",
    "~/Library/Containers/com.vercelbar.app",
  ]
end
