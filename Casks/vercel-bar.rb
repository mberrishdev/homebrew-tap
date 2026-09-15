cask "vercel-bar" do
  version "0.1.1"
  sha256 "2eaaa9a92f0b1d67a0fcfe7c4ebf830bdd76cd2b9f149cf8edab7e44b0b4c952"

  url "https://github.com/mberrishdev/vercelbar-releases/releases/download/v#{version}/VercelBar-#{version}.dmg"
  name "Vercel Bar"
  desc "Native macOS menu bar app for Vercel deployments, build logs and alerts"
  homepage "https://vercelbar.mberrishdev.me"

  depends_on macos: :ventura

  app "Vercel Bar.app"

  zap trash: [
    "~/Library/Preferences/com.vercelbar.app.plist",
    "~/Library/Containers/com.vercelbar.app",
  ]
end
