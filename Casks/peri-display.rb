cask "peri-display" do
  version "0.2.0"
  sha256 "71d3813ca3ee445d29a417c518c92965e7ff8edebe54dbb4f29b1d3df63e135b"

  url "https://github.com/aground5/mac-android-continuity/releases/download/v#{version}/PeriDisplay-#{version}.zip"
  name "Peri Display"
  desc "Extend a display to an Android device"
  homepage "https://github.com/aground5/mac-android-continuity"

  depends_on macos: :tahoe

  app "Peri Display.app"

  # 공증되지 않은 앱이라 Gatekeeper가 첫 실행을 막는다. 설치 직후 quarantine 속성을 제거한다.
  postflight_steps do
    run "/usr/bin/xattr", "-dr", "com.apple.quarantine", "/Applications/Peri Display.app"
  end
end
