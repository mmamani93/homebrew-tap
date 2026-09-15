class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.17/pragmai-macos-arm64.tar.gz"
    sha256 "0666e6292a63e65e1461293b8897761d3f18493fe30fe471f8491364484bc926"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.17/pragmai-macos-x64.tar.gz"
    sha256 "dff04b84f17a23dc6ad1383a919e4408cf597e7339a88a92fbbe5ffd68f1fe8a"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
