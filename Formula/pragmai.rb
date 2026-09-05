class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.12/pragmai-macos-arm64.tar.gz"
    sha256 "378b0ffa540af0b060ddfd863b95b7ef8ca458ff762f1dbc029814dd2f7a68d4"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.12/pragmai-macos-x64.tar.gz"
    sha256 "a9bb26efb2aa2ce37c979dbef0907c1000af3b4dbfceaf01adaa2aac2bcff998"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
