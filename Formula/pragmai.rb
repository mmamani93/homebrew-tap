class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  version "0.7.2"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.2/pragmai-macos-arm64.tar.gz"
    sha256 "eb05b8898449b720a0ac4bc415acc05d343e2d29d99ba4fe62abe49ae00ab068"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.2/pragmai-macos-x64.tar.gz"
    sha256 "0c291165ddff5e05e7e656d28342ba7abfd78a67f188923283c48d5f154bd198"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
