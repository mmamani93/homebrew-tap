class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.21/pragmai-macos-arm64.tar.gz"
    sha256 "eca6e9c1d07a007ce2712a86f3c820745da76ce4358c7a7bdc1e092074b987bb"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.21/pragmai-macos-x64.tar.gz"
    sha256 "b243a6f2c4872c08876293d3dfb351db9439bef7233fc872eee729eb0277c13c"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
