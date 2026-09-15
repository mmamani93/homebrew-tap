class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.18/pragmai-macos-arm64.tar.gz"
    sha256 "c035b2472f641eaf1687a55d27634599847ca9064c0375cabf7de53ce7ef2cd5"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.18/pragmai-macos-x64.tar.gz"
    sha256 "6ae2a4e95ab399c665106af78fd7044815630316ead06b0df85b99779ef342d7"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
