class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  version "0.6.6"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.6.6/pragmai-macos-arm64.tar.gz"
    sha256 "87216c0cdca1f5f1c9681133d43362cb26ad4cb38a84ce02703769e69150340b"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.6.6/pragmai-macos-x64.tar.gz"
    sha256 "33308290937cd990e2e9bed64960b4962d5f5f2d746e893c8cfe52e9cf1b5a8c"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
