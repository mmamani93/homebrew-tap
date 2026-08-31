class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.9/pragmai-macos-arm64.tar.gz"
    sha256 "c0fa3dbd923cb85e504445c735964d1eba6811d97eba8f6b722ab3dacf08a22b"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.9/pragmai-macos-x64.tar.gz"
    sha256 "20bb9d6cbbf7682e6e72f39738d2965a77a5badaede665d0617a196ec6c85491"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
