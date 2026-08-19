cask "silicon-pulse" do
  version "1.0.0"
  sha256 :no_check # Or calculate sha256 of the release DMG

  url "https://github.com/rajeshc-git/silicon-pulse/releases/download/v#{version}/SiliconPulse-v#{version}.dmg"
  name "SiliconPulse"
  desc "Real-time Apple Silicon SoC Architecture & Die Telemetry Visualizer"
  homepage "https://github.com/rajeshc-git/silicon-pulse"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "SiliconPulse.app"

  zap trash: [
    "~/Library/Application Support/SiliconPulse",
    "~/Library/Caches/com.siliconpulse.app",
    "~/Library/Preferences/com.siliconpulse.app.plist",
    "~/Library/Saved Application State/com.siliconpulse.app.savedState",
  ]
end
