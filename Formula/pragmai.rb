class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.10/pragmai-macos-arm64.tar.gz"
    sha256 "98d4226c3d26a6d1ebda5e57dc3111a5218356225b558e04fc652e83f37a4c6e"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.10/pragmai-macos-x64.tar.gz"
    sha256 "1b6386d94a7462f2f3faf2736d9dc7342efbd2a2e0334aee6f5738a105bc602e"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
