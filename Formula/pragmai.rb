class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  version "0.7.3"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.3/pragmai-macos-arm64.tar.gz"
    sha256 "a9240a68a8d65b2a98857ca756b13138a08359cebf00ab8fceb8f183ee7f3d32"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.3/pragmai-macos-x64.tar.gz"
    sha256 "803d8970b85c189fd70625a6cfbdcb150697093878ef0786bdfe6133a52eb873"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
