cask "vercel-bar" do
  version "0.1.0"
  sha256 "68e1a3fcbd294d957027ccecea4882d638ce54478f121c46cca9dcb4e1c05ba9"

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
